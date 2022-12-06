import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:watcher_movie_app/backend/load.dart';

class Suggested extends StatefulWidget {
  @override
  _SuggestedWidgetState createState() => _SuggestedWidgetState();
}

class _SuggestedWidgetState extends State<Suggested> {
  List suggestedMovies = [];

  void initState() {
    super.initState();
    setList();
  }

  void setList() async {
    print('TEST');
    Load load = Load();
    suggestedMovies = await load.getSuggestedMovies();
    print(suggestedMovies);
  }

  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
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
                        color: Color(0xFF292B37).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                      ),
                    ],
                    image: DecorationImage(
                      image: NetworkImage('https//image.tmdb.org/t/p/w500' +
                          suggestedMovies[index]['poster_path']),
                    ),
                  ),
                ),
              );
            }));
  }
}
