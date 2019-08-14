import 'package:flutter/material.dart';
import 'package:instagram_clone/inst_list.dart';

class InstBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(child: InstList(),)
      ],
    );
  }
}
