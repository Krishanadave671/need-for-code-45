import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class highlight_card extends StatelessWidget {
   highlight_card({Key? key}) : super(key: key);
  final List<String> imgList = [
    'https://assets.devfolio.co/hackathons/d2e152245d8146898efc542304ef6653/assets/cover/694.png',
    'https://assets.devfolio.co/hackathons/d2e152245d8146898efc542304ef6653/assets/cover/694.png',
    'https://assets.devfolio.co/hackathons/d2e152245d8146898efc542304ef6653/assets/cover/694.png',
    'https://assets.devfolio.co/hackathons/d2e152245d8146898efc542304ef6653/assets/cover/694.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Name of the event"),
              ],
            ),
          ),

          CarouselSlider(
            items: imgList
                .map((item) => Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                  child:
                  GestureDetector(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                        child:CachedNetworkImage(
                          imageUrl: item,
                          placeholder: (context, url) => CircularProgressIndicator(),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                          fit: BoxFit.cover,
                        ),),
                      onTap: () {
                        //Navigator.pushNamed(context, '/details_page');
                      })
            ),
                ),
            )
                .toList(),
            options: CarouselOptions(
                autoPlay: false,
                aspectRatio: 2.5,
                enlargeCenterPage: false,
                viewportFraction: 0.6
            ),
          ),
        ],
      ),
    );
  }
}
