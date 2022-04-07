import 'package:code_logger/config/palette.dart';
import 'package:flutter/material.dart';
import 'edit_note.dart';

class ViewNote extends StatefulWidget {
  const ViewNote({Key? key}) : super(key: key);

  @override
  State<ViewNote> createState() => _ViewNoteState();
}

class _ViewNoteState extends State<ViewNote> {
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
              icon: Image.asset('assets/edit.png'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return EditNote();
                  }),
                );
              },
              iconSize: 30.0,
            ),
            SizedBox(width: 20.0)
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
                "You are now viewing",
                style: FontStyle.contentTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
