import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';
import 'view_note.dart';

class notes extends StatefulWidget {
  const notes({Key? key}) : super(key: key);

  @override
  State<notes> createState() => _notesState();
}

class _notesState extends State<notes> {
  TextEditingController _textEditingController = TextEditingController();

  int _currentRoute = 0;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              return Scaffold(
                backgroundColor: Palette.backgroundColor,
                body: Container(
                  child: ListView(
                      children: List.generate(50, (index) {
                    return Card(
                      shadowColor: Colors.white,
                      child: ListTile(
                          contentPadding: EdgeInsets.only(
                              bottom: 10, left: 30, right: 30, top: 0),
                          tileColor: Palette.backgroundColor,
                          title: Text('Note #${index + 1}',
                              style: FontStyle.heading3TextStyle),
                          subtitle: Text(
                              'one line summary actually no it is two line huehuehuehu',
                              style: FontStyle.helperTextStyle),
                          enabled: true,
                          onTap: () {
                            if (_currentRoute != index) {
                              _textEditingController = TextEditingController();
                            }
                            _currentRoute = index;
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return ViewNote();
                              }),
                            );
                          }),
                    );
                  })),
                ),
              );
            });
      },
    );
  }
}
