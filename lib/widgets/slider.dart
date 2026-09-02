import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Container(
        decoration:BoxDecoration(
            color: Color(0xff333244),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:27 ,),
            const Text("HEIGHT",style: TextStyle(
              fontSize: 18,
              color: Color(0xff8B8C9E),
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toString(),
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 4),
                const Text(
                  'cm',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff8B8C9E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 64.0,left: 24,right: 24),
              child: Slider(value: height.toDouble(),
                  min: 100,
                  max: 250,
                  activeColor:  Color(0xffE83D67),
                  inactiveColor: Color(0xffFFFFFF),
                  onChanged:(v){
                    setState(() {
                      height=v.toInt();
                    });
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
