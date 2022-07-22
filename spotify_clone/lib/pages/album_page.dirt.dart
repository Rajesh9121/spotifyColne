import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {
  final dynamic song;

  const AlbumPage({Key? key, this.song}) : super(key: key);

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }
  Widget getBody(){
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width:double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.green
                ),

              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              children: [
                IconButton(onPressed:(){
                  Navigator.pop(context);
                }, icon:Icon(Icons.arrow_back_ios),color: Colors.white,),

              ],
            ),
          )
        ],
      ),
    );
  }
}
