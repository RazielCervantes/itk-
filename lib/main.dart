// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Center(
                      child: SizedBox(
                          height: 340,
                          child: Image.asset(
                            "images/producto3.jpg",
                            fit: BoxFit.cover,
                          )),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        child: IconButton(
                          iconSize: 36,
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(14, 300, 0, 0),
                      child: Container(
                        width: 90,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            color: Color.fromARGB(255, 235, 204, 66)),
                        child: Text(
                          "  5% off",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 22),
                        ),
                        padding: EdgeInsets.all(4),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Asus TUF Gaming F15",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "40 mins before",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "\$999",
                        style: TextStyle(
                            color: Colors.orange[700],
                            fontSize: 22,
                            fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et ex aliquet urna gravida aliquet. Ut iaculis, ipsum a convallis porttitor, ligula dui pulvinar velit, vel molestie libero felis sed metus. Morbi euismod odio leo, ut ornare purus dignissim a. Sed diam sapien, euismod vitae interdum vitae, maximus id felis. Nunc vitae sem urna. Donec sed justo vel sem consectetur ullamcorper sed quis risus. Nunc id iaculis dolor. Donec fringilla magna lobortis erat mollis, et egestas turpis fringilla. Vivamus enim ipsum, viverra vitae risus a, semper tempus erat. Vivamus nec maximus elit. Morbi scelerisque pharetra feugiat Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tincidunt est sit amet risus blandit, sit amet faucibus magna varius. Sed feugiat purus nec nisl vestibulum sollicitudin."),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 46,
                      width: 180,
                      child: OutlinedButton(
                        child: Text(
                          "ADD CART",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2.0, color: Colors.blue)),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 46,
                      width: 180,
                      child: ElevatedButton(
                        child: Text(
                          "BUY NOW",
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
