import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';

class EditSession extends StatefulWidget {
  const EditSession({Key? key}) : super(key: key);

  @override
  State<EditSession> createState() => _EditSessionState();
}

class _EditSessionState extends State<EditSession> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ElevatedButton(
          child: Text("pop"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
