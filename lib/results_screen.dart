import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, //на всю ширину екрана
      child: Container(
        margin: const EdgeInsets.all(40), //margin
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X of Y questions correctly!'),
            SizedBox(
              height: 30,
            ),
            Text('list of answers .....'),
            SizedBox(
              height: 30
            ),
            TextButton(
              onPressed: () {},
              child: Text('Restart')
            )
          ],
        ),
      ),
    );
  }
}
