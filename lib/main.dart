import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0),
              itemCount: 40,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0), child: buildItemGrid());
              },
            ),
          ),
        ),
      ),
    );

Widget buildItemGrid() {
  return Stack(
    children: [
      SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          "images/producto3.jpg",
          fit: BoxFit.cover,
        ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: Container(
          height: 30,
          child: IconButton(
            iconSize: 20,
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        ),
      ),
      Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          height: 50,
          color: Colors.black.withOpacity(0.5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "ASUS TUF F15",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "\$999",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
