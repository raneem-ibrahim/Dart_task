import 'package:flutter/material.dart';
import 'package:first_project/login.dart';
// import 'package:first_project/Business Card.dart';
// import 'package:first_project/Basketball Score .dart';

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

  void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
    builder: (context, child) {
      return Directionality(
        textDirection: TextDirection.rtl,
        child: child!,
      );
    },
  ));
}



