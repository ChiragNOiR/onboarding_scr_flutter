import 'package:flutter/material.dart';

import '../data/models/slider.dart';

class SlideItem extends StatelessWidget {
  final int index;
  const SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: size.width * 1.3,
          width: size.height * 1.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(sliderArrayList[index].sliderImageUrl))),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          sliderArrayList[index].sliderHeading,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.5,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              sliderArrayList[index].sliderSubHeading,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5,
                fontSize: 12.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
