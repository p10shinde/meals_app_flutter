import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favorites_screen.dart';

class TabsScreenTop extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreenTop> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.category),
              text: 'Categories',
              // child: Text('Tab1'),
            ),
            // Tab(
            //   icon: Icon(Icons.favorite),
            //   text: 'Favourite',
            //   // child: Text('Tab2'),
            // )
          ]),
        ),
        body: TabBarView(children: <Widget>[
          CategoriesScreeen(),
          // FavoritesScreen(),
        ]),
      ),
    );
  }
}
