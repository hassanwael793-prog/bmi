import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff24263B),
      elevation: 0,
      centerTitle: true,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 13.0),
        child: Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}