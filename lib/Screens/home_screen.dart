import '../Widgets/category_item_widget.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blogged'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [],
        ),
      ),
      body: ListView(
        // parent ListView
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              'Categories',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500),
            ),
          ),
          Container(
              padding: EdgeInsets.only(left: 10),
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryItem(
                    color: Colors.red.shade500,
                    imageUrl: 'assets/images/food.png',
                  ),
                  CategoryItem(
                    color: Colors.blue.shade300,
                    imageUrl: 'assets/images/fashion.png',
                  ),
                  CategoryItem(
                      color: Colors.amber.shade400,
                      imageUrl: 'assets/images/health.png'),
                  CategoryItem(
                      color: Colors.green.shade300,
                      imageUrl: 'assets/images/finance.png'),
                  CategoryItem(
                      color: Colors.yellow.shade500,
                      imageUrl: 'assets/images/travel.png'),
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              'All Blogs',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500),
            ),
          ),
        ],
      ),
    );
  }
}
