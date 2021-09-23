import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_greenroom/ui/liveroom/LiveRoomMember.dart';
import 'package:spotify_greenroom/utils/ProfileColors.dart';
import 'package:spotify_greenroom/utils/constants.dart';

class LiveRoom extends StatelessWidget {
  const LiveRoom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final members = [
      LiveRoomMember(
        name: "Ivan",
        isMuted: false,
        color: ProfileColors.black,
      ),
      LiveRoomMember(
        name: "Sharon",
        color: ProfileColors.amber,
      ),
      LiveRoomMember(
        name: "Rick",
        color: ProfileColors.white,
      ),
      LiveRoomMember(
        name: "Jude",
        color: ProfileColors.yellow,
      ),
      LiveRoomMember(
        name: "Liz",
        color: ProfileColors.green,
      ),
      LiveRoomMember(
        name: "Sandy",
        color: ProfileColors.red,
      ),
      LiveRoomMember(
        name: "Sarah",
        isNewMember: true,
        color: ProfileColors.blue,
      ),
      LiveRoomMember(
        name: "Bethel",
        isNewMember: true,
        color: ProfileColors.white,
      ),
      LiveRoomMember(
        name: "Sam",
        isNewMember: true,
        color: ProfileColors.purple,
      ),
      LiveRoomMember(
        name: "Tommy",
        isNewMember: true,
        color: ProfileColors.yellow,
      ),
      LiveRoomMember(
        name: "John",
        isNewMember: true,
        color: ProfileColors.green,
      ),
      LiveRoomMember(
        name: "Mike",
        isNewMember: true,
        color: ProfileColors.purple,
      ),
    ];
    return Scaffold(
      backgroundColor: gradientStartColor,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          Logo.introLogo["assetPath"],
          height: 90,
          width: 180,
          fit: BoxFit.contain,
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Icon(CupertinoIcons.chevron_down),
            color: Colors.white,
            onPressed: () {
              Navigator.maybePop(context);
            },
          ),
        ),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [gradientStartColor, gradientEndColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.5])),
          child: Column(
            children: [
              Text(
                "👋Welcome to Greenroom!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                "First Room!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.greenAccent[700],
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(12),
                  itemCount: members.length.round(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1 / 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return members[index];
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
                decoration: BoxDecoration(
                  color: gradientEndColor,
                  borderRadius: BorderRadius.only(),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 20),
                        InkWell(
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            child: Icon(
                              CupertinoIcons.hand_raised,
                              size: 50,
                            ),
                          ),
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: sharecolor,
                            foregroundColor: Colors.white,
                            child: Icon(
                              Icons.share,
                              size: 25,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Positioned(
                      right: 10,
                      left: 10,
                      child: Container(
                        width: 100,
                        child: Text(
                          "Ask To Speak",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
