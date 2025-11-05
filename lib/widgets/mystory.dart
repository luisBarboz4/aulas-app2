import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  final String? title = "Perfil";

  const MyStory({super.key, required title});

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
