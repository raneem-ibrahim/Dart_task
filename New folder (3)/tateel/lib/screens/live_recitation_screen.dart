import 'package:flutter/material.dart';

class LiveRecitationScreen extends StatelessWidget {
  const LiveRecitationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'التسميع اليومي',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 196, 105, 55),
                ),
              ),
              const SizedBox(height: 30),

              // اختيار السورة والآيات
              const TextField(
                decoration: InputDecoration(
                  labelText: 'السورة',
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'من آية',
                        border: OutlineInputBorder(),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'إلى آية',
                        border: OutlineInputBorder(),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // زر التسجيل
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 196, 105, 55),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                icon: const Icon(Icons.mic, color: Colors.white),
                label: const Text(
                  'ابدأ التسجيل',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                onPressed: () {
                  // لاحقًا يتم تنفيذ التسجيل
                },
              ),

              const SizedBox(height: 20),

              // زر الإرسال
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                icon: const Icon(Icons.send, color: Colors.white),
                label: const Text(
                  'إرسال التلاوة',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                onPressed: () {
                  // لاحقًا يتم رفع التسجيل
                },
              ),

              const SizedBox(height: 30),

              // حالة التسميع
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.orange.shade200),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.hourglass_bottom, color: Color.fromARGB(255, 196, 105, 55)),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'تم إرسال التلاوة. بانتظار تقييم المعلم...',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50), // فراغ سفلي
            ],
          ),
        ),
      ),
    );
  }
}
