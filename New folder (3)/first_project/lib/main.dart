import 'package:flutter/material.dart';

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

// Task Birthday

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor:const Color.fromARGB(255, 139, 93, 108),
      body:Center(
        child: Image(image: AssetImage('assets/images/birthday.png'),)
      ),
    ),
    );
  }
}
