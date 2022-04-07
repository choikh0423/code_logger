import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';

class wiki extends StatefulWidget {
  const wiki({Key? key}) : super(key: key);

  @override
  State<wiki> createState() => _wikiState();
}

class _wikiState extends State<wiki> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text("edit or add wiki"),
        onPressed: () {},
      ),
    );
  }
}
