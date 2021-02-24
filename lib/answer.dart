import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  // constructor
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}

//            RaisedButton(
//               child: Text('Answer 2'),
//               onPressed: () => print('Answer 2 chosen!'), //null would disable the button
//             ),
//             RaisedButton(
//               child: Text('Answer 3'),
//               onPressed: () {
//                 print('Answer 3 chosen!');
//               },
//             ),