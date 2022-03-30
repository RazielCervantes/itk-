// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("images/2.jpg"),
              ),
              Container(
                height: 50,
                width: 350,
                child: OutlinedButton(
                  child: Text(
                    "Continue with google",
                    style: TextStyle(fontSize: 26, color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1.0, color: Colors.black)),
                  onPressed: () {},
                ),
              ),
              Container(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  child: Text("Continue with Facebook",
                      style: TextStyle(fontSize: 26)),
                  onPressed: () {},
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "By signing up you're accepting our terms and conditions",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 14,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
