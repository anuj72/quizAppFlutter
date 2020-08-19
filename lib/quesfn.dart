import 'package:flutter/material.dart';

class quesfn extends StatelessWidget {
  String quesStr;
  quesfn(this.quesStr);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:EdgeInsets.all(20) ,
      child: Text(
        quesStr,
        style: TextStyle(color: Colors.deepOrange, fontSize: 30),
        textAlign: TextAlign.center,
      ),

    );
  }
}
