import 'package:flutter/material.dart';

import 'pages/post_list.dart';

void main() => runApp(new NewYorkTimesApp());

class NewYorkTimesApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New York Times',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: PostListPage(),
    );
  }
}