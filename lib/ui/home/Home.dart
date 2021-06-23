import 'package:flutter/material.dart';
import 'package:spotify_greenroom/utils/constants.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientStartColor,
      extendBody: true,
      appBar: AppBar(
        centerTitle: false,
        title: Image.asset(
          Logo.introLogo["assetPath"],
          height: 90,
          width: 180,
          fit: BoxFit.contain,
        ),
        actions: [
          SizedBox(width: 5),
          IconButton(
            icon: Icon(
              Icons.calendar_today_outlined,
              size: 25,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          SizedBox(width: 20),
        ],
        elevation: 200,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [gradientStartColor, gradientEndColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.5])),
          )
        ],
      ),
    );
  }
}
