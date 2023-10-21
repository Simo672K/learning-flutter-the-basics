import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String content;

  const Display({Key? key, this.content = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(content);
  }
}
