import 'package:flutter/material.dart';

import 'about_page.dart';
import 'creator_page.dart';
import 'home_page.dart';

enum DrawerSelection { home, creator, about }

class NavDrawer extends StatefulWidget {
  final DrawerSelection selected;
  const NavDrawer({Key? key, required this.selected});

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        const SizedBox(
          height: 88,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Text('Menu',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
        ListTile(
          selected: widget.selected == DrawerSelection.home,
          selectedColor: Colors.indigo,
          leading: const Icon(Icons.home),
          title: const Text('Meme of the Day'),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
        ListTile(
          selected: widget.selected == DrawerSelection.creator,
          leading: const Icon(Icons.whatshot),
          title: const Text('Meme Creator'),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const CreatorPage()));
          },
        ),
        ListTile(
          selected: widget.selected == DrawerSelection.about,
          leading: const Icon(Icons.info),
          title: const Text('About'),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const AboutPage()));
          },
        )
      ]),
    );
  }
}
