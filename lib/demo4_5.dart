import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Demo4_5 extends StatelessWidget {
  const Demo4_5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo4.5'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: () {
                  DateTime now = DateTime.now();
                  _showDialog(context, now);
                },
                child: Text("Xem thời gian")),
          ]),
        ));
  }

  void _showDialog(BuildContext context, DateTime now) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Thông báo'),
            content: Text('$now'),
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
