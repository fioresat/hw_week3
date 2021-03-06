import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Balloons in the sky"),
        ),
        backgroundColor: Colors.lightBlue[100],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FirstRow(),
            SecondRow(),
            ThirdRow(),
            FourthRow(),
            FirstRow(),
          ],
        ),
      ),
    );
  }
}

class BlueBalloon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}

class RedBalloon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}

class FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: BlueBalloon(),
      ),
    );
  }
}

class SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 1),
      padding: EdgeInsets.only(left: 50, right: 50, top: 10),
      transform: Matrix4.rotationZ(-0.2),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RedBalloon(),
          BlueBalloon(),
        ],
      ),
    );
  }
}

class ThirdRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      // margin: EdgeInsets.only(left: 120),
      padding: EdgeInsets.only(left: 170, right: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlueBalloon(),
          RedBalloon(),
        ],
      ),
    );
  }
}

class FourthRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 1),
      padding: EdgeInsets.only(left: 50, right: 50),
      transform: Matrix4.rotationZ(0.1),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlueBalloon(),
          BlueBalloon(),
        ],
      ),
    );
  }
}
