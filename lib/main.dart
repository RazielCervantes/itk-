import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Container(
              child: OutlineButton(
                child: Text("click me"),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ),
    );
