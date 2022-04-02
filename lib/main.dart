// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Container(
              margin: EdgeInsets.all(22),
              height: 400,
              color: Colors.grey[300],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(12, 15, 10, 10),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("images/billie.jpeg"),
                              radius: 24,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("AppMaking.com"),
                              Text("5 mins ago"),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          size: 34,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Image.asset("images/food.jpg"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton.icon(
                        icon: Icon(
                          Icons.favorite_border,
                          size: 30,
                        ),
                        label: Text(
                          "Like",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(primary: Colors.black),
                      ),
                      TextButton.icon(
                        icon: Icon(
                          Icons.chat_bubble_outline,
                          size: 30,
                        ),
                        label: Text(
                          "Comment",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(primary: Colors.black),
                      ),
                      TextButton.icon(
                        icon: Icon(
                          Icons.share_outlined,
                          size: 30,
                        ),
                        label: Text(
                          "Share",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        style: TextButton.styleFrom(primary: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
