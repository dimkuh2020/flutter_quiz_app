import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/data/questions.dart';
import 'package:udemy_quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers; //список для добавления данных

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var element in chosenAnswers) {
      summary.add({
        'question_index': element.indexOf(element),
        'question': questions[element.indexOf(element)].text,
        'correct_answer': questions[element.indexOf(element)].answers[0], // 0 потому что правильный ответ в первом индексе
        'user_answer': chosenAnswers[element.indexOf(element)]
      });
      
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, //на всю ширину екрана
      child: Container(
        margin: const EdgeInsets.all(40), //margin
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X of Y questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart')
            )
          ],
        ),
      ),
    );
  }
}
