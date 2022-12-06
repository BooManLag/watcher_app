import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/category");
                },
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextButton(
                    child: Text("Action"),
                    style: TextButton.styleFrom(
                      primary: Colors.black87,
                      alignment: Alignment.center,
                      textStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {}),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextButton(
                    child: Text("Adventure"),
                    style: TextButton.styleFrom(
                      primary: Colors.black87,
                      alignment: Alignment.center,
                      textStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {}),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextButton(
                    child: Text("Comedy"),
                    style: TextButton.styleFrom(
                      primary: Colors.black87,
                      alignment: Alignment.center,
                      textStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {}),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextButton(
                    child: Text("Drama"),
                    style: TextButton.styleFrom(
                      primary: Colors.black87,
                      alignment: Alignment.center,
                      textStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {}),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextButton(
                    child: Text("Horror"),
                    style: TextButton.styleFrom(
                      primary: Colors.black87,
                      alignment: Alignment.center,
                      textStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
