import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Demo4_6 extends StatelessWidget {
  Demo4_6({super.key});
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo4.6'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFormField(controller: textController),
            ElevatedButton(
                onPressed: () {
                  DateTime now = DateTime.now();
                  _showDialog(context, textController.text);
                },
                child: Text("Enter")),
          ]),
        ));
  }

  void _showDialog(BuildContext context, String text) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Thông báo'),
            content: Text('$text'),
            actions: <Widget>[
              ElevatedButton(
                child: Text('Đóng'),
                onPressed: () {
                  Navigator.of(context).pop(); // Đóng dialog
                },
              ),
            ],
          );
        });
  }
}
