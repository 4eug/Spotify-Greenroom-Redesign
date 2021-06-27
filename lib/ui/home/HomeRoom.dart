import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_greenroom/utils/constants.dart';
import 'package:spotify_greenroom/widgets/Column_squircle.dart';

class HomeRoomItem extends StatelessWidget {
  const HomeRoomItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.fromLTRB(20, 20, 20, 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [gradientStartColor, greycolor],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.9]),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [ColSquircle()],
      ),
    );
  }
}
