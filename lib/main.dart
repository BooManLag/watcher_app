import 'package:flutter/material.dart';
import 'package:watcher_movie_app/pages/categorypage.dart';
import 'package:watcher_movie_app/pages/homepage.dart';
import 'package:watcher_movie_app/pages/moviepage.dart';
import 'package:watcher_movie_app/pages/splash.pages.dart';
import 'package:watcher_movie_app/widgets/categorieswid.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:watcher_movie_app/pages/register.dart';
import 'package:watcher_movie_app/pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        HomePage.id: (context) => HomePage(),
        "/category": (context) => CategoryPage(),
        "/movies": (context) => MoviePage(),
        Register.id: (context) => Register(),
        Login.id: (context) => Login(),
      },
    );
  }
}
