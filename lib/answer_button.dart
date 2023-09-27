import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class answerButton extends StatelessWidget {
  const answerButton({super.key, required this.ans, required this.ontap});

  final String ans;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        ans,
        textAlign: TextAlign.center,
      ),
    );
  }
}
