// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Container(
              height: 80,
              width: 350,
              child: OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("images/3.png"),
                    ),
                    Text(
                      "Continue with Google",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Colors.black)),
              ),
            ),
          ),
        ),
      ),
    );
