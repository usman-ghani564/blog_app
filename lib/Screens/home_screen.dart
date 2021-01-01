import 'package:blog_app/Widgets/blog_item.dart';
import 'package:blog_app/models/image_url.dart';

import '../Providers/blog_provider.dart';
import '../Providers/user_provider.dart';
import '../Widgets/category_item_widget.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserProvider>(context);
    final blogData = Provider.of<BlogProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Blogged'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
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
              padding: const EdgeInsets.only(left: 10),
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
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return BlogItemWidget(
                  id: blogData.getAllBlogs[index].getID,
                  firstName: userData
                      .getUserById(blogData.getAllBlogs[index].getUserID)
                      .getFirstName,
                  lastName: userData
                      .getUserById(blogData.getAllBlogs[index].getUserID)
                      .getLastName,
                  blogTitle: blogData.getAllBlogs[index].getBlogTitle,
                  blogPostTime: blogData.getAllBlogs[index].getPostingDate,
                  imageUrl: ImageUrl.getImageUrlByCategory(
                      blogData.getAllBlogs[index].getCategory),
                  userImage: userData
                      .getUserById(blogData.getAllBlogs[index].getUserID)
                      .getImageUrl,
                );
              },
              itemCount: blogData.getAllBlogs.length,
            ),
          )
        ],
      ),
    );
  }
}
