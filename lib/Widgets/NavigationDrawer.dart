import 'package:flutter/material.dart';

import 'MainDrawer.dart';

class NavigationDrawer extends StatefulWidget {
  
  NavigationDrawer({super.key, }) ;

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: MainDrawer(),
    );
  }
}
