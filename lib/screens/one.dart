import 'package:flutter/material.dart';

class One extends StatelessWidget {
  final age;
  final weight;
  const One({Key? key,required this.age,required this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('one'),
        actions: [
          IconButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
              icon:const Icon(Icons.reset_tv_rounded))
        ],
      ),
      body: Column(
        children: [Text("$age")],
      ),
    );
  }
}
