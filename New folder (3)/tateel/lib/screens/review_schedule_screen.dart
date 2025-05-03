import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ReviewScheduleScreen extends StatefulWidget {
  const ReviewScheduleScreen({super.key});

  @override
  State<ReviewScheduleScreen> createState() => _ReviewScheduleScreenState();
}

class _ReviewScheduleScreenState extends State<ReviewScheduleScreen> {
  List<dynamic> reviewSchedule = [];
  Map<int, bool> achievementStatus = {}; // لحفظ حالة الإنجاز لكل يوم
  bool isLoading = true;

  final int userId = 1; // غيّر هذا حسب نظام المستخدمين عندك

  @override
  void initState() {
    super.initState();
    fetchReviewSchedule();
  }

  Future<void> fetchReviewSchedule() async {
    final url = Uri.parse('http://10.0.2.2:8000/api/hifz-programs?program_type=مراجعة');
    try {
      final response = await http.get(url);
      if (!mounted) return;

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<dynamic> allPrograms = data['data'];

        if (allPrograms.isNotEmpty) {
          final dailyPrograms = allPrograms[0]['daily_programs'];
          if (!mounted) return;
          setState(() {
            reviewSchedule = dailyPrograms;
            for (var item in dailyPrograms) {
              achievementStatus[item['id']] = false;
            }
            isLoading = false;
          });
        } else {
          if (!mounted) return;
          setState(() => isLoading = false);
        }
      } else {
        print('Failed to load data: ${response.statusCode}');
        if (!mounted) return;
        setState(() => isLoading = false);
      }
    } catch (e) {
      print('Error fetching data: $e');
      if (!mounted) return;
      setState(() => isLoading = false);
    }
  }

  Future<void> saveAchievement(int dailyProgramId, bool status) async {
    final url = Uri.parse('http://10.0.2.2:8000/api/daily-achievements');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'user_id': userId,
          'daily_program_id': dailyProgramId,
          'type': 'مراجعة',
          'status': status,
        }),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('✅ تم حفظ الإنجاز بنجاح'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('❌ فشل في حفظ الإنجاز (${response.statusCode})'),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('⚠️ حدث خطأ أثناء الحفظ'),
          backgroundColor: Colors.orange,
          duration: Duration(seconds: 2),
        ),
      );
      print('حدث خطأ أثناء الحفظ: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'جدول المراجعة',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 196, 105, 55),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: reviewSchedule.isEmpty
                        ? const Center(child: Text('لا يوجد بيانات متاحة'))
                        : ListView.separated(
                            itemCount: reviewSchedule.length,
                            separatorBuilder: (context, index) => const SizedBox(height: 12),
                            itemBuilder: (context, index) {
                              final item = reviewSchedule[index];
                              final itemId = item['id'];
                              final currentStatus = achievementStatus[itemId] ?? false;

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
                                      item['day'].substring(0, 1),
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  title: Text(
                                    '${item['day']} - ${item['surah']}',
                                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text('الآيات: ${item['from_verse']} - ${item['to_verse']}'),
                                  trailing: Checkbox(
                                    value: currentStatus,
                                    onChanged: (val) {
                                      final newStatus = val ?? false;
                                      setState(() {
                                        achievementStatus[itemId] = newStatus;
                                      });
                                      saveAchievement(itemId, newStatus);
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
