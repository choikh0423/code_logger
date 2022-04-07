import 'package:flutter/material.dart';
import 'config/palette.dart';

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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _appBarTitle = <Widget>[
    Text(
      'Calendar',
      style: optionStyle,
    ),
    Text(
      'Statistics',
      style: optionStyle,
    ),
    Text(
      'Add',
      style: optionStyle,
    ),
    Text(
      'myWiki',
      style: optionStyle,
    ),
    Text(
      'Notes',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Container(),
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
            imageToIcon('add'),
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
