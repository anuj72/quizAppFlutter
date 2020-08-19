import 'package:flutter/material.dart';
class answer extends StatelessWidget {
  final Function myclickfn;
  final String ans;
  var init=0;
  answer(this.ans,this.myclickfn);

  @override
  Widget build(BuildContext context) {

    return RaisedButton(onPressed: myclickfn,child: Text(ans,style:TextStyle(color: Colors.white),),color: Colors.blue,shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(color: Colors.white)
    ),);
  }
}
