import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/api_services.dart';

class GuestScreen extends StatefulWidget {
  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {

  TextEditingController nameController =TextEditingController();
  TextEditingController reasonController =TextEditingController();


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
                    controller:nameController,
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
                        ),),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black45),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller:reasonController,
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: "Purpose Of Visit",
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

                      if( nameController.text.isEmpty && reasonController.text.isEmpty)
                      {
                        Get.snackbar(" Please Fill All Details", "",
                          snackPosition: SnackPosition.BOTTOM,
                          colorText: Colors.blue,
                          backgroundColor: Colors.white,

                        );
                      }
                      else
                      {
                        $apiServices.registerService(name: nameController.text,token: 2,reason: reasonController.text);
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
