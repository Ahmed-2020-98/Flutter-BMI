import 'package:flutter/material.dart';

class Customclick extends StatelessWidget {
  const Customclick({Key? key, required this.widget, required this.color})
      : super(key: key);
  @override
  final Color color;
  final Widget widget;
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
        height: 200,
        color: color,
        child: widget,
      ),
    );
  }
}
