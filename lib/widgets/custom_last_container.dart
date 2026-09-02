import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class CustomLastContainer extends StatefulWidget {
 final String lable;
  
  const CustomLastContainer({super.key, required this.lable, });

  @override
  State<CustomLastContainer> createState() => _CustomLastContainerState();
}

class _CustomLastContainerState extends State<CustomLastContainer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff24263B),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.lable,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff8B8C9E),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "$weight",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Color(0xff8B8C9E),
                      shape: CircleBorder(),
                    ),
                    icon: Icon(Icons.remove, color: Colors.white),
                    onPressed: () {
                      setState(() {
                        if (weight > 1) weight--;
                      });
                    },
                  ),
                  SizedBox(width: 40),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Color(0xff8B8C9E),
                      shape: CircleBorder(),
                    ),
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () {
                      setState(() {
                       weight++;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
