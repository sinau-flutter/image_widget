import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
        ),
        body: Center(
          child: Container(
            child: Image(
              image: NetworkImage(
                  "https://gigantic.store/wp-content/uploads/2019/01/flat-design-character-illustration.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
