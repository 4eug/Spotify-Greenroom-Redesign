import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_greenroom/utils/ProfileColors.dart';

class Squircle extends StatelessWidget {
  const Squircle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random.secure();
    return Stack(children: [
      Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color:
              ProfileColors.values[random.nextInt(ProfileColors.values.length)],
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(
              "assets/images/${random.nextInt(12) + 1}.png",
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 1,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Icon(
            Icons.mic,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}
