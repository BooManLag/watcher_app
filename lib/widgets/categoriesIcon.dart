import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  categories(
      {required this.catIcon,
      required this.catText,
      required this.catWidthContainer,
      required this.catHeightContainer,
      required this.catTextFont});

  final ImageProvider<Object> catIcon;
  final String catText;
  final double catWidthContainer;
  final double catHeightContainer;
  final double catTextFont;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: catWidthContainer,
      height: catHeightContainer,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image(
                image: catIcon,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Expanded(
              flex: 1,
              child: Text(
                catText,
                style: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontFamily: 'Arimo',
                  fontSize: catTextFont,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
