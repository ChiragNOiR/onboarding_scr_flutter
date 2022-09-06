import 'package:flutter/material.dart';

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider(this.sliderImageUrl, this.sliderHeading, this.sliderSubHeading);
}

final sliderArrayList = [
//   Slider(sliderImageUrl: 'assets/images/iphone.png', sliderHeading: "GET FOOD FASTER", sliderSubHeading: "Lorem"),
//   Slider(sliderImageUrl: 'assets/images/iphone.png', sliderHeading: "XYZ", sliderSubHeading: "Lorem"),
//   Slider(sliderImageUrl: 'assets/images/iphone.png', sliderHeading: "XYZ", sliderSubHeading: "Lorem"),
Slider('lib/assets/images/Phone Shape.png', 'Get Food Faster', 'Browse up to 20,000+ food \n locations close to you.'),
Slider('lib/assets/images/Phone Shape.png', 'Super Speed Delivery', 'Guranteed under 30 minutes \n from our store to your doorsteps.'),
Slider('lib/assets/images/Phone Shape.png', 'Variety Options', 'Delicious feasts available \n select and add it to cart'),
 ];