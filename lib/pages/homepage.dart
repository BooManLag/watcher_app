import 'package:flutter/material.dart';
import 'package:watcher_movie_app/widgets/bottomnavbarwid.dart';
import 'package:watcher_movie_app/widgets/suggestedwid.dart';
import 'package:watcher_movie_app/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:watcher_movie_app/widgets/categoriesWidget.dart';
import 'package:watcher_movie_app/widgets/searchBar.dart';
import 'package:watcher_movie_app/backend/load.dart';

class HomePage extends StatefulWidget {
  static const id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth = FirebaseAuth.instance;
  User? loggedInUser;
  List suggestedMovies = [];
  ScrollController _controller = new ScrollController();

  void initState() {
    super.initState();
    getCurrentUser();
    setList();
  }

  void setList() async {
    Load load = Load();
    List retrievedMovies = await load.getSuggestedMovies();
    setState(() {
      suggestedMovies = retrievedMovies;
    });
  }

  void getCurrentUser() async {
    final user = await _auth.currentUser;
    if (user != null) {
      try {
        loggedInUser = user;
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
                            child: Image(
                              image: AssetImage('assets/images/homepage.png'),
                              width: 140.0,
                            ),
                          ),
                        ],
                      ),

                      //SEARCH BAR

                      SearchBar(),

                      // CATEGORIES TEXT

                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Categories",
                                  style: kWhiteText,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/category");
                                  },
                                  child: Text(
                                    'See All',
                                    style: TextStyle(
                                      color: Color(0xFFA6A6A6),
                                      fontFamily: 'Arimo',
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // CATEGORIES BUTTON

                      categoriesHomepage(),

                      SizedBox(height: 25),

                      // SUGGESTED TEXT

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Suggested",
                            style: kWhiteText,
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.only(left: 110.0, right: 110.0),
                        child: Container(
                            child: ListView.builder(
                                physics: const AlwaysScrollableScrollPhysics(),
                                controller: _controller,
                                shrinkWrap: true,
                                itemCount: suggestedMovies.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () async {},
                                    child: Container(
                                      width: 190,
                                      height: 250,
                                      margin: EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF292B37)
                                                .withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 4,
                                          ),
                                        ],
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              'https://image.tmdb.org/t/p/w500' +
                                                  suggestedMovies[index]
                                                      ['poster_path']),
                                        ),
                                      ),
                                    ),
                                  );
                                })),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
