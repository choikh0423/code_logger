import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';
import 'edit_worksession.dart';

class WorkSession extends StatefulWidget {
  const WorkSession({Key? key}) : super(key: key);

  @override
  State<WorkSession> createState() => _WorkSessionState();
}

class _WorkSessionState extends State<WorkSession> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  int _currentRoute = 0;
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return Scaffold(
              body: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(fixedSize: Size(20, 20)),
                    child: Text("hs"),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return EditSession();
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        );
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