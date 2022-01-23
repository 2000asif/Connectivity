import 'package:flutter/material.dart';
class Asif extends StatelessWidget {
  const Asif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Bar' ,
          style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.bold,
            color: Colors.green
          ),
        ),
      ),
    );
  }
}
