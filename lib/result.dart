import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final VoidCallback resetHandler;

  const Result(this.resultscore, this.resetHandler, {super.key});
  String get resultPhrase {
    String resultText;
    if (resultscore <= 12) {
      resultText = 'You are awesome and innocent';
    } else if (resultscore <= 16) {
      resultText = 'pretty likeable';
    } else if (resultscore <= 50) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are so bad ';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            style: const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.blue)),
            child: const Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
