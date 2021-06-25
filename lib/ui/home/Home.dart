import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_greenroom/ui/home/HomeRoom.dart';
import 'package:spotify_greenroom/utils/constants.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final theme = Theme.of(context);
    // ignore: unused_local_variable
    final topics = [
      "🎨 Design",
      "🌍 Flutter",
      "🎯 Figma",
      "👀 Clone",
      "⛱ Saturday",
    ];
    final list = [
      HomeRoomItem(),
      HomeRoomItem(),
      HomeRoomItem(),
    ];
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
        elevation: 0,
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(60),
        //   child: SizedBox(
        //     height: 50,
        //     child: ListView.separated(
        //       scrollDirection: Axis.horizontal,
        //       itemCount: topics.length,
        //       padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
        //       separatorBuilder: (_, __) => SizedBox(width: 10),
        //       itemBuilder: (context, index) {
        //         final color = ProfileColors.values[
        //             Random.secure().nextInt(ProfileColors.values.length - 1) +
        //                 1];
        //         return InputChip(
        //           backgroundColor: ThemeColor.withBrightness(
        //             context: context,
        //             color: color,
        //             darkColor: color.withOpacity(0.15),
        //           ),
        //           label: Text(
        //             "${topics[index]}",
        //             style: TextStyle(
        //               height: 1.2,
        //               color: theme.textTheme.bodyText2.color,
        //             ),
        //           ),
        //           onPressed: () {},
        //         );
        //       },
        //     ),
        //   ),
        // ),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [gradientStartColor, gradientEndColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.5])),
          child: ListView.separated(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 200),
            separatorBuilder: (_, __) => SizedBox(height: 10),
            itemCount: list.length,
            itemBuilder: (context, index) {
              return list[index];
            },
          ),
        ),
      ]),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: gradientEndColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: SafeArea(
            top: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  color: Colors.white,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.person),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
