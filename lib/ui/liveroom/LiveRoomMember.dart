import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_greenroom/utils/ThemeColor.dart';

class LiveRoomMember extends StatelessWidget {
  final bool isMuted;
  final bool isNewMember;
  final String name;
  final Color color;
  const LiveRoomMember({
    Key key,
    this.name,
    this.color,
    this.isMuted = true,
    this.isNewMember = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random.secure();
    final theme = Theme.of(context);
    return Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 4 / 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 1 / 1,
                  child: CircleAvatar(
                    backgroundColor: color ?? Colors.grey.shade100,
                    backgroundImage: AssetImage(
                        "assets/images/${random.nextInt(12) + 1}.png"),
                  ),
                ),
                if (isMuted)
                  Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: ThemeColor.withBrightness(
                        context: context,
                        color: Colors.red,
                        darkColor: theme.backgroundColor,
                      ),
                      child: Icon(
                        CupertinoIcons.mic_slash,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 3),
            Text(
              "$name",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
