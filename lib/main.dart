import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Center(
            child: Text(
              "Hello Flutters!",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
        ),
      )),
    );
