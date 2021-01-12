import 'package:flutter/material.dart';
import 'package:getx/staff_screen.dart';

class DashBoard extends StatefulWidget {

  var res;
  @override
  _DashBoardState createState() => _DashBoardState();

  DashBoard(this.res);
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("DashBoard Screen"),),
      backgroundColor: Colors.white70,
      body: Center(child: Text(widget.res),),
    );
  }
}
