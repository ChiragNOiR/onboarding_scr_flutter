// import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import '../../../widgets/mobile_swiper.dart';


// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({Key? key}) : super(key: key);

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   // var _controller;
//   // // PageController _controller = PageController();
//   // @override
//   // void initState() {
//   //   _controller = new PageController(
//   //     viewportFraction: 0.8,
//   //   );
//   //   super.initState();
//   // }

//   Widget build(BuildContext context) {
//     // List<Widget> iconList = [
//     //   Icon(
//     //     Icons.circle,
//     //     color: Colors.grey,
//     //     size: 10.0,
//     //   ),
//     //   Icon(
//     //     Icons.circle,
//     //     color: Colors.grey,
//     //     size: 10.0,
//     //   ),
//     //   Icon(
//     //     Icons.circle,
//     //     color: Colors.grey,
//     //     size: 10.0,
//     //   ),
//     // ];
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//         ),
//         body: Column(
//           children: [
//             // Button(
//             //     icon: Icons.shield_moon_rounded,
//             //     height: 36,
//             //     width: 36,
//             //     colors: Colors.transparent,
//             //     size: 35,
//             //     iconColor: Colors.white60,
//             //     onTap: () {}),
//             Mobile_Swiper(),
//             Text(
//               'Get Food Faster',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontFamily: GoogleFonts.dmSans().fontFamily,
//                   fontSize: 25,
//                   fontWeight: FontWeight.w600),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Text(
//               'Get up to 20,000+ food \n location close to you',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   fontFamily: GoogleFonts.dmSans().fontFamily,
//                   fontSize: 13,
//                   color: Colors.grey),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../../widgets/slider_layout_view.dart';



class OnboardingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: onBordingBody(),
    );
  }

  Widget onBordingBody() => Container(
        child: SliderLayoutView(),
      );
}