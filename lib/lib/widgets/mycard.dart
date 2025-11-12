import 'package:flutter/material.dart';

class Mycard extends StatefulWidget {
  final String? title;
  final String? image;
  final bool? like;

  const Mycard({
    super.key,
    required this.title,
    required this.image,
    required this.like,
  });

  @override
  State<Mycard> createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  bool likeState = false;

  void _changeLike() {
    setState(() {
      likeState = !likeState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(height: 100, width: 250, child: FlutterLogo()),
        SizedBox(
          width: 250,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(widget.title!),
              IconButton(
                onPressed: _changeLike,
                icon: (likeState)
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
