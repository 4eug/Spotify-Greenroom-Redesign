import 'package:flutter/material.dart';
import 'package:spotify_greenroom/routes/router.dart';
import 'package:spotify_greenroom/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Spotify Greenroom",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
        ),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: introViewRoute,
    );
  }
}
