import 'package:flutter/material.dart';
import 'package:watcher_movie_app/constants/constants.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: kMainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              //Navigate to Home page
              Navigator.pushNamed(context, "/home");
            },
            child: ImageIcon(
              AssetImage('assets/images/homeTab.png'),
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              //Navigate to categories page
              Navigator.pushNamed(context, "/movies");
            },
            child: ImageIcon(
              AssetImage('assets/images/movieTab.png'),
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/bookmarked");
            },
            child: ImageIcon(
              AssetImage('assets/images/listTab.png'),
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/profile");
            },
            child: ImageIcon(
              AssetImage('assets/images/accountTab.png'),
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
