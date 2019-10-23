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
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.amber,
                child: Image(
                  image: NetworkImage(
                      "https://gigantic.store/wp-content/uploads/2019/01/flat-design-character-illustration.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.lightGreen,
                child: Image(
                  image: AssetImage("images/flat-design-family.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('Button Pressed'),
          tooltip: 'Yeah',
          child: Icon(Icons.chat),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }
}
