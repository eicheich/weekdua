import 'package:flutter/material.dart';
import 'package:outline_search_bar/outline_search_bar.dart';


class searchspotify extends StatefulWidget {
  const searchspotify({Key? key}) : super(key: key);

  @override
  State<searchspotify> createState() => _searchspotifyState();
}

class _searchspotifyState extends State<searchspotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 15,right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget> [
              Text(
                'Search',style: TextStyle(fontSize: 22, fontFamily: 'gothamMedium', color: Colors.white),
              ),
              SizedBox(height: 30),
              TextField(
                decoration:InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFFFFFFF),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 26,
                    color: Colors.black54,
                  ), // Icon
                  hintText: 'Artists, songs, or podcasts', hintStyle: const TextStyle(
                    fontSize: 16, fontFamily: 'gothamMedium'
                ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    ), // BorderSide
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Your top genres',style: TextStyle(fontSize: 16, fontFamily: 'gothamMedium', color: Colors.white),
              ),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 155,
                      child: Card(
                        color: Colors.purple[400],
                        child: ListTile(
                          textColor: Colors.white,
                          title: Text("Pop"),
                        ),


                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 155,
                      child: Card(
                        color: Colors.lightGreen[700],
                        child: ListTile(
                          textColor: Colors.white,
                          title: Text("Indie"),
                        ),

                      ),
                    ),
                  ]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 155,
                      child: Card(
                        color: Colors.pink[600],
                        child: ListTile(
                          textColor: Colors.white,
                          title: Text("RnB"),
                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 155,
                      child: Card(
                        color: Colors.green[800],
                        child: ListTile(
                          textColor: Colors.white,
                          title: Text("K-pop"),
                        ),

                      ),
                    ),
                  ]
              ),
              SizedBox(height: 20),
              Text(
                'Browse All',style: TextStyle(fontSize: 16, fontFamily: 'gothamMedium', color: Colors.white),
              ),
              SizedBox(height:10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 155,
                      child: Card(
                        color: Colors.red[600],
                        child: ListTile(
                          textColor: Colors.white,
                          title: Text("Podcasts"),
                        ),


                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 155,
                      child: Card(
                        color: Colors.blue[900],
                        child: ListTile(
                          textColor: Colors.white,
                          title: Text("Made For \nYou"),
                        ),

                      ),
                    ),
                  ]
              ),
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.black,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.library_music_rounded),
                    label: 'Your Library',
                  ),
                ],
              )
            ],
          ),

      ),
      ),
    );
  }
}
