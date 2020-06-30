import 'package:flutter/material.dart';
import 'package:portal_alumni/shared/theme.dart';
import 'package:portal_alumni/notif2.dart';

class Notif extends StatelessWidget{

  Widget build (BuildContext context) {

  return Scaffold(
          appBar:  AppBar(
              title: Text('Notification'),               
               ),               
               body: Column(                 
                 children: <Widget>[
                 SizedBox(height: 30,),
                 
                  FlatButton(onPressed: (){ 
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Notif2()));
                  },
            child:
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.only(top: 15, bottom: 15, left: 5, right: 5),
              // margin: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: <Widget>[
                //   Container(
                //  decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(150),
                //  image: DecorationImage(image: AssetImage("assets/images/toga.jpg",  ),
                //  fit: BoxFit.cover
                //  ),
                //  ),
                //   ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: <Widget>[
                            Text("Rifki Dwi Kurniawan telah "),
                            Text("di nyatakan LULUS dengan IPK 3.5."),
                            Text("Sekarang Rifki terdaftar sebagai "),
                            Text("Alumni")
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60),
                          child: Icon(Icons.more_vert),
                          
                        )
                      ],
                    ),
                  )
                 
                  
              ],),
            ),),
                 
               
            
  
                 ]
                 )
                 );
                 
}
}