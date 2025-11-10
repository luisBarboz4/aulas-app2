import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  final String? title;

  const MyStory({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blueAccent,
          child: FlutterLogo(size: 70),
        ),
        Text(title!),
      ],
    );
  }
}
