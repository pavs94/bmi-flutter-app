import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'widgets/calculate_button.dart';

class Results extends StatelessWidget {
  Results(
      {@required this.bmiResults,
      @required this.resultsText,
      @required this.resultInterpretation});

  final String bmiResults;
  final String resultsText;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultsText.toString(),
                      style: kResultsTextStyle,
                    ),
                    Text(
                      bmiResults.toString(),
                      style: kBMITextStyle,
                    ),
                    Text(
                      resultInterpretation.toString(),
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              )),
          CalculateActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            cardChild: Text(
              'RE-CALCULATE',
              style: kBottomButtonText,
            ),
          ),
        ],
      ),
    );
  }
}
