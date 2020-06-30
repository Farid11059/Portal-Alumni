import 'package:portal_alumni/main.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{

  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  void initState(){
    super.initState();
    splashscreenStart();

  }
    Future<Timer> splashscreenStart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(
        context,
      MaterialPageRoute(builder: (context) => Login())

       );
      }
    
    );

  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Icon(
              Icons.school,
              size: 150.0,
              color: Colors.white,
            ),

            SizedBox(height: 24.0,),

            Text("Portal Alumni",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'oswald',
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
         ),
       ),
    );
  }
}