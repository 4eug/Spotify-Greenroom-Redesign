import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotify_greenroom/routes/routes.dart';
import 'package:spotify_greenroom/ui/intro_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // ignore: unused_local_variable
  final Map<String, dynamic> arguments = settings.arguments;
  switch (settings.name) {
    case introViewRoute:
      return PageTransition(
        child: IntroScreen(),
        type: PageTransitionType.fade,
      );

    // case homeViewRoute:
    //   return PageTransition(
    //     child: HomeScreen(),
    //     type: PageTransitionType.fade,
    //   );

    // case testViewRoute:
    //   return PageTransition(
    //     child: TestScreen(),
    //     type: PageTransitionType.fade,
    //   );

    default:
      return PageTransition(
        child: IntroScreen(),
        type: PageTransitionType.fade,
      );
  }
}
