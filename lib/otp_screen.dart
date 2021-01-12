import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/login_screen.dart';
import 'package:get/get.dart';

class OtpScreen extends StatefulWidget {
  String number;

  @override
  _OtpScreenState createState() => _OtpScreenState();

  OtpScreen(this.number);
}

class _OtpScreenState extends State<OtpScreen> {
  Color color = Colors.white;
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  FocusNode f4 = FocusNode();
  FocusNode f5 = FocusNode();

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  TextEditingController t5 = TextEditingController();
  TextEditingController t6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "Sent to +91-${widget.number} ",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1.4,
                    fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Get.off(LoginScreen());
                },
                child: Text(
                  "Change Number ?",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.4,
                      fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Divider(
                  color: Colors.blue,
                  height: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: color,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(1, 1),
                              blurRadius: 3)
                        ],
                      ),
                      child: TextFormField(
                        controller: t1,
                        showCursor: false,
                        cursorHeight: 35,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        validator: (text) {
                          if (text.length == 1) {}
                        },
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: color,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(1, 1),
                              blurRadius: 3)
                        ],
                      ),
                      child: TextFormField(
                        controller: t2,
                        showCursor: false,
                        cursorHeight: 35,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        validator: (text) {
                          if (text.length == 1) {}
                        },
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: color,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(1, 1),
                              blurRadius: 3)
                        ],
                      ),
                      child: TextFormField(
                        controller: t3,
                        showCursor: false,
                        cursorHeight: 35,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          // contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        validator: (text) {
                          if (text.length == 1) {}
                        },
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: color,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(1, 1),
                              blurRadius: 3)
                        ],
                      ),
                      child: TextFormField(
                        controller: t4,
                        showCursor: false,
                        cursorHeight: 35,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        validator: (text) {
                          if (text.length == 1) {}
                        },
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: color,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(1, 1),
                              blurRadius: 3)
                        ],
                      ),
                      child: TextFormField(
                        controller: t5,
                        showCursor: false,
                        cursorHeight: 35,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        validator: (text) {
                          if (text.length == 1) {}
                        },
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: color,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(1, 1),
                              blurRadius: 3)
                        ],
                      ),
                      child: TextFormField(
                        controller: t6,
                        showCursor: false,
                        cursorHeight: 35,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        validator: (text) {
                          if (text.length == 1) {}
                        },
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                minWidth: 150,
                height: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: Colors.blue,
                onPressed: () {
                  if (t1.text.length == 1 && t2.text.length == 1 &&
                      t3.text.length == 1 && t4.text.length == 1 &&
                      t5.text.length == 1 && t6.text.length == 1 )
                    {
                      Get.to(HomeScreen());
                    }
                  else
                    {
                      Get.snackbar(" Please Enter valid Valid OTP", "",
                        snackPosition: SnackPosition.BOTTOM,
                        colorText: Colors.blue,
                        backgroundColor: Colors.white,

                      );
                    }
                },
                child: Text(
                  "CONTINUE",
                  style: TextStyle(
                      color: Colors.white, letterSpacing: 1.3, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
