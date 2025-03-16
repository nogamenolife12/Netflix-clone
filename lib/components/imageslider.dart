import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:netflix_clone/styles/Style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Imagesliderrr extends StatefulWidget {
  const Imagesliderrr({super.key});

  @override
  State<Imagesliderrr> createState() => _ImagesliderrrState();
}

class _ImagesliderrrState extends State<Imagesliderrr> {
  int activeindex = 0;
  final images = [
    'assets/paster1.jpg',
    'assets/paster2.webp',
    'assets/paster3.png',
    'assets/paster4.jpg',
    'assets/paster5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
              
            ),
            CarouselSlider.builder(itemCount: images.length,
             itemBuilder: (context,index,realIndex){
              final urlImage = images[index];
              return buildImage(urlImage,index);
             },
              options: CarouselOptions(
                autoPlay: true,
                height: 300,
                onPageChanged: (index,reason)=>setState(()=> activeindex = index)
                )
              ),
              SizedBox(height: 12,),
              buildIndicator(),
              buildLowerHalf(),
          ],
          
        ),
      ),
    ); // Your UI goes here

  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: ExpandingDotsEffect(
        dotWidth: 5,
        dotHeight: 5,
        activeDotColor: Colors.red,
      ),
      activeIndex: activeindex,
      count: images.length,
      );
}



Widget buildImage(String urlImage,int index) => Container(
  margin: EdgeInsets.symmetric(horizontal: 50),
   decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.white.withOpacity(0.1), // Light white shadow
        blurRadius: 15, // Soft blur effect
        spreadRadius: 5, // Slight spread for visibility
      ),
    ],
  ),
  child:ClipRRect(
  borderRadius: BorderRadius.circular(12),
  child: Image.asset(urlImage,fit:BoxFit.fill),
  )
);


Widget buildLowerHalf() {
  return Container(
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(10),
    height: 400,
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Continue Watching",
            style: styleSocket.text2,
          ),
          SizedBox(height: 10), // Space between text and images
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/heist.jpg',
                      height: 150,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5), // Reduce space between image and text
                  Text(
                    "Money Heist",
                    style: styleSocket.text1,
                  ),
                ],
              ),
              
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/witcher.webp',
                      height: 150, // Increased to match Money Heist
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5), // Reduce space between image and text
                  Text(
                    "The Witcher",
                    style: styleSocket.text1,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("popular on netflix",style: styleSocket.text2,),
           SizedBox(height: 10), // Space between text and images
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/sq.jpg',
                      height: 150,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5), // Reduce space between image and text
                  Text(
                    "Squid game",
                    style: styleSocket.text1,
                  ),
                ],
              ),
              
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/pb.jpg',
                      height: 150, // Increased to match Money Heist
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5), // Reduce space between image and text
                  Text(
                    "Peaky Blinders",
                    style: styleSocket.text1,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
