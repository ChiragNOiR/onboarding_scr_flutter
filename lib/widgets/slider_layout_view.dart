import 'package:build_one/ui/pages/Login%20Page/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/models/slider.dart';
import 'slide_dots.dart';
import 'slide_item.dart';

class SliderLayoutView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
  );

  @override
  void dispose() { // removing the object from the tree
    super.dispose();
    _pageController.dispose();
  }
  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) => topSliderLayout();
  int currentIndex = 0;
  Widget topSliderLayout() => Container(
        child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    style: flatButtonStyle,
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontFamily: GoogleFonts.dmSans().fontFamily,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: sliderArrayList.length,
                  itemBuilder: (ctx, i) => SlideItem(i),
                ),
                SizedBox(height: 20),
                Container(
                  // alignment: AlignmentDirectional.bottomCenter,
                  margin: EdgeInsets.only(bottom: 90.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < sliderArrayList.length; i++)
                        if (i == _currentPage)
                          SlideDots(true)
                        else
                          SlideDots(false)
                    ],
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  fit: StackFit.expand,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                        onTap: () {
                          if (_currentPage == sliderArrayList.length - 1) {
                            _onPageChanged(0);
                            _pageController.jumpToPage(0);
                          } else {
                            _onPageChanged(_currentPage + 1);
                            _pageController.jumpToPage(_currentPage);
                          }
                        },
                        child: Container(
                          // width: MediaQuery.of(context).size.width * 0.65,
                          margin: EdgeInsets.only(left: 80.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(Icons.arrow_forward, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: InkWell(
                        onTap: () {
                          if (_currentPage == 0) {
                            // _onPageChanged(0);
                            // _pageController.jumpToPage(0);
                          } else {
                            _onPageChanged(_currentPage - 1);
                            _pageController.jumpToPage(_currentPage);
                          }
                        },
                        child: Container(
                          // padding: EdgeInsets.only(right: 15.0, bottom: 15.0),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      );
}
