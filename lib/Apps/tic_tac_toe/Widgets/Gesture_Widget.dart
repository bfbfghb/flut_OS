import 'package:flutter/material.dart';

class Gesture_Widget extends StatelessWidget {
  const Gesture_Widget({ Key? key, required this.texto, required this.onTap }) : super(key: key);
  final texto;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.amber,
      child: GestureDetector(
        onTap: onTap,
        child: Text(texto, style: TextStyle(fontSize: 50,), textAlign: TextAlign.center,),
      ),
    );
  }
}