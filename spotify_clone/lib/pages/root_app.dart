import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home_page.dart';
class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }
  Widget getBody(){
    return IndexedStack(
      index: activeTab,
      children:  [
        Center(
          child: HomePage(),
        ),
        Center(
          child: Text("Library",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
        ),
        Center(
          child: Text("Search",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
        ),
        Center(
          child: Text("Settings",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold),),
        )
      ],
    );
  }
  Widget getFooter(){

    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            IconButton(onPressed:(){
              setState(() {
                activeTab=0;
              });
            }, icon: Icon(Icons.home,color: activeTab == 0 ? Colors.green:Colors.white,)),
            IconButton(onPressed:(){
              setState(() {
                activeTab=1;
              });
            }, icon: Icon(Icons.library_music,color: activeTab == 1 ? Colors.green:Colors.white)),
            IconButton(onPressed:(){
              setState(() {
                activeTab=2;
              });
            }, icon: Icon(Icons.search,color: activeTab == 2 ? Colors.green:Colors.white)),
            IconButton(onPressed:(){
              setState(() {
                activeTab=3;
              });
            }, icon: Icon(Icons.settings,color: activeTab == 3 ? Colors.green:Colors.white,)),

          ]
        ),
      ),
    );
  }
}
