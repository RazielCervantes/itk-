// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 120,
                width: 120,
                child: Image.asset("images/1.png"),
              ),
              Text(
                "Learning flutter",
                style: TextStyle(fontSize: 26),
              ),
              IconButton(
                iconSize: 34,
                icon: Icon(Icons.thumb_up_alt_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
