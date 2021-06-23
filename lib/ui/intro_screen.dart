import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify_greenroom/routes/routes.dart';
import 'package:spotify_greenroom/utils/constants.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
          homeViewRoute, (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(),
      child: Scaffold(
        backgroundColor: gradientStartColor,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [gradientStartColor, gradientEndColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.5])),
          ),
          Positioned(
            bottom: 350,
            right: 100,
            child: Container(
              height: 40,
              child: Image.asset(
                Logo.introLogo["assetPath"],
                fit: BoxFit.fill,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
