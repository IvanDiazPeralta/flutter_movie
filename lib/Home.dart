import 'package:flutter/material.dart';
import 'package:flutter_movie/HttpHelper.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  String result="Loading...";
  HttpHelper helper;
  @override
  void initState(){
    helper = new HttpHelper();
    super.initState();
  }
  Widget build(BuildContext context) {
    helper.getMovieList().then(
        (json){
          setState(() {
            result = json;
          });
        }
    );
    return Container(
      child: Text(
        result
      ),
    );
  }
}