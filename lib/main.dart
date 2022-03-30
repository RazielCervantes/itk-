import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(
              child: Container(
            height: 70,
            width: 200,
            child: ElevatedButton(
              child: Text(
                "click me",
                style: TextStyle(fontSize: 40),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          )),
        ),
      ),
    );
