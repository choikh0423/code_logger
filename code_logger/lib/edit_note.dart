import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';

class EditNote extends StatefulWidget {
  const EditNote({Key? key}) : super(key: key);

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          shadowColor: Colors.transparent,
          bottomOpacity: 0.0,
          leading: Padding(
            padding: EdgeInsets.only(left: 10),
            child: GestureDetector(
              child: IconButton(
                icon: Image.asset('assets/arrowLeft.png'),
                iconSize: 30.0,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Image.asset('assets/trash.png'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return EditNote();
                  }),
                );
              },
              iconSize: 30.0,
            ),
            SizedBox(width: 10.0),
            IconButton(
              icon: Image.asset('assets/save.png'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return EditNote();
                  }),
                );
              },
              iconSize: 30.0,
            ),
            SizedBox(width: 20.0),
          ],
          backgroundColor: Palette.backgroundColor,
        ),
        backgroundColor: Palette.backgroundColor,
        body: Container(
          padding: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0),
              Text("Note Title", style: FontStyle.heading2TextStyle),
              SizedBox(height: 30.0),
              Text(
                "Note Topics",
                style: FontStyle.heading3TextStyle,
              ),
              SizedBox(height: 30.0),
              Text(
                "You are now editing",
                style: FontStyle.contentTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
