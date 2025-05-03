import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MemorizationScheduleScreen extends StatefulWidget {
  const MemorizationScheduleScreen({super.key});

  @override
  State<MemorizationScheduleScreen> createState() => _MemorizationScheduleScreenState();
}

class _MemorizationScheduleScreenState extends State<MemorizationScheduleScreen> {
  List<dynamic> schedule = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchHifzPrograms();
  }

  Future<void> fetchHifzPrograms() async {
    final url = Uri.parse('http://10.0.2.2:8000/api/hifz-programs');
    try {
      final response = await http.get(url);
      if (!mounted) return;

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final allPrograms = data['data'];

        if (allPrograms.isNotEmpty) {
          if (!mounted) return;
          setState(() {
            schedule = allPrograms[0]['daily_programs'];
            isLoading = false;
          });
        } else {
          if (!mounted) return;
          setState(() => isLoading = false);
        }
      } else {
        print('فشل في جلب البيانات: ${response.statusCode}');
        if (!mounted) return;
        setState(() => isLoading = false);
      }
    } catch (e) {
      print('حدث خطأ: $e');
      if (!mounted) return;
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'برنامج الحفظ',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 196, 105, 55),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : schedule.isEmpty
                      ? const Center(child: Text('لا يوجد بيانات متاحة'))
                      : ListView.separated(
                          itemCount: schedule.length,
                          separatorBuilder: (context, index) => const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final item = schedule[index];
                            final day = item['day'];
                            final surah = item['surah'];
                            final fromVerse = item['from_verse'];
                            final toVerse = item['to_verse'];

                            return Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 239, 229),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange.shade100,
                                    blurRadius: 4,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ListTile(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                leading: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 196, 105, 55),
                                  child: Text(
                                    day.substring(0, 1),
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                                title: Text(
                                  '$day - $surah',
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text('الآيات: $fromVerse - $toVerse'),
                                trailing: Checkbox(
                                  value: false,
                                  onChanged: (val) {
                                    // يمكن لاحقًا ربطها بحالة الإنجاز
                                  },
                                  activeColor: const Color.fromARGB(255, 196, 105, 55),
                                ),
                              ),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
