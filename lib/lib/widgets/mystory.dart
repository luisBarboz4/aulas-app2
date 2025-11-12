import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  final String? title;
  final String? image;

  const MyStory({super.key, required this.title,this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,right: 15,left: 15),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blueAccent,
            child:(image! == "") 
                  ? FlutterLogo(size: 70) 
                  : Image.network(image!) ,
          ),
          Text(title!),
        ],
      ),
    );
  }
}
