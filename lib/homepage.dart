import 'post.dart';
import 'posttextinputwidget.dart';
import 'postlist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String name;

  HomePage(this.name);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Post> posts = [];

  void newPost(String text) {
    this.setState(() {
      posts.add(new Post(text, widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InnovativeHub')), 
      body: Column(children: <Widget>[
        Expanded(child: PostList(this.posts)),
        PostTextInputWidget(this.newPost)
        ]
      )
    );
  }
}