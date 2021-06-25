import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_greenroom/ui/liveroom/LiveRoom.dart';
import 'package:spotify_greenroom/utils/constants.dart';
import 'package:spotify_greenroom/widgets/Squircle_shape.dart';

class ColSquircle extends StatelessWidget {
  const ColSquircle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
            Squircle(),
            SizedBox(width: 5),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "First Room!",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.greenAccent[700],
          ),
        ),
        SizedBox(height: 10),
        Text(
          "👋Welcome to Greenroom!",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Pete Benson, Kaeton Sanchez, Daniel Greer & 120 others are here",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 15),
        new InputChip(
          backgroundColor: gradientStartColor,
          label: new Text(
            "Join room",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (_) => LiveRoom(),
              ),
            );
          },
        )
      ],
    );
  }
}
