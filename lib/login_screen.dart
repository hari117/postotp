import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/otp_screen.dart';

import 'api_services.dart';

TextEditingController phoneNumberController = TextEditingController();
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {




  TextEditingController srmIdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Facility Management System",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: phoneNumberController,
              keyboardType: TextInputType.number,
              autofocus: false,
              decoration: InputDecoration(
                hintText: "Mobile Number",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.black45,
                  ),),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              minWidth: double.infinity,
              color: Colors.blue,
              height: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              onPressed: () {
                if (phoneNumberController.text.length == 10) {
                  $apiServices.requestOtpToLogin(phoneNumberController.text);
                  Get.to(OtpScreen(phoneNumberController.text));
                 // instance.phoneNumber=phoneController.text;
             //     print("${instance.phoneNumber} *********************************************}");
                //  phoneController.clear();
                }
                else {
                  Get.snackbar("Enter 10 Digit valid Mobile Number", "",
                      snackPosition: SnackPosition.BOTTOM,
                      colorText: Colors.red,
                      backgroundColor: Colors.white,
                      );
                }

                // print("name:${phoneNumberController.text} ");

                //  phoneNumberController.clear();

                //  phoneNumberController.clear();
              },
              child: Text("GetOtp",
                style: TextStyle(color: Colors.white, letterSpacing: 1.3),),
            ),


          ],
        ),
      ),
    );
  }
}
