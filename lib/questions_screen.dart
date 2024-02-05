import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:udemy_quiz_app/answerbutton.dart';
import 'package:udemy_quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer){  // увеличиваем индекс для перехода на след вопрос
    widget.onSelectAnswer(selectedAnswer); //связать onSelectAnswer с State
    setState(() {
      currentQuestionIndex++;
    });    
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity, //на всю ширину екрана
      child: Container(
        margin: const EdgeInsets.all(40), //margin         
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.amber,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((item) { //конвертируем строки в виджеты ...spread operator
              return Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: AnswerButton(
                  answerText: item,
                  onTap: () {
                    answerQuestion(item);
                  }
                ),
              );
            })           
          ],
        ),
      ),
    );
  }
}
