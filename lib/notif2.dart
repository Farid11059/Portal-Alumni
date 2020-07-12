import 'package:flutter/material.dart';
import 'package:portal_alumni/shared/theme.dart';

class Notif2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rifki'),
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
                      "Muh Rifki Dwi Kurniawan",
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
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 45, right: 50),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/gmail.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 45, right: 50),
                              child: Container(
                                height: 21,
                                width: 21,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/instagram.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 45,
                              ),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/facebook.png"),
                                      fit: BoxFit.cover),
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
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 7, left: 10),
                                  child: Text(
                                    "rifki21@gmail.com",
                                    style: blackTextFont.copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 15, left: 20),
                                          child: Text(
                                            "rifkhy21",
                                            style: blackTextFont.copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Text(
                                                    "Muh Rifki Dwi Kurniawan",
                                                    style:
                                                        blackTextFont.copyWith(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                    textAlign: TextAlign.center,
                                                  ),
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
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text("60200117003",
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
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text("Teknik Informatika",
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
                          padding: EdgeInsets.only(right: 248),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Alamat :",
                                style: blackTextFont.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text("Jl. Macandaa",
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
                          padding: EdgeInsets.only(right: 236),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "No. Telp :",
                                style: blackTextFont.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text("085341047633",
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
                          padding: EdgeInsets.only(right: 224),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Tahun Angkatan :",
                                style: blackTextFont.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text("2017",
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
                          padding: EdgeInsets.only(right: 223),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Tahun kelulusan :",
                                style: blackTextFont.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text("2021",
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
                          padding: EdgeInsets.only(right: 163),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Tempat dan Tanggal Lahir :",
                                style: blackTextFont.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text("Poso, 03 Agustus 1999",
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
                          padding: EdgeInsets.only(right: 232),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Pekerjaan Awal:",
                                style: blackTextFont.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Programmer",
                                style: blackTextFont.copyWith(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
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
                                  "Ketua SEMA",
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
                                  "3.9",
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
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
