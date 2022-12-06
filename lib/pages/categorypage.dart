import 'package:flutter/material.dart';
import 'package:watcher_movie_app/widgets/bottomnavbarwid.dart';

class CategoryPage extends StatelessWidget {
  final categories1 = "Action";
  final categories2 = "Adventure";
  final categories3 = "Comedy";
  final categories4 = "Crime";
  final categories5 = "Drama";
  final categories6 = "Fantasy";
  final categories7 = "Horror";
  final categories8 = "Romance";
  final categories9 = "Sci-Fi";
  final categories10 = "Thriller";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          color: Colors.black87,
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
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                            ),
                            Container(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF292B37),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF292B37).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Backend HERE
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Action",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF292B37),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF292B37).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Adventure",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF292B37),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF292B37).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Comedy",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF292B37),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF292B37).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Crime",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF292B37),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF292B37).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Drama",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                            ),
                            Container(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF292B37),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF292B37).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Fantasy",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF292B37),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF292B37).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Horror",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF292B37),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF292B37).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Romance",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF292B37),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF292B37).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Sci-Fi",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 150,
                                height: 150,
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF292B37),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF292B37).withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      )
                                    ]),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Thriller",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
