import 'package:flutter/material.dart';

const double bottomContainerHeight = 80;
const primaryColor = 0xFF1D1E33;
const activeCardColor = Color(primaryColor);
const footerColor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: activeCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: activeCardColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: activeCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColor),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(footerColor),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        )
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  ReusableCard({
    required this.colour
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
