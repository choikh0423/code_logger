import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class EditSession extends StatefulWidget {
  const EditSession({Key? key}) : super(key: key);

  @override
  State<EditSession> createState() => _EditSessionState();
}

class _EditSessionState extends State<EditSession> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("this is editting page"),
      ),
      body: Container(
        child: Text("hi")
      )
    );
    ;
  }
}

