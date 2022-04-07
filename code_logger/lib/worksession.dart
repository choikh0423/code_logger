import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';
import 'edit_worksession.dart';

class worksession extends StatefulWidget {
  const worksession({Key? key}) : super(key: key);

  @override
  State<worksession> createState() => _worksessionState();
}

class _worksessionState extends State<worksession> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            controller: controller1,
            decoration: InputDecoration(labelText: 'Enter "dice"'),
            keyboardType: TextInputType.emailAddress,
          ),
          TextField(
            controller: controller2,
            decoration: InputDecoration(labelText: 'Enter "dice"'),
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }
}
