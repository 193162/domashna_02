import 'package:flutter/material.dart';

class PostTextInputWidget extends StatefulWidget {
  final Function(String) callback;

  PostTextInputWidget(this.callback);

  @override
  State<PostTextInputWidget> createState() => _PostTextInputWidgetState();
}

class _PostTextInputWidgetState extends State<PostTextInputWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void click() {
    widget.callback(controller.text);
    FocusScope.of(context).unfocus();
    controller.clear();
    
    
  }

  @override
  Widget build(BuildContext context) {
    return 
      TextField(
      controller: this.controller,
      decoration: InputDecoration(
        labelText: "Write a post", 
        suffixIcon: IconButton(icon: Icon(Icons.send), 
        splashColor: Colors.grey,
        tooltip: "Post this post to the forum",
        onPressed: this.click)),
      ); 
  }
}