import 'package:flutter/material.dart';
import 'package:getx/guest_screen.dart';
import 'package:getx/patient_screen.dart';
import 'package:getx/staff_screen.dart';
import 'package:getx/student_screen.dart';

class HomeScreen extends StatefulWidget {
  String num;
  @override
  _HomeScreenState createState() => _HomeScreenState();

  HomeScreen(this.num);
}

class _HomeScreenState extends State<HomeScreen> {

PageController pageController;


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController(initialPage: 0);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        centerTitle: true,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Text("Select User Type"),
        ),

      ),
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: ()
                {
                  pageController.jumpToPage(0);
                },
                child: Container(
                  width: 80,
                  height: 70,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue,
                          offset: Offset(.5, .5),
                          blurRadius: 1)
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.supervised_user_circle),
                      SizedBox(height: 5,),
                      Text("Student"),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: ()
                {
                  pageController.jumpToPage(1);
                },
                child: Container(
                  width: 80,
                  height: 70,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue,
                          offset: Offset(.5, .5),
                          blurRadius: 1)
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.ac_unit),
                      Text("Staff"),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: ()
                {
                  pageController.jumpToPage(2);
                },
                child: Container(
                  width: 80,
                  height: 70,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.ac_unit),
                      Text("Guest"),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue,
                          offset: Offset(.5, .5),
                          blurRadius: 1)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: ()
                {
                  pageController.jumpToPage(3);
                },
                child: Container(
                  width: 80,
                  height: 70,
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue,
                          offset: Offset(.5, .5),
                          blurRadius: 1)
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.ac_unit),
                      Text("Patient"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            flex: 1,
            child: PageView(
              //primary: false,
             // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              controller: pageController,
              children: [
                // Text("Hi"),
                // Text("Hi"),
                // Text("Hi"),
                // Text("Hi"),
              StudentScreen(),
                StaffScreen(),
                GuestScreen(),
                PatientSceen(),
              ],
            ),
          )
        ],
      )
    );
  }
}
