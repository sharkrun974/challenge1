import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.lightBlue,
        ),
        body: PoolPage2(),
      ),
    ),
  );
}

class PoolPage extends StatelessWidget {
  int PoolNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    print("Vous avez appuyez sur la boule");
                  },
                  child: Image.asset("images/ball$PoolNumber.png")),
            ),
          ),
        ],
      ),
    );
  }
}

class PoolPage2 extends StatefulWidget {
  const PoolPage2({Key? key}) : super(key: key);

  @override
  _PoolPage2State createState() => _PoolPage2State();
}

class _PoolPage2State extends State<PoolPage2> {
  int PoolNumber = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      PoolNumber = Random().nextInt(5) + 1;
                    });
                    print("Vous avez appuyez sur la boule");
                  },
                  child: Image.asset("images/ball$PoolNumber.png")),
            ),
          ),
        ],
      ),
    );
  }
}
