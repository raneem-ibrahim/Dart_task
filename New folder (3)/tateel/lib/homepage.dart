import 'package:flutter/material.dart';
import 'screens/memorization_schedule_screen.dart';
import 'screens/review_schedule_screen.dart';
import 'screens/home_screen.dart';
import 'screens/live_recitation_screen.dart';

class RecitationScreen extends StatefulWidget {
  const RecitationScreen({super.key});

  @override
  State<RecitationScreen> createState() => _RecitationScreenState();
}

class _RecitationScreenState extends State<RecitationScreen> {
  int _currentIndex = 2;

  final List<Widget> _screens = [
    const MemorizationScheduleScreen(),
    const ReviewScheduleScreen(),
    const HomeScreen(),
    const LiveRecitationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 196, 105, 55),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 50,
              width: 50,
              fit: BoxFit.contain,
            ),
            Row(
              children: [
                const Text(
                  'ترتيل',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                _showNotificationsDialog(context);
              },
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        elevation: 4,
        toolbarHeight: 70,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color.fromARGB(255, 196, 105, 55),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'جدول الحفظ'),
          BottomNavigationBarItem(
            icon: Icon(Icons.refresh),
            label: 'جدول المراجعة',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.mic), label: 'التسميع'),
        ],
      ),
    );
  }








  void _showNotificationsDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Directionality(
          textDirection: TextDirection.rtl, 
          child: AlertDialog(
            
            title: const Text('الإشعارات'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('إشعار جديد وصلك!'),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('تم إرسال التلاوة الخاصة بك.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('حان وقت مراجعة الحفظ!'),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('إغلاق'),
              ),
            ],
          ),
        );
      },
    );
  }
}
