import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/api_services.dart';

class StudentScreen extends StatefulWidget {
  @override
  _StudentScreenState createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  TextEditingController srmIdController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController departmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: srmIdController,
              keyboardType: TextInputType.number,
              autofocus: false,
              decoration: InputDecoration(
                hintText: "SRM ID",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.black45,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                hintText: "NAME",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.black45,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black45),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: departmentController,
              keyboardType: TextInputType.text,
              autofocus: false,
              decoration: InputDecoration(
                hintText: "DEPARTMENT",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.black45,
                  ),
                ),
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
              onPressed: ()async {
                if (srmIdController.text.isEmpty &&
                    nameController.text.isEmpty &&
                    departmentController.text.isEmpty) {
                  Get.snackbar(
                    " Please Fill All Details",
                    "",
                    snackPosition: SnackPosition.BOTTOM,
                    colorText: Colors.blue,
                    backgroundColor: Colors.white,
                  );
                } else {
               await   $apiServices.registerService(
                      // srmIdController.text, nameController.text,
                      // departmentController.text,0);
                      srmId: srmIdController.text,
                      name: nameController.text,
                      department: departmentController.text,
                      token: 0);
                  srmIdController.clear();
                  nameController.clear();
                  departmentController.clear();
                }
              },
              child: Text(
                "SUBMIT",
                style: TextStyle(color: Colors.white, letterSpacing: 1.3),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
