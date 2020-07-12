import 'package:flutter/material.dart';
import 'package:portal_alumni/beranda.dart';
import 'service/api.dart';

class DataDiriPage extends StatefulWidget {
  final id;
  final String token;

  const DataDiriPage({Key key, this.id, this.token}) : super(key: key);

  @override
  _DataDiriPageState createState() => _DataDiriPageState();
}

class _DataDiriPageState extends State<DataDiriPage> {
  ApiService apiService = ApiService();

  TextEditingController fb = TextEditingController();
  TextEditingController ig = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController ttl = TextEditingController();
  TextEditingController pekerjaan = TextEditingController();
  TextEditingController prestasi = TextEditingController();

  bool proses = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Text(
                "Data Diri",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: fb,
                decoration: InputDecoration(labelText: "Facebook"),
              ),
              TextFormField(
                controller: ig,
                decoration: InputDecoration(labelText: "Instagram"),
              ),
              TextFormField(
                controller: alamat,
                decoration: InputDecoration(labelText: "Alamat"),
              ),
              TextFormField(
                controller: ttl,
                decoration: InputDecoration(labelText: "Tempat Tanggal Lahir"),
              ),
              TextFormField(
                controller: pekerjaan,
                decoration: InputDecoration(labelText: "Pekerjaan"),
              ),
              TextFormField(
                controller: prestasi,
                decoration: InputDecoration(labelText: "Prestasi"),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  Map body = {
                    "fb": fb.text,
                    "ig": ig.text,
                    "alamat": alamat.text,
                    "ttl": ttl.text,
                    "pekerjaan": pekerjaan.text,
                    "prestasi": prestasi.text
                  };

                  setState(() {
                    proses = true;
                  });

                  apiService
                      .update(widget.token, widget.id, body)
                      .then((value) {
                    setState(() {
                      proses = false;
                    });

                    if (value["ok"]) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("OK"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text('Berhasil update data!'),
                              ],
                            ),
                          ),
                        ),
                      );
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Beranda(
                                    token: widget.token,
                                    user: value["user"],
                                  )));
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Opps"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text('Terjadi kesalahan!'),
                              ],
                            ),
                          ),
                        ),
                      );
                    }
                  });
                },
                textColor: Colors.white,
                child: proses
                    ? CircularProgressIndicator(
                        backgroundColor: Colors.white,
                      )
                    : Text(
                        "SIMPAN",
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
