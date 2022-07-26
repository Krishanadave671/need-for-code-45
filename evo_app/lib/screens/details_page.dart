import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class details_page extends StatefulWidget {
  const details_page({Key? key}) : super(key: key);

  @override
  State<details_page> createState() => _details_pageState();
}

class _details_pageState extends State<details_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return<Widget>[
            SliverAppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0), ), ),

              expandedHeight: 300,
              floating: true,
              pinned: true,
              flexibleSpace:

              FlexibleSpaceBar(
                /*titlePadding: const EdgeInsetsDirectional.only(
                        start: 16.0, bottom: 16.0),*/
                centerTitle: true,
                /*title: const Text(
                     'Test Title',
                     textScaleFactor: 1.0,
                     style: TextStyle(
                         color: Colors.black,),
                   ),*/
                stretchModes: const <StretchMode>[
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
                // ClipRRect added here for rounded corners
                background: ClipRRect(

                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  child: Image.network(
                    "https://assets.devfolio.co/hackathons/d2e152245d8146898efc542304ef6653/assets/cover/694.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),



          ];
        },
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Align(
                    child: Container(
                      width: 150,
                      height: 7,
                      decoration: BoxDecoration(
                          color: Colors.red[50],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "TSEC HACKS 2022 \n    --Let's get hacking",
                    style: TextStyle(fontSize: 20, height: 1.2),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              //committee logo
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "TSEC Codecell",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Extra line",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  /*Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(3)),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text("Interior"),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(3)),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text("40m2"),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(3)),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text("Ideas"),
                            ),
                          )
                        ],
                      ),*/
                  SizedBox(height: 20,),
                  Text("Nobody wants to stare at a blank wall all day long, which is why wall art is such a crucial step in the decorating process. And once you start brainstorming, the rest is easy. From gallery walls to DIY pieces like framing your accessories and large-scale photography, we've got plenty of wall art ideas to spark your creativity. And where better to look for inspiration that interior designer-decorated walls",style: TextStyle(
                      height: 1.6
                  ),),
                  SizedBox(height: 20,),
                  Text("Details:",style: TextStyle(
                    fontSize: 24,
                  ),),
                  SizedBox(height: 20,),

                  Text(
                    "🗓 Date: 4 July 2022",
                    style: TextStyle(fontSize: 16,height: 1),
                  ),
                  Text(
                    "⌚ Time: 8:00 PM",
                    style: TextStyle(fontSize: 16,height: 1.5),
                  ),
                  Text(
                    "🏢 Venue: TSEC New Building, Lab 208",
                    style: TextStyle(fontSize: 16,height: 1.5),
                  ),
                  Text(
                    "💵 Free of cost",
                    style: TextStyle(fontSize: 16,height: 1.5),
                  ),

                  SizedBox(height: 20,),

                  ElevatedButton(onPressed: (){},
                      child: Text(
                          "Register Now !!!"
                      )
                  )
                  /*SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("assets/images/image_2.png"),fit: BoxFit.cover)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("assets/images/image_3.png"),fit: BoxFit.cover)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("assets/images/image_4.png"),fit: BoxFit.cover)
                                ),
                              ),
                            )
                          ],
                        ),
                      )*/


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


