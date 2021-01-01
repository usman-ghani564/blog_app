import 'package:blog_app/Screens/blog_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BlogItemWidget extends StatelessWidget {
  final String id;
  final String firstName;
  final String lastName;
  final String blogTitle;
  final DateTime blogPostTime;
  final String imageUrl;
  final String userImage;

  BlogItemWidget({
    this.id,
    this.firstName,
    this.lastName,
    this.blogTitle,
    this.blogPostTime,
    this.imageUrl,
    this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(BlogScreen.routeName, arguments: id);
            },
            splashColor: Colors.grey,
            child: Container(
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: -30,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage(userImage),
                            fit: BoxFit.cover,
                          ),
                          color: Colors.blue),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 5,
                    child: Text(
                      '$firstName $lastName',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 55,
                    left: 10,
                    child: Container(
                      height: 25,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        blogTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 80,
                    child: Text(
                      DateFormat.yMMMMd().format(blogPostTime),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
                overflow: Overflow.visible,
              ),
            ),
          ),
          Container(
            height: 35,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              color: Colors.grey.shade300,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.thumb_up_outlined),
                Icon(Icons.message_outlined),
                Icon(Icons.thumb_down_outlined),
              ],
            ),
          )
        ],
      ),
    );
  }
}
