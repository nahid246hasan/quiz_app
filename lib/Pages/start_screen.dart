import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/contant.dart';

class startScreen extends StatelessWidget {
  const startScreen( this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              logo1,
              width: 300,
            ),
            SizedBox(
              height: height * .1,
            ),
            Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: OutlinedButton.styleFrom(

              ),
              icon: Icon(
                Icons.arrow_right_alt,
              ),
              label: Text(
                'Start Quiz',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
