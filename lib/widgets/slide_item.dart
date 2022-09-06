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
        Stack(
          children: [

            Container(
              height: size.width * 1.6,
              width: size.height * 1.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(sliderArrayList[index].sliderImageUrl))),
            ),
          ],
        ),
        const SizedBox(
          height: 30.0,
        ),

      ],
    );
  }
}
