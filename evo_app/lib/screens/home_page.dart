import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import '../widget/highlight_card.dart';

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
  final RequestUpcomingEvents = FirebaseFirestore.instance
      .collection('Events')
      // .where('EndDate',
      //     isGreaterThanOrEqualTo:
      //         (DateFormat('dd/MM/yyyy')).format(new DateTime.now()))
      .snapshots();

  @override
  Widget build(BuildContext context) {
    print(RequestUpcomingEvents);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              //main container (full orange)
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF47C7C),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    //yellow container
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEF9F9F),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(40)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 12, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Text("We do the work.\nYou have the fun.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    )),
                                Expanded(
                                  child: Container(),
                                ),
                                Icon(Icons.calendar_today)
                              ],
                            ),
                          ),

                          //corousel slider
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 8, bottom: 30),
                            child: StreamBuilder<QuerySnapshot>(
                                stream: RequestUpcomingEvents,
                                builder: (BuildContext context,
                                    AsyncSnapshot<QuerySnapshot> snapshot) {
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  } else {
                                    print(snapshot.data!.docs.length);
                                  }
                                  // print((document['EventBanner']).toString());
                                  return CarouselSlider(
                                    items: snapshot.data!.docs
                                        .map(
                                          (document) => Container(
                                              child: GestureDetector(
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    child: Text(
                                                        document['EventDesc']),
                                                    //  Image.network(
                                                    //   document['EventBanner'],
                                                    //   fit: BoxFit.cover,
                                                    // ),
                                                  ),
                                                  onTap: () {
                                                    Navigator.pushNamed(context,
                                                        '/details_page');
                                                  })),
                                        )
                                        .toList(),
                                    options: CarouselOptions(
                                        autoPlay: true,
                                        aspectRatio: 2.0,
                                        enlargeCenterPage: true,
                                        viewportFraction: 0.8),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, bottom: 30, top: 8),
                      child: Row(
                        children: [
                          Text(
                            "To get an event up here\n you can visit: ",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Text(
                "Highlights",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return highlight_card();
                    })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
