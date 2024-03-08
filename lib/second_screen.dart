import 'package:flutter/material.dart';
//import 'package:promilo_app/login_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final myitems = [
    Image.asset('assets/images/image1.jpg'),
    Image.asset('assets/images/image2.jpg'),
    Image.asset('assets/images/image3.jpeg'),
  ];
  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Individual Meetup',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

                hintText: "Search",
                hintStyle: const TextStyle(fontSize: 20),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.black,
                ),
                suffixIcon: const Icon(
                  Icons.mic,
                  size: 40,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.only(top: 15,bottom: 15),
              child: Column(
                children: [
                  CarouselSlider(
                    items: myitems, 
                    options: CarouselOptions(
                      autoPlay: true,
                      height: 200,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      autoPlayAnimationDuration: const Duration(milliseconds: 200),
                      autoPlayInterval: const Duration(seconds: 1),
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      
            
                      onPageChanged: (index, reason) {
                        setState(() {
                          myCurrentIndex = index;
                        });
                      },
                    ),
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: myCurrentIndex, 
                      count: myitems.length,
                      effect: const WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 10,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.black,
                        //paintStyle: PaintingStyle.fill,
                      ),
                      ),
                      
                    ],
                  
              ),
            ),
          ),
          
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text('Trending Popular People',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15
            ),),
          ),
          
        ],
      ),
    );
  }
}
