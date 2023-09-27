import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class questionScreen extends StatefulWidget {
  const questionScreen({super.key, required this.onselectAnswer});

  final void Function(String answer) onselectAnswer;

  @override
  State<questionScreen> createState() => _questionScreenState();
}

class _questionScreenState extends State<questionScreen> {
  var curQsIndex=0;
  void ansQs(String selectedAnswer){
    widget.onselectAnswer(selectedAnswer);
    //curQsIndex=curQsIndex+1;
    //curQsIndex+=1;
    setState(() {
      curQsIndex++;
    });

  }
  @override
  Widget build(BuildContext context) {
    final curQs = questions[curQsIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              curQs.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),

            //ekhane dynamically list er answer guloke print kora hoyeche

            ...curQs.getShuffle().map(
              (item) {
                return answerButton(
                  ans: item,
                  ontap: (){
                    ansQs(item);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
