import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // مؤقتًا بيانات ثابتة، لاحقًا تربطيها بقاعدة البيانات
    final String quranTip = 'قال تعالى: "وَرَتِّلِ الْقُرْآنَ تَرْتِيلًا" [المزمل: ٤]';
    final int recitationsToday = 2;
    final bool hasUpcomingSession = true;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 20),
            const Text(
              'مرحبًا بك 🌟',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 196, 105, 55)),
              textAlign: TextAlign.right,
            ),
            const SizedBox(height: 30),

            // المعلومة القرآنية
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.orange.shade200),
              ),
              child: Row(
                children: [
                  const Icon(Icons.auto_stories, color: Color.fromARGB(255, 196, 105, 55)),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      quranTip,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // عدد التلاوات
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green.shade200),
              ),
              child: Row(
                children: [
                  const Icon(Icons.mic, color: Colors.green),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'سجلت $recitationsToday تلاوة اليوم.',
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // حالة الحصة القادمة
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: hasUpcomingSession ? Colors.blue.shade50 : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: hasUpcomingSession ? Colors.blue.shade200 : Colors.grey.shade300,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    hasUpcomingSession ? Icons.schedule : Icons.info_outline,
                    color: hasUpcomingSession ? Colors.blue : Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      hasUpcomingSession
                          ? 'لديك حصة قادمة اليوم في تمام الساعة 5:00 مساءً.'
                          : 'لا توجد حصص مجدولة لليوم.',
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
