import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text(
              'Ask me anything',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.blue.shade900,
            centerTitle: true,
          ),
          body: YesNo(),
        ),
      ),
    );

class YesNo extends StatefulWidget {
  const YesNo({super.key});

  @override
  State<YesNo> createState() => _YesNoState();
}

class _YesNoState extends State<YesNo> {
  int imageNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    imageNum = Random().nextInt(4) + 1;
                  });
                },
                child: Image.asset('images/ball$imageNum.png')),
          ),
        ],
      ),
    );
  }
}

//
// class YesNo extends StatelessWidget {
//   const YesNo({super.key});
//
// }
