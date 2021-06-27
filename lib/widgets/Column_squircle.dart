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
        Row(
          children: [
            Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: sharecolor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.chart_bar_fill,
                    size: 10,
                    color: Colors.greenAccent[700],
                  ),
                  SizedBox(width: 3),
                  Text(
                    "LIVE",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: sharecolor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 3),
                  Text(
                    "💙 FlutterDevelopers",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
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
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.greenAccent[700],
          ),
        ),
        SizedBox(height: 10),
        Text(
          "👋Welcome to Greenroom!",
          style: TextStyle(
            fontSize: 25,
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
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: sharecolor,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            'Join room',
            style: TextStyle(fontSize: 14),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    fullscreenDialog: true, builder: (_) => LiveRoom()));
          },
        )
      ],
    );
  }
}
