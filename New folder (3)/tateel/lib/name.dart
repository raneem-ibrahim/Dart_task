// import 'package:flutter/material.dart';
// import 'package:tateel/splashscreen.dart';
// import 'package:tateel/welcome_page.dart';
// import 'package:tateel/login.dart';
// import 'package:tateel/signup.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'تطبيق تحفيظ القرآن',
//       debugShowCheckedModeBanner: false,
//       // الصفحة الأولى عند تشغيل التطبيق: SplashScreen
//       initialRoute: '/',
//       routes: {
//         '/': (context) => SplashScreen(),
//         '/welcome': (context) => VideoBackgroundPage(),
//         '/login': (context) => Login(),
//         '/signup': (context) => SignUp(),
//       },
//       // يضمن اتجاه الكتابة من اليمين إلى اليسار
//       builder: (context, child) {
//         return Directionality(textDirection: TextDirection.rtl, child: child!);
//       },
//     );
//   }
// }
