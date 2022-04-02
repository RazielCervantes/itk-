// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(child: Image.asset("images/food.jpg")),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Deep dish pizza Chicago",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "30 mins",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    IconButton(
                      iconSize: 36,
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam et ex aliquet urna gravida aliquet. Ut iaculis, ipsum a convallis porttitor, ligula dui pulvinar velit, vel molestie libero felis sed metus. Morbi euismod odio leo, ut ornare purus dignissim a. Sed diam sapien, euismod vitae interdum vitae, maximus id felis. Nunc vitae sem urna. Donec sed justo vel sem consectetur ullamcorper sed quis risus. Nunc id iaculis dolor. Donec fringilla magna lobortis erat mollis, et egestas turpis fringilla. Vivamus enim ipsum, viverra vitae risus a, semper tempus erat. Vivamus nec maximus elit. Morbi scelerisque pharetra feugiat Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tincidunt est sit amet risus blandit, sit amet faucibus magna varius. Sed feugiat purus nec nisl vestibulum sollicitudin. Morbi tincidunt nulla a velit sagittis, vitae feugiat odio volutpat. Phasellus a ultrices nisi. Proin efficitur ut diam vitae congue. Etiam condimentum massa non vulputate feugiat. Quisque a lectus vitae lorem luctus tempor et sed orci. Aliquam interdum blandit tellus, finibus euismod lectus molestie at."),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 350,
                child: ElevatedButton(
                  child: Text(
                    "SHARE",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
