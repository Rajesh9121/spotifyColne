import 'package:flutter/material.dart';
import 'package:spotify_clone/json/songs_json.dart';

import 'album_page.dirt.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu=0;
  int activeMenu2=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getBody(),

    );

  }
  PreferredSizeWidget getAppBar(){
    return PreferredSize(preferredSize: const Size.fromHeight(70), child: AppBar(
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.only(left: 5,top: 5,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Explore',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Icon(Icons.list,size: 25,)
          ],
        ),
      ),
    ));
  }
  Widget getBody(){
    return SingleChildScrollView(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(

                    children:List.generate(song_type_1.length, (index){
                      return Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              activeMenu=index;
                            });
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(song_type_1[index],style: TextStyle(
                                  fontSize: 15,color: activeMenu==index? Colors.green:Colors.white,
                                ),),
                                SizedBox(
                                  height: 3,
                                ),
                                activeMenu==index?
                                Container(
                                  width: 10,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                ):Container()
                              ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children:List.generate(songs.length-5, (index){
                      return Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>  AlbumPage(
                              song: songs[index],
                            ),));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image:AssetImage(songs[index]['img']),
                                  fit: BoxFit.cover),
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                songs[index]['title'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(height:5,),
                              Container(
                                width: 180,
                                child: Text(
                                  songs[index]['description'],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(

                    children:List.generate(song_type_2.length, (index){
                      return Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              activeMenu2=index;
                            });
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(song_type_2[index],style: TextStyle(
                                fontSize: 15,color: activeMenu2==index? Colors.green:Colors.white,
                              ),),
                              SizedBox(
                                height: 3,
                              ),
                              activeMenu2==index?
                              Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                              ):Container()
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(
                    children:List.generate(songs.length-5, (index){
                      return Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>  AlbumPage(
                              song: songs[index+5],
                            ),));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image:AssetImage(songs[index+5]['img']),
                                        fit: BoxFit.cover),
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                songs[index+5]['title'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              SizedBox(height:5,),
                              Container(
                                width: 180,
                                child: Text(
                                  songs[index+5]['description'],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),

            ],
          )
        ],
      ) ,
    );
  }
}