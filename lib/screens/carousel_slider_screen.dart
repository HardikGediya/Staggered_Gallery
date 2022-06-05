import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pr3_media_booster_app/models/models.dart';

class CarouselSliderScreen extends StatefulWidget {
  const CarouselSliderScreen({Key? key}) : super(key: key);

  @override
  State<CarouselSliderScreen> createState() => _CarouselSliderScreenState();
}

class _CarouselSliderScreenState extends State<CarouselSliderScreen> {
  CarouselController carouselController = CarouselController();
  int initialSliderPage = 0;

  List sliders = [
    "apple",
    "banana",
    "cherry",
    "teti",
  ];

  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      backgroundColor: const Color(0xffA8A8A8),
      appBar: AppBar(
        title: Text("${gallery[args].pictureName}'s Photos"),
        backgroundColor: const Color(0xff018577),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  initialPage: initialSliderPage,
                  onPageChanged: (val, _) {
                    setState(() {
                      initialSliderPage = val;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  height: 300,
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.easeInOut,
                ),
                items: gallery[args].subPicture
                    .map(
                      (e) => Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage('assets/images/$e'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
