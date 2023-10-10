import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Demo4_2 extends StatefulWidget {
  const Demo4_2({super.key});

  @override
  State<Demo4_2> createState() => _Demo4_2State();
}

class _Demo4_2State extends State<Demo4_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo4.2'),
        ),
        body: Center(
          child: Column(children: [
            Text("Demo2"),
            Image(image: AssetImage('property/img1.jpg')),
            TextFormField(),
          ]),
        ));
  }
}
