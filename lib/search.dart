import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portal_alumni/profil2.dart';
import 'package:portal_alumni/shared/theme.dart';


class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Search ListView",
      home: SearchListView(),
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
    );
  }
}
class SearchListView extends StatefulWidget {
  @override
  _SearchListViewState createState() => _SearchListViewState();
}

class _SearchListViewState extends State<SearchListView> {
  var etSearch = new TextEditingController();
  bool firstSearch = true;
  String query ="";

  List<String> dataList;
  List<String> filterList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    dataList = new List<String>();
    dataList = [
      "Snake","Elephant","Cats","Dog","Orion","Boomerang","Pelican","Ghost","Eagle","Horse Head","Elephant Trunk","Butterfly"
    ];
    //sort data
    dataList.sort();
  }
  _SearchListViewState(){
  etSearch.addListener((){
    //menambahkan method yang akan dipanggil ketika object ada berubah
    if(etSearch.text.isEmpty){
      setState(() {
        firstSearch = true;
        query ="";
      });
    } else{
      //data tidak kosong
      setState(() {
        firstSearch = false;
        query = etSearch.text;
      }
      );
    }
  });
}

@override
Widget build(BuildContext context) {
  // return Scaffold(
  //   appBar: AppBar(
  //     title: Text('Search Alumni'),
  //     backgroundColor: Colors.blue,
  //   ),

  //   body: Container(
  //     margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
  //     child: new Column(
  //       children: <Widget>[
  //         //memanggil method untuk view search
  //         _createSearchView(),

  //         // if (firstSearch) _createListView() else _performSearch()
  //       ],
  //     ),
  //   ),
  // );new Container(
    return  Scaffold(
      body: Column(
        children: <Widget>[
          Container(
  
            margin: EdgeInsets.only(left: 20 ,top: 45, right: 20),
                    child: TextField(
                      controller: etSearch,
                      decoration: InputDecoration(
                        
                        prefixIcon: Icon(Icons.search, size: 25,),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),),
                        // hintText: 'Search',
                        hintStyle: new TextStyle( color: Colors.black),
                        
                        labelText: "Search",
                        labelStyle: TextStyle( color: Colors.black)
                      ),
                    ),          
            ),
            SizedBox(height: 20),
            FlatButton(onPressed: (){
               
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Profile2(),));
                     
             },
            child:
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.all(10),
              // margin: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: <Widget>[
                  Image.asset("assets/images/toga.jpg", height: 25, ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: <Widget>[
                        Text("Ahmad Muyassar"),
                        Text("60200117016"),
                      ],
                      
                    ),
                    
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 130) ,
                    child: Icon(Icons.more_vert)
                    ),
              ],),
            ),),
           
        ]
      )
    );
}

// Widget _createSearchView(){
  // return new Container(
    
  
  //   child: TextField(
      
  //     controller: etSearch,
  //     decoration: InputDecoration(
  //       prefixIcon: Icon(Icons.search, size: 25,),
  //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),),
  //       // hintText: 'Search',
  //       hintStyle: new TextStyle( color: Colors.black),
        
  //       labelText: "Search",
  //       labelStyle: TextStyle( color: Colors.black)
  //     ),
  //   ),
  // );
}
// }

