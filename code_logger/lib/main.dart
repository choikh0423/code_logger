import 'package:flutter/material.dart';
import 'config/palette.dart';
import 'worksession.dart';
import 'stats.dart';
import 'wiki.dart';
import 'notes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _appBarTitle = <Widget>[
    Text(
      'Work Sessions',
      style: FontStyle.heading1TextStyle,
    ),
    Text(
      'Statistics',
      style: FontStyle.heading1TextStyle,
    ),
    Text(
      'myWiki',
      style: FontStyle.heading1TextStyle,
    ),
    Text(
      'Notes',
      style: FontStyle.heading1TextStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  find_body() {
    if (_selectedIndex == 0) {
      return worksession();
    } else if (_selectedIndex == 1) {
      return stats();
    } else if (_selectedIndex == 2) {
      return wiki();
    } else if (_selectedIndex == 3) {
      return notes();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 35.0,
        backgroundColor: Palette.backgroundColor,
        actions: [Text('text')],
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Center(child: _appBarTitle[_selectedIndex])],
        ),
      ),
      backgroundColor: Palette.backgroundColor,
      body: IndexedStack(
        index: _selectedIndex,
        children: [worksession(), stats(), wiki(), notes()],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Palette.subFontColor, width: 1.5),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Palette.backgroundColor,
          type: BottomNavigationBarType.fixed,
          iconSize: 35,
          unselectedItemColor: Palette.IconColor,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: <BottomNavigationBarItem>[
            imageToIcon('calendar'),
            imageToIcon('stats'),
            imageToIcon('mywiki'),
            imageToIcon('notes'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

BottomNavigationBarItem imageToIcon(String name) => BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage("assets/$name.png"),
      ),
      label: name,
      backgroundColor: Palette.backgroundColor,
    );
