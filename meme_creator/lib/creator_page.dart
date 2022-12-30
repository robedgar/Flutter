import 'package:flutter/material.dart';

import 'nav_drawer.dart';

class CreatorPage extends StatefulWidget {
  const CreatorPage({Key? key}) : super(key: key);

  @override
  _CreatorPageState createState() => _CreatorPageState();
}

class _CreatorPageState extends State<CreatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create your Meme'),
        backgroundColor: Colors.indigo,
      ),
      drawer: const NavDrawer(
        selected: DrawerSelection.creator,
      ),
      body: const Center(child: Text('Creator')),
    );
  }
}
