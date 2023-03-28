// import 'question.dart';
// import 'package:flutter/material.dart';

// class Quizbrain {
//   int _Number = 0;
//   List<Question> questionbank = [
//     Question(Q: 'You name ', a: true),
//     Question(Q: 'You name is vishal', a: false),
//     Question(Q: 'You name is vishal', a: true),
//     Question(Q: 'You name is vishal', a: false),
//     Question(Q: 'You name is vishal', a: true),
//   ];
//   int Nextquestion() {
//     return _Number = _Number + 1;
//   }

//   String getquestiontext() {
//     return questionbank[_Number].questiontext;
//   }

//   bool? getquestionanswer() {
//     return questionbank[_Number].quetionanswer;
//   }

//   void Answercheck() {
//     if () {
//       print('answer is correct');
//     } else {
//       print('answer is wrong');
//     }
//   }
// }
import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'Some cats are actually allergic to humans', a: true),
    Question(q: 'You can leed a cow down stairs but not up stairs', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet', a: true),
    Question(q: 'A slug\'s blood is green', a: true),
    Question(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    Question(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    Question(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Question(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    Question(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Question(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Question(q: 'Google was originally called \"Backrub\".', a: true),
    Question(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    Question(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

//when we reached the last question
  bool isfinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //reset() method is set the question number back to 0
  void reset() {
    _questionNumber = 0;
  }
}
