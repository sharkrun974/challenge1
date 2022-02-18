import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.lightBlue,
        ),
        body: PoolPage(),
      ),
    ),
  );
}

class PoolPage extends StatelessWidget {
  int PoolNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/ball$PoolNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
