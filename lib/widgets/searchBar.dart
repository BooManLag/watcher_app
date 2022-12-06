import 'package:flutter/material.dart';
import '../constants/constants.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xFF3D4957), borderRadius: BorderRadius.circular(18)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            color: Color(0xFFAEAFAF),
            size: 35,
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(left: 5),
            child: TextFormField(
              style: kSearchStyle,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: kSearchStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
