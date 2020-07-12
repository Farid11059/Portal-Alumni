import 'package:flutter/material.dart';
import 'package:portal_alumni/beranda.dart';
import 'package:portal_alumni/splashscreen.dart';
import 'service/api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  ApiService apiService = ApiService();

  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  bool proses = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: ListView(children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            "Portal Alumni",
            style: TextStyle(
                fontSize: 45, color: Colors.black87, fontFamily: 'oswald'),
          ),
        ),
        Image(
          image: AssetImage('assets/images/toga.jpg'),
          height: 150,
        ),
        SizedBox(height: 20),
        SizedBox(height: 20),
        TextFormField(
            controller: user,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: BorderSide(color: Colors.black87)),
                prefixIcon: Icon(Icons.mail, size: 25),
                hintText: "Masukkan Email",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black87))),
        SizedBox(
          height: 20,
        ),
        TextFormField(
            controller: pass,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: BorderSide(color: Colors.black87)),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 25,
                ),
                hintText: "Masukkan Password",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black87))),
        SizedBox(
          height: 20,
        ),
        Card(
            child: Material(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.lightBlueAccent,
                elevation: 5,
                child: Container(
                    height: 50,
                    child: InkWell(
                        splashColor: Colors.lightBlue,
                        onTap: () {
                          setState(() {
                            proses = true;
                          });
                          apiService.login(user.text, pass.text).then((value) {
                            setState(() {
                              proses = false;
                            });
                            if (value['error']) {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: Text("Opps"),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text(
                                            'Data salah atau tidak terdaftar!'),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Beranda(
                                            token: value["token"],
                                            user: value["user"],
                                          )));
                            }
                          });
                        },
                        child: Center(
                          child: proses
                              ? CircularProgressIndicator()
                              : Text(
                                  "Masuk",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                        ))))),
      ]),
    ));
  }
}
