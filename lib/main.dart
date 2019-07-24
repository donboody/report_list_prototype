import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'report_file_screen.dart';
import 'package:splashscreen/splashscreen.dart';

//run the app
void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
        navigateAfterSeconds: new MaterialApp(routes: <String, WidgetBuilder>{
          //All available pages
          '/Home': (BuildContext context) => new Home(),
          '/ReportFileScreen': (BuildContext context) => new ReportFileScreen()
        }, home: new Home()),
      image: Image.asset('images/mueller.png'),
      photoSize: 180.0,
      loaderColor: Colors.red[900],
      title: Text('Happy Monday!\n\nIt\'s great to have you back.\nLet\'s do it!',
      style: new TextStyle(
        fontFamily: 'Raleway',
        fontWeight: FontWeight.bold,
        color: Colors.grey.shade600,
        fontSize: 16.0
      ),
      textAlign: TextAlign.center,),
      styleTextUnderTheLoader: new TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.normal,
      color: Colors.grey.shade600),
    );
  }
}
