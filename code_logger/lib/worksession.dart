import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';
//import 'edit_worksession.dart';

class worksession extends StatefulWidget {
  const worksession({Key? key}) : super(key: key);

  @override
  State<worksession> createState() => _worksessionState();
}

class _worksessionState extends State<worksession> {
  final GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text("edit or add wiki"),
        onPressed: () {

        },
      ),
    );
  }
}
