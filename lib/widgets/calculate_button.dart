import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CalculateActionButton extends StatelessWidget {
  CalculateActionButton({@required this.onPressed, @required this.cardChild});
  final Widget cardChild;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: cardChild,
      onPressed: onPressed,
      shape: ContinuousRectangleBorder(),
      fillColor: kPinkColor,
      constraints: BoxConstraints.tightFor(height: 85.0),
      elevation: 0.0,
    );
  }
}
