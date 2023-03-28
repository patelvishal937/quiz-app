import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question {
  String questionText = '';
  bool questionAnswer = true;

  //create constructor
  Question({required String q, required bool a}) {
    questionText = q;
    questionAnswer = a;
  }
}
