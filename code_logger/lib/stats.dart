import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';

class stats extends StatefulWidget {
  const stats({Key? key}) : super(key: key);

  @override
  State<stats> createState() => _statsState();
}

class _statsState extends State<stats> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      "index = 2",
      style: FontStyle.heading1TextStyle,
    ));
  }
}
