import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Demo4_3 extends StatefulWidget {
  const Demo4_3({super.key});

  @override
  State<Demo4_3> createState() => _Demo4_3State();
}

class _Demo4_3State extends State<Demo4_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo4.3'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image(image: AssetImage('property/img1.jpg')),
            ElevatedButton(onPressed: () {}, child: Text("New game")),
            ElevatedButton(onPressed: () {}, child: Text("Continue game")),
            ElevatedButton(onPressed: () {}, child: Text("Help game")),
            ElevatedButton(onPressed: () {}, child: Text("Quit game")),
          ]),
        ));
    ;
  }
}
