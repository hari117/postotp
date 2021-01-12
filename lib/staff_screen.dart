import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/api_services.dart';

class StaffScreen extends StatefulWidget {
  @override
  _StaffScreenState createState() => _StaffScreenState();
}

class _StaffScreenState extends State<StaffScreen> {
  TextEditingController srmIdController =TextEditingController();
  TextEditingController staffNameController =TextEditingController();
  TextEditingController departmentController =TextEditingController();

  @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20,),
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
                        ),),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller:staffNameController,
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: "STAFF NAME",
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
                  SizedBox(height: 20,),
                  TextField(
                    controller:departmentController,
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
                        ),),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  FlatButton(
                    minWidth: double.infinity,
                    color: Colors.blue,
                    height: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      if(srmIdController.text.isEmpty && staffNameController.text.isEmpty && departmentController.text.isEmpty)
                      {
                        Get.snackbar(" Please Fill All Details", "",
                          snackPosition: SnackPosition.BOTTOM,
                          colorText: Colors.blue,
                          backgroundColor: Colors.white,

                        );
                      }
                      else
                      {
                        $apiServices.registerService(
                          // srmIdController.text, nameController.text,
                          // departmentController.text,0);
                            srmId: srmIdController.text,
                            name: staffNameController.text,
                            department: departmentController.text,
                            token: 1);
                      }



                    },
                    child: Text("SUBMIT",
                      style: TextStyle(color: Colors.white, letterSpacing: 1.3),),
                  ),
                ],
              ),
            ),
          )
      );
    }

}
