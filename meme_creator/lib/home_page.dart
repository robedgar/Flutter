import 'package:flutter/material.dart';
import 'package:meme_creator/nav_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meme of the Day'),
        backgroundColor: Colors.indigo,
      ),
      drawer: const NavDrawer(
        selected: DrawerSelection.home,
      ),
    );
  }
}
