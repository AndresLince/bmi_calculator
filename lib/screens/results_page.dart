import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_buttom.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

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
                    Text(
                      resultText.toUpperCase(),
                      style: kresultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kbmiTextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kbodyTextStyle,
                    )
                  ],
                ),
              )),
          ButtomButton(
              text: 'RE - CALCULATE',
              onTap: () {
                Navigator.pushNamed(context, '/');
              })
        ],
      ),
    );
  }
}
