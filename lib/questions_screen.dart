import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/answerbutton.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity, //на всю ширину екрана
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question...', 
            style: TextStyle(
              color: Colors.amber
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton('answer 1', () {}),
          AnswerButton('answer 2', () {}),
          AnswerButton('answer 3', () {}),  
         
        ],
      ),
    );
  }
}
