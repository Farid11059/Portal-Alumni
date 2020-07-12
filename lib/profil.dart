import 'package:flutter/material.dart';
import 'package:portal_alumni/data_diri.dart';
import 'package:portal_alumni/shared/theme.dart';

class Profile extends StatelessWidget {
  final Map user;
  final String token;

  const Profile({Key key, this.user, this.token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding2 = Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
          splashColor: Colors.lightBlue,
          //  onTap: (){
          //    Navigator.push(context, MaterialPageRoute(builder: (context) => Beranda()),);
          //    },
          child: Center(
            child: Text(
              "Edit",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                  // margin: EdgeInsets.only(left: 120),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      image: DecorationImage(
                        image: AssetImage("assets/images/toga.jpg"),
                        fit: BoxFit.cover,
                      )),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        // color: Colors.black,
                        // margin: EdgeInsets.only(left: 10),
                        child: Text(
                          user["name"],
                          style: blackTextFont.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                        margin: EdgeInsets.only(left: 8, right: 8),
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/gmail.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Text(
                                      user["email"],
                                      style: blackTextFont.copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/instagram.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Text(
                                      user["ig"] ?? '',
                                      style: blackTextFont.copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/facebook.png"),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    Text(
                                      user["fb"] ?? '',
                                      style: blackTextFont.copyWith(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
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
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
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
                                  Text(
                                    "NIM :",
                                    style: blackTextFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(user["nim"] ?? '',
                                      style: blackTextFont.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(right: 215),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Program Study :",
                                    style: blackTextFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(user["jurusan"] ?? '',
                                      style: blackTextFont.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(right: 190),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Alamat :",
                                    style: blackTextFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(user["alamat"] ?? '',
                                      style: blackTextFont.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(right: 220),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Tahun Angkatan :",
                                    style: blackTextFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(user["angkatan"] ?? '',
                                      style: blackTextFont.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(right: 220),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Tahun Kelulusan :",
                                    style: blackTextFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(user["lulus"] ?? '',
                                      style: blackTextFont.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(right: 150),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Tempat dan Tanggal Lahir :",
                                    style: blackTextFont.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(user["ttl"] ?? '',
                                      style: blackTextFont.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 10),
                                padding: EdgeInsets.only(right: 230),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Pekerjaan Awal:",
                                        style: blackTextFont.copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        user["pekerjaan"] ?? '',
                                        style: blackTextFont.copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ])),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(right: 140),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Prestasi yang pernah di Capai:",
                                      style: blackTextFont.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      user["prestasi"] ?? '',
                                      style: blackTextFont.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10)
                                  ]),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(right: 305),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "IPK:",
                                      style: blackTextFont.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      user["ipk"] ?? '',
                                      style: blackTextFont.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    SizedBox(height: 10)
                                    //   ],
                                    //   ),
                                    //  ),
                                  ]),
                            ),
                          ],
                        ),
                      )
                    ]),

                SizedBox(
                  height: 5,
                ),

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
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DataDiriPage(
                                              token: this.token,
                                              id: this.user["id"],
                                            )),
                                  );
                                },
                                child: Center(
                                  child: Text(
                                    "Edit",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ))))),
                SizedBox(
                  height: 150,
                ),
              ],
            ),
          ],
        ));
  }
}
