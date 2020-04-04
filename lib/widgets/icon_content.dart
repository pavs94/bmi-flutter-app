import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  GenderCard({@required this.gender, @required this.genderIcon});
  final String gender;
  final Icon genderIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        genderIcon,
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        )
      ],
    );
  }
}
