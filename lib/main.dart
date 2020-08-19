import 'package:flutter/material.dart';
import './quesfn.dart';
import './answer.dart';

main() {
  runApp(myAppname());
}

class myAppname extends StatefulWidget {
  @override
  _myAppnameState createState() => _myAppnameState();
}

class _myAppnameState extends State<myAppname> {
  var init = 0;

  var ques = ["this is me", "whats is age", "what is you"];
  var jsonMap = [
    {
      'quesText': 'what\'s is colour',
      'ansText': ['black', 'red', 'green']
    },
    {
      'quesText': 'what\'s is name',
      'ansText': ['anuj', 'jayant', 'nisha']
    },
    {
      'quesText': 'what\'s is age',
      'ansText': ['21year', '22year', '23year']
    },
  ];

  myBtnClick() {
    setState(() {
        init = init + 1;
      });
      print(init);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: (Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: init<jsonMap.length? Column(
        children: [
          quesfn(jsonMap[init]['quesText']),
          Text(jsonMap[init]['quesText']),
          answer("hello button", myBtnClick),
          ...(jsonMap[init]['ansText'] as List<String>).map((ques) {
            return answer(ques, myBtnClick);
          }).toList()
        ],
      ):Center(child: Text("you did it!"),),
    )));
  }
}

