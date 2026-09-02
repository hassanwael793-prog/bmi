import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });
  final bool isSelected;
  final VoidCallback onTap;
  final IconData icon;
  final String label;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff24263B),
          border: widget.isSelected
            ?Border.all(color: Color(0xffEB1555),width: 10)
              :null,
        ),
        height: 180,
        width: 155,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(widget.icon, size: 110, color: Colors.white),
              const SizedBox(height: 10),
              Text(
                widget.label,
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff8B8C9E),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
