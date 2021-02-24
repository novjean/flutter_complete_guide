import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';

import 'package:flutter_complete_guide/question.dart';

// can also be written
// import './question.dart';

// void main() => runApp(MyApp());
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// the leading _ means that this class can only be used from this class
// turns class from public to private
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'Which city is the best?',
        'answers': ['Paris', 'Bombay', 'Toronto']
      },
    ];
    
    return MaterialApp(
      home: Scaffold(
        // home is the core widget
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'], //accessing the question for the index
            ),
            // spread operator doesn't add a list to a list, but we add the
            // values of a list to a list
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
