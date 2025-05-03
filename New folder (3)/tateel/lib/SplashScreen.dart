import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // بعد ثانية واحدة ينتقل للصفحة الرئيسية
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/welcome');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // خلفية بيضاء أو شفافة حسب الستايل
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // اللوجو
            Image.asset(
              'assets/images/logo.png',
              height: 100,
            ),
            SizedBox(height: 20),
            // النص الترحيبي
            Text(
              'ترتيل',
              style: TextStyle(
                fontFamily: 'Marhey',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            // مؤشر التحميل
            // SizedBox(
            //   width: 40,
            //   height: 40,
            //   child: CircularProgressIndicator(
            //     strokeWidth: 3,
            //     valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
