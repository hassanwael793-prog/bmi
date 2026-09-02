import 'package:bmi/screens/result_screen.dart';
import 'package:bmi/widgets/app_bar.dart';
import 'package:bmi/widgets/custom_container.dart';
import 'package:bmi/widgets/custom_last_container.dart';
import 'package:flutter/material.dart';

import '../widgets/slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum Gender { male, female, none }

int height = 100;
int weight = 60;

class _HomeScreenState extends State<HomeScreen> {
  Gender selectedGender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21.0),
              child: Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 2 / 2.2,
                      child: CustomContainer(
                        icon: Icons.male,
                        label: 'Male',
                        isSelected: selectedGender == Gender.male,
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 2 / 2.2,
                      child: CustomContainer(
                        icon: Icons.female,
                        label: 'Female',
                        isSelected: selectedGender == Gender.female,
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Slide(),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  CustomLastContainer(lable: 'Weight'),
                  SizedBox(width: 9),
                  CustomLastContainer(lable: 'Age'),
                ],
              ),
            ),
            SizedBox(height: 11),
            GestureDetector(
              onTap: () {
                print("Weight: $weight | Height: $height");
                double heightInMeters = height / 100;
                double bmi = weight / (heightInMeters * heightInMeters);
                String bmiResult = bmi.toStringAsFixed(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(bmiResult: bmiResult, bmi: bmi,),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color(0xffE83D67),
                ),
                width: double.infinity,
                height: 70,
                child: Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
