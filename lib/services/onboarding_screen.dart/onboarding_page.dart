import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_services_app/routers/navigator.dart';
import 'package:pet_services_app/routers/routers.dart';
import 'package:pet_services_app/utilities/theme/colors/colors.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 9.0,
      width: isActive ? 9.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.amber[600] : Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Colors.white,
                //  Colors.white10,
                Colors.white38,
                Colors.white60,
                Colors.white70,
              ],
            ),
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 720.0,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.grey, Colors.white],
                                  ),
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboarding4.jpg',
                                  ),
                                  color: Colors.white,
                                  colorBlendMode: BlendMode.dstIn,
                                  fit: BoxFit.cover,
                                  height: 560.0,
                                  //  width: 700,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 20,
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide
                                        .none, // Remove the button's border
                                  ),
                                  onPressed: () => print('Skip'),
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 532,
                              child: Container(
                                height: 30,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white38,
                                      Colors.white10,
                                      Colors.white24,
                                      Colors.white30
                                    ],
                                  ),
                                ),
                                child: Text(
                                  'Share useful tips',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 209, 71),
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 580,
                              left: 110,
                              child: Text(
                                'Give advice to help you \ntake care of your pet better',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        // 2 onboarding
                        Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.grey, Colors.white],
                                  ),
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboarding7.jpeg',
                                  ),
                                  color: Colors.white,
                                  colorBlendMode: BlendMode.dstIn,
                                  fit: BoxFit.cover,
                                  height: 560.0,
                                  //  width: 700,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 20,
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide
                                        .none, // Remove the button's border
                                  ),
                                  onPressed: () => print('Skip'),
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 532,
                              child: Container(
                                height: 65,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white38,
                                      Colors.white10,
                                      Colors.white24,
                                      Colors.white30
                                    ],
                                  ),
                                ),
                                child: Text(
                                  'Find and buy attractive \nitems',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 255, 209, 71),
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 595,
                              left: 60,
                              child: Text(
                                'Will help you order the needed items \nas soon as you are at home',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),

                        Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.grey, Colors.white],
                                  ),
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/onboarding3.jpg',
                                  ),
                                  color: Colors.white,
                                  colorBlendMode: BlendMode.dstIn,
                                  fit: BoxFit.cover,
                                  height: 560.0,
                                  //  width: 700,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 20,
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide
                                        .none, // Remove the button's border
                                  ),
                                  onPressed: () => print('Skip'),
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 532,
                              child: Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white38,
                                      Colors.white10,
                                      Colors.white24,
                                      Colors.white
                                    ],
                                  ),
                                ),
                                child: Text(
                                  'Booking\n is easy and simple',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 220, 168, 12),
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 25),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 595,
                              left: 50,
                              child: Text(
                                'Easy booking doesn\'t cost you much time ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  _currentPage != _numPages - 1
                      ? Expanded(
                          child: Align(
                            alignment: FractionalOffset.bottomRight,
                            child: OutlinedButton(
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.ease,
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  // Text(
                                  //   'Next',
                                  //   style: TextStyle(
                                  //     color: Colors.black,
                                  //     fontSize: 22.0,
                                  //   ),
                                  // ),
                                  // SizedBox(width: 10.0),
                                  // Icon(
                                  //   Icons.arrow_forward,
                                  //   color: Colors.white,
                                  //   size: 30.0,
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Text(''),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              color: Colors.white,
              child: Container(
                height: 50.0,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.amber[600],
                    borderRadius: BorderRadius.circular(15)),
                child: GestureDetector(
                  onTap: () {
                     CustomNavigator.push(Routes.login);
                  },
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        'Get started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
