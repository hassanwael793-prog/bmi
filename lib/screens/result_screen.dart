import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';

class ResultScreen extends StatelessWidget {
  final double bmi; // نمرر الرقم مباشرة كـ double

  const ResultScreen({
    super.key,
    required this.bmi, required String bmiResult,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),
      appBar: const CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: const Color(0xff24263B),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getResultText(bmi).toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xff22E67B),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Text(
                    bmi.toStringAsFixed(1), 
                    style: const TextStyle(
                      fontSize: 80.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      getInterpretation(bmi),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Color(0xff8B8C9E),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: const Color(0xffE83D67),
              width: double.infinity,
              height: 70,
              alignment: Alignment.center,
              child: const Text(
                "Re - Calculate",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String getResultText(double bmi) {
  if (bmi >= 30) {
    return 'Obese';
  } else if (bmi >= 25) {
    return 'Overweight';
  } else if (bmi >= 18.5) {
    return 'Normal';
  } else {
    return 'Underweight';
  }
}

String getInterpretation(double bmi) {
  if (bmi >= 25) {
    return 'You have a higher than normal body weight. Try to exercise more.';
  } else if (bmi >= 18.5) {
    return 'You Have a Normal Body Weight, Good Job.';
  } else {
    return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}