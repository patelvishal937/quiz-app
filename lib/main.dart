// import 'package:flutter/material.dart';
// import 'question.dart';

// void main() {
//   runApp(const quiz());
// }

// class quiz extends StatefulWidget {
//   const quiz({super.key});

//   @override
//   State<quiz> createState() => _quizState();
// }

// class _quizState extends State<quiz> {
//   @override
//   List<IconButton> scorekeeper = [];
//   // List<String> questions = [
//   //   'You can lead a cow down stairs but not up stairs',
//   //   'approximately one quater of human bones are in the feet',
//   //   'A slug\'s blood is green',
//   //   'hevil chutiya hai',
//   //   'hevil ke dil ke total 4 dil hai',
//   //   'hevil masum hai'
//   //       'h'
//   // ];
//   List<bool> answer = [false, true, true, true, true, false];
//   List<question> Questionbank = [
//       question(q: 'You can lead a cow down stairs but not up stairs', a: false),

//       question(q: 'You can lead a cow down stairs but not up stairs', a: false);
//   ];

//   int question_number = 0;
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Quiz App'),
//         ),
//         backgroundColor: Colors.black26,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 flex: 5,
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: TextButton(
//                     onPressed: () {
//                       setState(() {});
//                     },
//                     child: Text(
//                       questions[question_number],
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.lightGreen,
//                   ),
//                   onPressed: () {
//                     bool correct_answer = answer[question_number];
//                     if (correct_answer == true) {
//                       print('answer is correct');
//                       scorekeeper.add(
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.check,
//                             color: Colors.green,
//                           ),
//                         ),
//                       );
//                     } else {
//                       print('answer is wrong');
//                       scorekeeper.add(
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.close,
//                             color: Colors.red,
//                           ),
//                         ),
//                       );
//                     }
//                     setState(
//                       () {
//                         question_number = question_number + 1;
//                       },
//                     );
//                   },
//                   child: Text('Ture'),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.red,
//                   ),
//                   onPressed: () {
//                     bool correct_answer = answer[question_number];
//                     if (correct_answer == false) {
//                       print('answer is correct');
//                       scorekeeper.add(
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.check,
//                             color: Colors.green,
//                           ),
//                         ),
//                       );
//                     } else {
//                       print('answer is wrong');
//                       scorekeeper.add(
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.close,
//                             color: Colors.red,
//                           ),
//                         ),
//                       );
//                     }
//                     setState(
//                       () {
//                         question_number = question_number + 1;
//                       },
//                     );
//                   },
//                   child: Text('False'),
//                 ),
//               ),
//               Row(
//                 children: scorekeeper,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:quiz_app/quizbrain.dart';
// import 'question.dart';

// void main() {
//   runApp(const quiz());
// }

// class quiz extends StatefulWidget {
//   const quiz({super.key});

//   @override
//   State<quiz> createState() => _quizState();
// }

// Quizbrain _quizbrain = Quizbrain();

// class _quizState extends State<quiz> {
//   @override
//   // int quetionumber = 0;

//   // List<Question> questionbank = [
//   //   Question(Q: 'You name is vishal', a: true),
//   //   Question(Q: 'You name is vishal', a: false),
//   //   Question(Q: 'You name is vishal', a: true),
//   //   Question(Q: 'You name is vishal', a: false),
//   //   Question(Q: 'You name is vishal', a: true),
//   // ];

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           title: Text('quiz app'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextButton(
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.white,
//                   ),
//                   onPressed: () {},
//                   child: Text(
//                     // questionbank[quetionumber].questiontext,
//                     _quizbrain.getquestiontext(),
//                     style: TextStyle(color: Colors.black),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextButton(
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.green,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _quizbrain.Nextquestion();
//                       _quizbrain.Answercheck();
//                     });
//                   },
//                   child: Text(
//                     'True',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextButton(
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.red,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _quizbrain.Nextquestion();
//                       _quizbrain.Answercheck();
//                     });
//                   },
//                   child: Text('Flase', style: TextStyle(color: Colors.white)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'question.dart';
import 'quizbrain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(quizzler());
}

class quizzler extends StatelessWidget {
  const quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoretTest = [];

  void checkAnswer(bool userpickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      //if we at the last question it is show alert message otherwise add icon in scoretest

      if (quizBrain.isfinished() == true) {
        showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: Text('Finished!'),
                  content: Text('You\'ve reached the end of the quiz'),
                  actions: [
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () => Navigator.pop(context, 'ok'),
                        child: Text(
                          'Finish',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ));

        quizBrain.reset();
        //reset the question number

        //empty scoretest
        scoretTest = [];
      }
      //if we not reached at the end,then ...
      else {
        if (userpickedAnswer == correctAnswer) {
          scoretTest.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoretTest.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      }
      quizBrain.nextQuestion();
    });
  }
  // List<String> questions = [
  //   'You can leed a cow down stairs but not up stairs',
  //   'Approximately one quarter of human bones are in the feet',
  //   'A slug\'s blood is green'
  // ];
  // List<bool> answer = [false, true, true];
  // Question q1 = Question(q: 'You can leed a cow down stairs but not up stairs', a: false);

  // int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                checkAnswer(true);
              },
              child: Text(
                'True',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                checkAnswer(false);
              },
              child: Text(
                'False',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoretTest,
        ),
      ],
    );
  }
}