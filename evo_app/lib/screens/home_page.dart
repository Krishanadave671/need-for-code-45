import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:evo_app/screens/permission.dart';
import 'package:flutter/material.dart';

import '../widget/highlight_card.dart';
import 'add_event.dart';


class main_screen extends StatefulWidget {
  const main_screen({Key? key}) : super(key: key);

  @override
  State<main_screen> createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
  int currentIndex=0;
  final screens =[
    home_page(),
    add_event(),
    permission(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).backgroundColor,
        selectedFontSize: 16,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'permissions',
          ),
        ],
      ),
    );
  }
}

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  final List<String> imgList = [
    'https://assets.devfolio.co/hackathons/d2e152245d8146898efc542304ef6653/assets/cover/694.png',
    'https://assets.devfolio.co/hackathons/d2e152245d8146898efc542304ef6653/assets/cover/694.png',
    'https://assets.devfolio.co/hackathons/d2e152245d8146898efc542304ef6653/assets/cover/694.png',
    'https://assets.devfolio.co/hackathons/d2e152245d8146898efc542304ef6653/assets/cover/694.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Expanded(
          child: Container(
            child: Column(
              children: [

                //main container (full orange)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40)
                    ),
                  ),

                  child: Column(
                    children: [

                      //yellow container
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40)
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,right: 12,top: 8,bottom: 8),
                              child: Row(
                               children: [
                                 Text("We do the work.\nYou have the fun.",
                                 style:TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 20,
                                 )
                                 ),
                                 Expanded(child: Container(),),
                                 Icon(Icons.calendar_today)
                               ],
                              ),
                            ),

                            //corousel slider
                            Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 30),
                              child: Container(
                                child: CarouselSlider(
                                  items: imgList
                                      .map((item) => Container(
                                      child:
                                      GestureDetector(
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.circular(20.0),
                                              //child:Image(image: CachedNetworkImageProvider(item),fit:BoxFit.cover)
                                              child:CachedNetworkImage(
                                            imageUrl: item,
                                            placeholder: (context, url) => CircularProgressIndicator(),
                                            errorWidget: (context, url, error) => Icon(Icons.error),
                                                fit: BoxFit.cover,
                                          ),
                                          ),
                                          onTap: () {
                                            Navigator.pushNamed(context, '/details_page');
                                          })
                                  ),
                                  )
                                      .toList(),
                                  options: CarouselOptions(
                                      autoPlay: true,
                                      aspectRatio: 2.0,
                                      enlargeCenterPage: true,
                                      viewportFraction: 0.8
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 8),
                  child: Row(
                    children: [
                      Text("Highlights",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Expanded(
                  child: ListView.builder(scrollDirection: Axis.vertical,shrinkWrap: true,itemCount: 2, itemBuilder: ((context, index) {
                    return highlight_card();
                  })),
                ),
              ],
            ),


          ),
        ),
      ),
    );
  }
}