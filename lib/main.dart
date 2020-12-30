import 'package:blog_app/Screens/blog_screen.dart';
import 'package:provider/provider.dart';

import './Screens/home_screen.dart';
import './Providers/blog_provider.dart';
import './Providers/user_provider.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => BlogProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.lightGreen,
        ),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          BlogScreen.routeName: (ctx) => BlogScreen(),
        },
      ),
    );
  }
}
