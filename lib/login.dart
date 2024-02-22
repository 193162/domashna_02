import 'homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InnovativeHub')), 
      body: Body()
    );
  }
}


class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  late String name;
  TextEditingController controller = new TextEditingController();

  void click() {
    this.name = controller.text;
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(this.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center, 
      child: Padding(
        padding: EdgeInsets.all(10), 
        child: TextField(
          controller: this.controller,
          decoration: InputDecoration(
            labelText: "Username", 
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 5, color: Colors.grey)),
            prefixIcon: Icon(Icons.person),
            suffixIcon: IconButton(
              icon: Icon(Icons.done), 
              splashColor: Colors.blue,
              tooltip: "Submit",
              onPressed: this.click,
            )
          ),
        ),
      )
    );
  }
}