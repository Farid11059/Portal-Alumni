import 'package:flutter/material.dart';
import 'package:portal_alumni/profil2.dart';
import 'package:portal_alumni/service/api.dart';

class Search extends StatelessWidget {
  final String token;

  const Search({Key key, this.token}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Search ListView",
      home: SearchListView(
        token: this.token,
      ),
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SearchListView extends StatefulWidget {
  final String token;

  const SearchListView({Key key, this.token}) : super(key: key);

  @override
  _SearchListViewState createState() => _SearchListViewState();
}

class _SearchListViewState extends State<SearchListView> {
  ApiService apiService = ApiService();

  var etSearch = new TextEditingController();
  bool firstSearch = true;
  String query = "";

  List<String> dataList;
  List<String> filterList;
  List data = [];

  @override
  void initState() {
    super.initState();

    apiService.users(widget.token).then((value) {
      setState(() {
        data = value;
      });
    });

    dataList = new List<String>();
    dataList = [
      "Snake",
      "Elephant",
      "Cats",
      "Dog",
      "Orion",
      "Boomerang",
      "Pelican",
      "Ghost",
      "Eagle",
      "Horse Head",
      "Elephant Trunk",
      "Butterfly"
    ];
    //sort data
    dataList.sort();
  }

  _SearchListViewState() {
    etSearch.addListener(() {
      //menambahkan method yang akan dipanggil ketika object ada berubah
      if (etSearch.text.isEmpty) {
        setState(() {
          firstSearch = true;
          query = "";
        });
      } else {
        //data tidak kosong
        setState(() {
          firstSearch = false;
          query = etSearch.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile2(
                        data: data[index],
                      ),
                    ));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(10),
                // margin: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/toga.jpg",
                          height: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(data[index]["name"]),
                              Text(data[index]["nim"]),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
