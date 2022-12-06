import 'package:flutter/material.dart';
import 'package:watcher_movie_app/widgets/bottomnavbarwid.dart';
import 'package:watcher_movie_app/widgets/suggestedwid.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 10,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      Text(
                        "Watcher logo",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      PopupMenuButton<String>(
                        icon: Icon(Icons.menu),
                        onSelected: (String result) {
                          switch (result) {
                            case 'Action':
                              print('Action'); //backend here prolly
                              break;
                            case 'Adventure':
                              print('Adventure'); //backend here prolly
                              break;
                            case 'Comedy':
                              print('Comedy'); //backend here prolly
                              break;
                            case 'Crime':
                              print('Crime'); //backend here prolly
                              break;
                            case 'Comedy':
                              print('Comedy'); //backend here prolly
                              break;
                            case 'Fantasy':
                              print('Fantasy'); //backend here prolly
                              break;
                            case 'Horror':
                              print('Horror'); //backend here prolly
                              break;
                            case 'Romance':
                              print('Romance'); //backend here prolly
                              break;
                            case 'Sci-Fi':
                              print('Sci-Fi'); //backend here prolly
                              break;
                            case 'Thriller':
                              print('Thriller'); //backend here prolly
                              break;
                            default:
                          }
                        },
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'Action',
                            child: Text('Action'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Adventure',
                            child: Text('Adventure'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Comedy',
                            child: Text('Comedy'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Crime',
                            child: Text('Crime'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Drama',
                            child: Text('Drama'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Fantasy',
                            child: Text('Fantasy'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Horror',
                            child: Text('Horror'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Romance',
                            child: Text('Romance'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Sci-Fi',
                            child: Text('Sci-Fi'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Thriller',
                            child: Text('Thriller'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(left: 5),
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Suggested(),
          ],
        )),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
