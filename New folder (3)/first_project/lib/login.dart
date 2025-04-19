// import 'package:flutter/material.dart';

//      class Login extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Directionality( // ⬅️ هذا يخلي كل شيء RTL
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/background.jpg'),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Padding(
//             padding: EdgeInsets.all(20),
//             child: Column(
//                crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
                
//                   Image.asset('assets/images/logo.png',height: 100,width: 100,),
//               TextFormField(
//     decoration: InputDecoration(
//       labelText: "البريد الإلكتروني",
//       labelStyle: TextStyle(
//         color: Colors.white,
//         fontFamily: "Marhey",
//         fontSize: 20,
//       ),
//       enabledBorder: UnderlineInputBorder(
//         borderSide: BorderSide(color: Colors.white),
//       ),
//       // focusedBorder: UnderlineInputBorder(
//       //   // borderSide: BorderSide(color: Colors.white),
//       // ),
//     ),
//     style: TextStyle(color: Colors.white), // لون النص
//     cursorColor: Colors.white, // لون مؤشر الكتابة
//   ),

//             TextFormField(
//     decoration: InputDecoration(
//       labelText: "كلمة المرور",
//       labelStyle: TextStyle(
//         color: Colors.white,
//         fontFamily: "Marhey",
//         fontSize: 20,
//       ),
//       enabledBorder: UnderlineInputBorder(
//         borderSide: BorderSide(color: Colors.white),
//       ),
//       focusedBorder: UnderlineInputBorder(
//         borderSide: BorderSide(color: Colors.white),
//       ),
//     ),
//     style: TextStyle(color: Colors.white), // لون النص
//     cursorColor: Colors.white, // لون مؤشر الكتابة
//   ),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'dart:ui';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: 330,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/logo.png', height: 100, width: 100),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "البريد الإلكتروني",
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: "Marhey",
                            fontSize: 20,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(color: Colors.white, fontFamily: "Marhey"),
                        cursorColor: Colors.white,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "كلمة المرور",
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontFamily: "Marhey",
                            fontSize: 20,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(color: Colors.white, fontFamily: "Marhey"),
                        cursorColor: Colors.white,
                      ),
                      SizedBox(height: 10),

                      // تذكرني + هل نسيت كلمة المرور؟
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                                checkColor: Colors.black,
                                activeColor: Colors.white,
                              ),
                              Text(
                                'تذكرني',
                                style: TextStyle(color: Colors.white, fontFamily: "Marhey"),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'هل نسيت كلمة المرور؟',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Marhey",
                                fontSize: 14,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),

                      // زر تسجيل الدخول مع hover
                      MouseRegion(
                        onEnter: (_) => setState(() => isHovered = true),
                        onExit: (_) => setState(() => isHovered = false),
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            print("تم تسجيل الدخول");
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            transform: isHovered
                                ? Matrix4.translationValues(0, -2, 0)
                                : Matrix4.identity(),
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: isHovered
                                  ? Colors.white.withOpacity(0.2)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                  color: isHovered ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: "Marhey",
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
