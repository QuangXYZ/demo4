import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Demo4_1 extends StatelessWidget {
  const Demo4_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo4.1'),
      ),
      body: Center(
        child: Image(image: AssetImage('property/img1.jpg')),
      ),
    );
  }
}
