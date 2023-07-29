import 'package:flutter/material.dart';
import 'package:netflix_clone/src/constant/global.dart';
import 'package:netflix_clone/src/ui/widgets/category.dart';
import 'package:netflix_clone/src/ui/widgets/movie_list.dart';
import 'package:netflix_clone/src/utils/my_scroll_behaviour.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("res/images/icon_netflix.png"),
        centerTitle: true,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        child: ScrollConfiguration(
            behavior: MyScrollBehaviour(),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  MovieCategory(),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  _buildMyList(context),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  _buildPopularList(context),
                ],
              ),
            )),
      ),
    );
  }

  _buildMyList(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text("My List",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )
              ],
            ),
          ),
          MovieListView(type: MovieListType.topRated, onItemInteraction: null,)
        ],
      ),
    );
  }

  _buildPopularList(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text("Popular on Netflix",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )
              ],
            ),
          ),
          MovieListView(type: MovieListType.topRated, onItemInteraction: null,)
        ],
      ),
    );
  }
}
