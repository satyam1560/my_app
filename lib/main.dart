import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': "Which among the following works faster ?",
      'answer': ['RAM', 'Cache', 'Registor', 'ROM'],
    },
    {
      'questionText': "On a computer keyboard some keys are given twice ?",
      'answer': ['Alt Key', 'Shift Key', 'Ctrl Key', 'Tab Key'],
    },
    {
      'questionText':
          "Which among the following correctly defines the term (Virtual Memory) ?",
      'answer': [
        'Server memory',
        'Random Access Memory',
        'Flash drive',
        'Secondary storage memory/hard disk'
      ],
    },
    {
      'questionText': "The 'P' in CPU stands for … ?",
      'answer': ['Process', 'Program', 'Plan', 'Performance'],
    },
    {
      'questionText': "ISP stands for ?",
      'answer': [
        'Integrated Service Provider',
        'Internet Survey Period',
        'Internet Service Provider',
        ' Internet Security Protocol'
      ],
    },
    {
      'questionText': "Internet Explorer is a ?",
      'answer': [
        'News Reader',
        'Graphing Package',
        'Web Browser',
        ' Any person browsing the net'
      ],
    },
  ];
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _question.length) {
      print('you hame more question');
    } else {
      print('no more ques');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz.."),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion, //assigning values
                questionIndex: _questionIndex, //assigning values
                question: _question,
              )
            : Result(_resetQuiz),
      ),
    );
  }
}
