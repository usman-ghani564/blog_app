import 'package:blog_app/Providers/user_provider.dart';
import 'package:intl/intl.dart';

import '../Providers/blog_provider.dart';
import '../models/image_url.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlogScreen extends StatelessWidget {
  static const routeName = 'blog-screen';
  @override
  Widget build(BuildContext context) {
    final blogID = ModalRoute.of(context).settings.arguments as String;
    final blogData = Provider.of<BlogProvider>(context, listen: false);
    final userData = Provider.of<UserProvider>(context, listen: false);
    final blog = blogData.getblogByID(blogID);
    final blogAuthor = userData.getUserById(blog.getUserID);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          blog.getBlogTitle,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    ImageUrl.getImageUrlByCategory(blog.getCategory)),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
              ),
            ),
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              blog.getBlogTitle,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyText1,
                children: <TextSpan>[
                  TextSpan(
                      text: '${_getFirstWordOFBlog(blog.getBlogPost)} ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
                  TextSpan(
                      text: _getRestOfBlog(blog.getBlogPost),
                      style: TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Post Date: ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
                Text(
                  DateFormat('dd-MM-yyyy h:mm').format(blog.getPostingDate),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Author',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).primaryColor,
                    image: DecorationImage(
                        image: AssetImage(blogAuthor.getImageUrl),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    '${blogAuthor.getFirstName} ${blogAuthor.getLastName}',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w300,
                        color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getFirstWordOFBlog(String blog) {
    int indexOfFirstSpace = blog.indexOf(' ');
    String firstWord = '';
    for (int i = 0; i < indexOfFirstSpace; i++) {
      firstWord += blog[i];
    }
    return firstWord;
  }

  String _getRestOfBlog(String blog) {
    int indexOfFirstSpace = blog.indexOf(' ');
    String restString = '';
    for (int i = indexOfFirstSpace + 1; i < blog.length; i++) {
      restString += blog[i];
    }
    return restString;
  }
}
