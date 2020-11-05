import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditationapp/appScreens/home.dart';
import 'package:meditationapp/appScreens/mentalTraining.dart';
import 'package:meditationapp/appScreens/popularLessons.dart';
import 'package:meditationapp/appScreens/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MeditationApp());
}

class MeditationApp extends StatefulWidget {
  MeditationApp({Key key}) : super(key: key);

  @override
  _MeditationAppState createState() => _MeditationAppState();
}

class _MeditationAppState extends State<MeditationApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meditation App",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (_) => Home(),
        "/popular": (_) => PopularLessons(),
        "/mentalTraining": (_) => MentalTraining(),
        "/profile": (_) => Profile()
      },
    );
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }
}
