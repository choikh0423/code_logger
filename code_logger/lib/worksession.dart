import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';
import 'edit_worksession.dart';

class WorkSession extends StatefulWidget {
  const WorkSession({Key? key}) : super(key: key);

  @override
  State<WorkSession> createState() => _WorkSessionState();
}

class _WorkSessionState extends State<WorkSession> {
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
                          title: Text('Worksession #${index + 1}',
                              style: FontStyle.heading3TextStyle),
                          subtitle: Text('Description of this ',
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
                                return EditSession();
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
// Container(
//       child: ElevatedButton(
//         child: Text("edit or add session"),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => EditSession()),
//           );
//         },
//       ),
//     );