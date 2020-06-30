import 'package:flutter/material.dart';
import 'package:portal_alumni/shared/theme.dart';

class Profile extends StatelessWidget {
  @override
   Widget build (BuildContext context) {
      
    final padding2 = Padding(
                      padding: const EdgeInsets.all(15),
                      
                      child: InkWell(
                        splashColor: Colors.lightBlue,
                        //  onTap: (){
                        //    Navigator.push(context, MaterialPageRoute(builder: (context) => Beranda()),);
                        //    },
                        child: Center(
                          child: Text("Edit", style: TextStyle(fontSize: 20, color: Colors.white),),
                        )
                      ),
                    );
              
        return Scaffold(
          appBar:  AppBar(
              title: Text('Profile'),
               ),
          body: ListView(  children: <Widget>[
            
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              
                SizedBox(height: 10,),
                Container(
                  // margin: EdgeInsets.only(left: 120),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(image: AssetImage("assets/images/farid.jpg"),
                    fit: BoxFit.cover, )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.center,
                      // color: Colors.black,
                      // margin: EdgeInsets.only(left: 10),
                      child: Text("Muhammad Farid Wajdi", style: blackTextFont.copyWith(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                    ),
                    SizedBox(height: 10,),
                     Container(
                       decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                       margin: EdgeInsets.only(left: 8, right: 8),
                       padding: EdgeInsets.only(top: 5, bottom: 5),
                       
                       
                       child: Column(
                         children: <Widget>[
                           Row(
                            
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 45, right: 50),
                                child: Container(
                                  
                                  height: 20,
                                  width:  20,

                                decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage("assets/images/gmail.png"),
                                 
                                 fit: BoxFit.cover
                                 ),
                                ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 45, right: 50),
                                child: Container(
                                  
                                  height: 21,
                                  width:  21,

                                decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage("assets/images/instagram.png"),
                                 fit: BoxFit.cover
                                 ),
                                ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 45, ),
                                child: Container(
                                  
                                  height: 20,
                                  width:  20,
                                  

                                decoration: BoxDecoration(
                                 image: DecorationImage(image: AssetImage("assets/images/facebook.png"),
                                 
                                 fit: BoxFit.cover
                                 ),
                                ),
                                ),
                              ),
                            ],
                    ),
                         
                       
                    // SizedBox(height: 10,),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(padding: 
                            const EdgeInsets.only(right: 7, left: 10),
                            child: Text("mffarid2@gmail.com", style: blackTextFont.copyWith(fontSize: 10, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                            ),
                     Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(padding: 
                              const EdgeInsets.only(right: 15, left: 20),
                              child: Text("muhfarid_wajdy", style: blackTextFont.copyWith(fontSize: 10, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                            ),
                       Column(
                         children: <Widget>[
                            Row(
                              children: <Widget>[
                              Padding(padding: 
                              const EdgeInsets.only( left: 10),
                              child: Text("Muhammad Farid Wajdi", style: blackTextFont.copyWith(fontSize: 10, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ],
                    ),
                          ],
                        ),
                      ],
                    ),
                          ],
                          
                        ),

                      ],

                    ),
                         ],
                    ),
                     ),
                    
                    SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                       margin: EdgeInsets.only(left: 8, right: 8),
                       padding: EdgeInsets.only(top: 5, bottom: 5),

                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            padding: EdgeInsets.only(right: 245),
                            // color: Colors.red,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("NIM :", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                              Text("60200117023", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold))
                            ],
                          ),),
                        
                      
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(right: 215),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Program Study :", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text("Teknik Informatika", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold))
                      ],
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(right: 190),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Alamat :", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text("Jl. Bontotangnga LR.3", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold))
                      ],
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(right: 235),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("No. Telp :", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text("085341047633", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold))
                      ],
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(right: 220),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Tahun Angkatan :", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text("2017", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold))
                      ],
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(right: 220),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Tahun Kelulusan :", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text("2021", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold))
                      ],
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(right: 150),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Tempat dan Tanggal Lahir :", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text("Ujung Pandang, 11 Mei 1999", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold))
                      ],
                    ),),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(right: 230),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Pekerjaan Awal:", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text("Programmer", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                         SizedBox(height: 10,),
                      ]
                      )
                      ),
                              Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(right: 140),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Prestasi yang pernah di Capai:", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text("Ketua SEMA", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                     SizedBox(height: 10)
                      ]
                      ),
                      ),
                         Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(right: 305),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("IPK:", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                        Text("3.9", style: blackTextFont.copyWith(fontSize: 14, fontWeight: FontWeight.bold),),
                  
                         SizedBox(height: 10)
                        //   ],
                        //   ),
                        //  ),
                      ]
                    ),),
                        ],
                    ),
                    )
              ]
                    ),
                   
    
                    SizedBox(height: 5,),
                     
                    
                    // SizedBox(height:150),
                Card(
              child: Material(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.black,
              elevation: 5,
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.lightBlue,
                  //  onTap: (){
                  //    Navigator.push(context, MaterialPageRoute(builder: (context) => Beranda()),);
                  //    },
                  child: Center(
                    child: Text("Edit", style: TextStyle(fontSize: 20, color: Colors.white),),
                  )
                )
              )
              )
            ),
              
              
              SizedBox(height: 150,),
              
                  ],
                ),
            
            ],
            )
          
      );
          

          
    
   }  
}