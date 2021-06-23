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
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
        primaryColor: Color(0xFF5d5fee),
        scaffoldBackgroundColor: Color(0xFFf8f7fd),
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconTheme: IconThemeData(
            color: Color(0xFF010105),
          ),
        ),
        textTheme: TextTheme(
          headline4: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade900,
          ),
          bodyText2: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Color(0xFF5d5fee),
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: introViewRoute,
    );
  }
}
