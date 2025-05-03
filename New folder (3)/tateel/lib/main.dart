// import 'package:tateel/welcome_page.dart';
// import 'package:flutter/material.dart';
// import 'package:tateel/login.dart';
// import 'package:tateel/signup.dart';

// import 'package:tateel/Business Card.dart';
// import 'package:tateel/Basketball Score .dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // debugShowCheckedModeBanner: true,
//       home: Scaffold(
//         appBar: AppBar(title: Text("title")),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // الصورة
//             Image.asset(
//               'image.jpg',
//               width: 150,
//               height: 150,
//             ),

//             SizedBox(height: 20),

//             // النص
//             Text(
//               "Raneem",
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 25,
//                 backgroundColor: Color.fromARGB(90, 186, 92, 69),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// {{{Task Birthday}}}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(backgroundColor:const Color.fromARGB(255, 139, 93, 108),
//       body:Center(
//         child: Image(image: AssetImage('assets/images/birthday.png'),)
//       ),
//     ),
//     );
//   }
// }

// {{{Task Row&Column}}}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text(' Horizontal List of Student Name')),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Card(
//               child: ListTile(
//                 leading: Image.asset("assets/images/orange.png"),
//                 title: Text("Raneem", style: TextStyle(fontFamily: " Lateef")),
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: Image.asset("assets/images/orange.png"),
//                 title: Text("saba'a", style: TextStyle(fontFamily: " Lateef")),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// {{Task Business Card}}
// void main(){
//   runApp(MaterialApp(
//    home:profilepage(),
//    debugShowCheckedModeBanner: false,
//   ));
// }

// {{Task Basketball Score }}

// void main() {
//   runApp(MaterialApp(
//    home:BasketBallpoint() ,
//   debugShowCheckedModeBanner:false,
//   ));
// }

// {{{Tasklogin & signup}}}

//   void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Login(),
//     builder: (context, child) {
//       return Directionality(
//         textDirection: TextDirection.rtl,
//         child: child!,
//       );
//     },
//   ));
// }

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
//         '/':        (context) => SplashScreen(),
//         '/welcome': (context) => VideoBackgroundPage(),
//         '/login':   (context) => Login(),
//         '/signup':  (context) => SignUp(),
//       },
//       // يضمن اتجاه الكتابة من اليمين إلى اليسار
//       builder: (context, child) {
//         return Directionality(
//           textDirection: TextDirection.rtl,
//           child: child!,
//         );
//       },
//     );
//   }
// }

// import 'package:tateel/homepage.dart';
// import 'package:flutter/material.dart';



//   void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ترتيل',
//       theme: ThemeData(
//         primaryColor: const Color.fromARGB(255, 196, 105, 55),
//         fontFamily: 'Marhey',
//       ),
//       home: const RecitationScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }








import 'package:flutter/material.dart';
import 'package:tateel/splashscreen.dart';
import 'package:tateel/welcome_page.dart';
import 'package:tateel/login.dart';
import 'package:tateel/signup.dart';
import 'package:tateel/homepage.dart';        // شاشة رئيسية
// import 'package:tateel/recitation_screen.dart'; // أو ممكن تسميها RecitationScreen

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تطبيق تحفيظ القرآن',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 196, 105, 55),
        fontFamily: 'Marhey',
      ),
      initialRoute: '/',
      routes: {
        '/':        (context) => SplashScreen(),
        '/welcome': (context) => VideoBackgroundPage(),
        '/login':   (context) => Login(),
        '/signup':  (context) => SignUp(),
        '/home':    (context) => RecitationScreen(), // الشاشة الرئيسية بعد تسجيل الدخول
      },
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}
