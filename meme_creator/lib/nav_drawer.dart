import 'package:flutter/material.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: const [
        SizedBox(
          height: 120,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Text('Menu'),
          ),
        ),
      ]),
    );
  }
}
