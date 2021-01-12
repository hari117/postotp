import 'package:flutter/material.dart';

class PatientSceen extends StatefulWidget {
  @override
  _PatientSceenState createState() => _PatientSceenState();
}

class _PatientSceenState extends State<PatientSceen> {

  TextEditingController nameController =TextEditingController();
  TextEditingController patientVisitReasonController =TextEditingController();

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
                  controller:patientVisitReasonController,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: "Purpose Of Visit to Patient",
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
