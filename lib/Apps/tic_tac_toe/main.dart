import 'package:flutter/material.dart';
import 'Game.dart';

main() {
  runApp(Principal());
}

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Game(),
    );
  }
  
}