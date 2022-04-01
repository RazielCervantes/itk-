// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Container(
              height: 340,
              width: 340,
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 140,
                    width: 140,
                    child: Image.asset("images/1.png"),
                  ),
                  Text(
                    "APPMAKING.COM",
                    style: TextStyle(fontSize: 26),
                  ),
                  Text(
                    "follow us",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          child: Image.asset("images/5.png"),
                        ),
                        SizedBox(
                          height: 40,
                          child: Image.asset("images/6.png"),
                        ),
                        SizedBox(
                          height: 54,
                          child: Image.asset("images/4.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
