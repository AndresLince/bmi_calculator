import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              'Your result:',
              style: ktitleTextStyle,
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Normal', style: kresultTextStyle,),
                    Text('18,3', style: kbmiTextStyle,),
                    Text('Your BMI is quite low, you should eat more!',
                      textAlign: TextAlign.center,
                      style: kbodyTextStyle,
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
