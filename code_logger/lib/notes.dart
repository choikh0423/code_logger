import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';

class notes extends StatefulWidget {
  const notes({Key? key}) : super(key: key);

  @override
  State<notes> createState() => _notesState();
}

class _notesState extends State<notes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text("edit or add note"),
        onPressed: () {},
      ),
    );
  }
}
