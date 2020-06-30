import 'package:flutter/material.dart';
import 'package:portal_alumni/beranda.dart';
import 'package:portal_alumni/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: SplashScreen(),
        
            
      
    );
  }
}
class Login extends StatefulWidget {
  @override 
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

TextEditingController user= new TextEditingController();
TextEditingController pass= new TextEditingController();



  @override 
  Widget build (BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Portal Alumni", style: TextStyle(fontSize: 45, color: Colors.black87, fontFamily: 'oswald'),),

            Image(
             image: AssetImage('assets/images/toga.jpg'),
             height: 150, 
             ),
            SizedBox(height: 20),

            

            SizedBox(height: 20),


            TextFormField(
              controller: user,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(color: Colors.black87)
                ),
                prefixIcon: Icon(Icons.person, size: 25),
                hintText: "Masukkan Username",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black87)
              )
            ),
            SizedBox(height: 20,),

            TextFormField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(color: Colors.black87)
                ),
                prefixIcon: Icon(Icons.lock, size: 25,),
                hintText: "Masukkan Password",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black87)
              )
            ),

            SizedBox(height: 20,),

            Card(
              child: Material(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.lightBlueAccent,
              elevation: 5,
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.lightBlue,
                  
                    
                     onTap: (){
                     
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Beranda()),);
                     },
                  child: Center(
                    child: Text("Masuk", style: TextStyle(fontSize: 20, color: Colors.white),),
                  )
                )
              )
              
              )
            ),
            FlatButton(
             child: Text(
              'Lupa password?',
               style: TextStyle(color: Colors.black54),
              ),
             onPressed: () {
              
             },
            )
          ]
        ),
      )
      
    );
  }
}