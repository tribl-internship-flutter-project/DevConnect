import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

class ThirdHomeScreen extends StatefulWidget {
  // This widget is the root of your application- All other Widgets will be nested inside it.
  @override
  State<StatefulWidget> createState() {
    // The state is returned here
    return _MyAppState();
  }
}

class _MyAppState extends State<ThirdHomeScreen> {
  // putting 'const' before the value means you cannot modify/add to this list,its constant.
  final _questions = const [
    {
      'questionText': 'Inside which HTML element do we put the JavaScript?',
      'answers': [
        {'text': 'Script', 'score': 5},
        {'text': 'Js', 'score': 0},
        {'text': 'Scripting', 'score': 0},
        {'text': 'Html', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which of the following is not a reserved word in JavaScript?',
      'answers': [
        {'text': ' interface', 'score': 0},
        {'text': 'throws', 'score': 0},
        {'text': 'program', 'score': 5},
        {'text': 'short', 'score': 0},
      ],
    },
    {
      'questionText': 'The external JavaScript file must contain <script> tag?',
      'answers': [
        {'text': 'True', 'score': 0},
        {'text': 'False', 'score': 5},
        {'text': 'MayBe', 'score': 0},
        {'text': 'I Guess', 'score': 0},
      ]
    },
    {
      'questionText': 'JavaScript is what type of language.?',
      'answers': [
        {'text': 'compiled', 'score': 0},
        {'text': 'Interpreted', 'score': 5},
        {'text': 'MayBe', 'score': 0},
        {'text': 'I Guess', 'score': 0},
      ],
    },
    {
      'questionText': 'Which was the first browser to support JavaScript?',
      'answers': [
        {'text': ' Mozilla Firefox', 'score': 0},
        {'text': 'Netscape', 'score': 5},
        {'text': 'Google Chrome', 'score': 0},
        {'text': 'IE', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the method in JavaScript used to remove the whitespace?',
      'answers': [
        {'text': 'strip()', 'score': 0},
        {'text': 'stripped()', 'score': 0},
        {'text': 'trimmed()', 'score': 0},
        {'text': 'trim()', 'score': 5},
      ],
    },
  ];

  // questionNumber & answerQuestion are the pties and mtds of this class(_MyAppState)
  // hence we also make them private

  var _questionNumber = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionNumber = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    // setState calls the build method each time the _questionNumber changes, and update the particular widget affected
    setState(() {
      _questionNumber++;
    });
    if (_questionNumber < _questions.length) {
      print('Continue');
    } else {
      print('No More questions!');
    }

    print(_questionNumber);
  }

// The build mtd belons to the state of our app
  @override //overrides the build mtd that comes frm StatelessWidget so that we can write our own below
  // build mtd will be called by flutter to return a widget, hence Widget at the front of the build mtd
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Test Your Skills'),
        backgroundColor: Colors.amber,
      ),
      // Column is to lay things out vertically
      body: _questionNumber < _questions.length
          ? Quiz(
              questionNumber: _questionNumber,
              answerQuestion: _answerQuestion,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
