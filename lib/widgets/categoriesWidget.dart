import 'package:flutter/material.dart';
import '../widgets/categoriesIcon.dart';
import '../widgets/reusableButton.dart';

class categoriesHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0, left: 10.0),
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        runSpacing: 20.0,
        children: [
          ReusableButton(
            cardChild: categories(
              catWidthContainer: 65.0,
              catHeightContainer: 66.0,
              catTextFont: 11,
              catIcon: AssetImage('assets/images/action.png'),
              catText: 'Action',
            ),
            onPress: () {},
          ),
          ReusableButton(
            cardChild: categories(
              catWidthContainer: 65.0,
              catHeightContainer: 66.0,
              catTextFont: 11,
              catIcon: AssetImage('assets/images/romance.png'),
              catText: 'Romance',
            ),
            onPress: () {},
          ),
          ReusableButton(
            cardChild: categories(
              catWidthContainer: 65.0,
              catHeightContainer: 66.0,
              catTextFont: 11,
              catIcon: AssetImage('assets/images/comedy.png'),
              catText: 'Comedy',
            ),
            onPress: () {},
          ),
          ReusableButton(
            cardChild: categories(
              catWidthContainer: 65.0,
              catHeightContainer: 66.0,
              catTextFont: 11,
              catIcon: AssetImage('assets/images/drama.png'),
              catText: 'Drama',
            ),
            onPress: () {},
          ),
          ReusableButton(
            cardChild: categories(
              catWidthContainer: 65.0,
              catHeightContainer: 66.0,
              catTextFont: 11,
              catIcon: AssetImage('assets/images/horror.png'),
              catText: 'Horror',
            ),
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
