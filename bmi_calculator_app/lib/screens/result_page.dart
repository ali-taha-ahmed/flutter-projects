import 'package:bmi_calculator_app/constants.dart';
import 'package:bmi_calculator_app/components/our_widgets.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "your result",
                style: kLTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              ourChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kLResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultTextStyle,
                  ),
                  Text(
                    interpretation.toUpperCase(),
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: kBottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 16.0),
              color: kBottomCardColor,
              child: Center(
                  child: Text(
                "RE-CALCULATE",
                style: kLargeButtonTextStyle,
              )),
            ),
          ),
        ],
      )),
    );
  }
}
