import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Container(
              height: 240,
              width: 240,
              child: Image.network(
                  "https://i2.wp.com/zimbronapps.com/wp-content/uploads/2019/03/flutter.png?fit=750%2C300&ssl=1&resize=350%2C200"),
            ),
          ),
        ),
      ),
    );
