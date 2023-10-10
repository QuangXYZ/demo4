import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class Demo4_4 extends StatefulWidget {
  const Demo4_4({super.key});

  @override
  State<Demo4_4> createState() => _Demo4_4State();
}

class _Demo4_4State extends State<Demo4_4> {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Demo4.3'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Nhập số điện thoại cần gọi", style: TextStyle()),
            TextFormField(controller: textController),
            ElevatedButton(
                onPressed: () async {
                  String phoneNumber = textController.text;
                  String url = 'tel:$phoneNumber';
                  var status = await Permission.phone.status;
                  if (status.isDenied) {
                    // Yêu cầu quyền nếu người dùng chưa quyết định
                    await Permission.phone.request();
                  }
                  if (status.isGranted) {
                    await launch(url);
                  }
                },
                child: Text("Gọi")),
          ]),
        ));
    ;
  }
}
