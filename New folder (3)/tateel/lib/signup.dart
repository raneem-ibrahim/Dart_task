import 'dart:ui';
import 'package:tateel/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  String? selectedGender;
  String? selectedPath;
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
            child: SingleChildScrollView(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            height: 80,
                            width: 80,
                          ),

                          // الاسم الأول والاسم الأخير
                          Row(
                            children: [
                              Expanded(
                                child: buildTextField(
                                  label: "الاسم الأول",
                                  validator:
                                      (value) =>
                                          value!.isEmpty
                                              ? "الرجاء إدخال الاسم الأول"
                                              : null,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: buildTextField(
                                  label: "الاسم الأخير",
                                  validator:
                                      (value) =>
                                          value!.isEmpty
                                              ? "الرجاء إدخال الاسم الأخير"
                                              : null,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),

                          // البريد الإلكتروني وكلمة المرور
                          Row(
                            children: [
                              Expanded(
                                child: buildTextField(
                                  label: "البريد الإلكتروني",
                                  validator:
                                      (value) =>
                                          value!.isEmpty
                                              ? "الرجاء إدخال البريد الإلكتروني"
                                              : null,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: buildTextField(
                                  label: "كلمة المرور",
                                  obscureText: true,
                                  validator:
                                      (value) =>
                                          value!.length < 6
                                              ? "كلمة المرور قصيرة جدًا"
                                              : null,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          // العمر
                          buildTextField(
                            label: "العمر",
                            keyboardType: TextInputType.number,
                            validator:
                                (value) =>
                                    value!.isEmpty
                                        ? "الرجاء إدخال العمر"
                                        : null,
                          ),
                          SizedBox(height: 20),

                          // الجنس ومسار الدراسة
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("الجندر", style: labelStyle()),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Text("مسار الدراسة", style: labelStyle()),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      buildRadio("ذكر", selectedGender, (val) {
                                        setState(() {
                                          selectedGender = val;
                                        });
                                      }),
                                      buildRadio("أنثى", selectedGender, (val) {
                                        setState(() {
                                          selectedGender = val;
                                        });
                                      }),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      buildRadio("حفظ", selectedPath, (val) {
                                        setState(() {
                                          selectedPath = val;
                                        });
                                      }),
                                      buildRadio("أحكام", selectedPath, (val) {
                                        setState(() {
                                          selectedPath = val;
                                        });
                                      }),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          // زر تسجيل الحساب
                          MouseRegion(
                            onEnter: (_) => setState(() => isHovered = true),
                            onExit: (_) => setState(() => isHovered = false),
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                if (_formKey.currentState!.validate() &&
                                    selectedGender != null &&
                                    selectedPath != null) {
                                  print("تم التسجيل بنجاح");
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "يرجى تعبئة جميع الحقول المطلوبة",
                                      ),
                                    ),
                                  );
                                }
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                transform:
                                    isHovered
                                        ? Matrix4.translationValues(0, -2, 0)
                                        : Matrix4.identity(),
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 40,
                                ),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color:
                                      isHovered
                                          ? Colors.white.withOpacity(0.2)
                                          : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    'تسجيل الحساب',
                                    style: TextStyle(
                                      color:
                                          isHovered
                                              ? Colors.white
                                              : Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      fontFamily: "Marhey",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 5),

                          // الانتقال لتسجيل الدخول بدون خط
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                            child: Text(
                              'هل لديك حساب ؟ تسجيل الدخول',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Marhey",
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextStyle labelStyle() =>
      TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Marhey");

  Widget buildTextField({
    required String label,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      style: TextStyle(color: Colors.white, fontFamily: "Marhey"),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white,
          fontFamily: "Marhey",
          fontSize: 18,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }

  Widget buildRadio(
    String title,
    String? groupValue,
    Function(String) onChanged,
  ) {
    return Row(
      children: [
        Radio<String>(
          value: title,
          groupValue: groupValue,
          onChanged: (value) {
            onChanged(value!);
          },
          activeColor: Colors.white,
          fillColor: MaterialStateProperty.all(Colors.white),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontFamily: "Marhey"),
        ),
      ],
    );
  }
}
