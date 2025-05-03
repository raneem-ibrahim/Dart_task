// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Alert Dialog مثال',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   void _showAlertDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('تنبيه مهم'),
//           content: Text('هل تريد حفظ التغييرات قبل الخروج؟'),
//           actions: <Widget>[
//             TextButton(
//               child: Text('لا'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('لم يتم الحفظ')),
//                 );
//               },
//             ),
//             TextButton(
//               child: Text('نعم'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('تم الحفظ بنجاح')),
//                 );
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Alert Dialog مثال'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('عرض Alert Dialog'),
//           onPressed: () {
//             _showAlertDialog(context);
//           },
//         ),
//       ),
//     );
//   }
// }