import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'api_services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController visitController = TextEditingController();

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
              "Post Method Example ",
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
                hintText: "Enter Phone Number",
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
              color: Colors.green,
              onPressed: () {

                // print("name:${phoneNumberController.text} ");

                //  phoneNumberController.clear();
                $apiServices.requestOtpToLogin(phoneNumberController.text);
                phoneNumberController.clear();
              },
              child: Text("GetOtp"),
            ),
          ],
        ),
      ),
    );
  }
}
