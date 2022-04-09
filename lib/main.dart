// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

List myProducts = [
  {
    "product": "Samsung A1",
    "cost": "400",
    "time": "2",
    "ImageUrl": "https://i.blogs.es/2b336d/samsung_galaxy_a01/1366_2000.jpg"
  },
  {
    "product": "Laptop",
    "cost": "999",
    "time": "5",
    "ImageUrl": "https://m.media-amazon.com/images/I/61bOLPZJ9ZL._AC_SY450_.jpg"
  },
  {
    "product": "AirPods",
    "cost": "999",
    "time": "8 ",
    "ImageUrl":
        "https://www.backmarket.es/cdn-cgi/image/format=auto,quality=75,width=640/https://d1eh9yux7w8iql.cloudfront.net/product_images/308532_7b427385-34fc-40f5-9e68-73890ed77684.jpg"
  },
  {
    "product": "Imac",
    "cost": "11900",
    "time": "10 ",
    "ImageUrl": "https://ss628.liverpool.com.mx/xl/1098776369.jpg"
  },
  {
    "product": "moto G5",
    "cost": "200",
    "time": "12",
    "ImageUrl":
        "https://androidayuda.com/wp-content/uploads/2017/01/Moto-G5-Plus-Oro.jpg"
  },
  {
    "product": "Yeti Mic",
    "cost": "876",
    "time": "15 ",
    "ImageUrl":
        "https://s3.amazonaws.com/cd.bluemic.com/img/cart-cache/988-000100.jpg"
  },
  {
    "product": "Alexa 4th Gen",
    "cost": "600",
    "time": "14",
    "ImageUrl":
        "https://m.media-amazon.com/images/I/61RuffqqI6L._AC_SL1000_.jpg"
  },
  {
    "product": "LED Strip",
    "cost": "223",
    "time": "20 ",
    "ImageUrl":
        "https://i.linio.com/p/fcfdd46a4c6bde24a187a87f9089fc9d-product.jpg"
  },
];

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {},
                )
              ],
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      myOptionsType(namelabel: "Trending"),
                      myOptionsType(namelabel: "Popular"),
                      myOptionsType(namelabel: "Computers"),
                      myOptionsType(namelabel: "Mobiles"),
                      myOptionsType(namelabel: "Videogames"),
                      myOptionsType(namelabel: "LEDs"),
                      myOptionsType(namelabel: "Hardware"),
                      myOptionsType(namelabel: "Peripherals"),
                      myOptionsType(namelabel: "Cameras")
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: myProducts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(8),
                        child: buildProduct(myProducts[index]),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

class myOptionsType extends StatelessWidget {
  final String? namelabel;
  const myOptionsType({
    Key? key,
    required this.namelabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(18.0),
            ),
            color: Color.fromARGB(255, 222, 140, 204)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Center(
            child: Text(
              " $namelabel",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
        ),
        padding: EdgeInsets.all(4),
      ),
    );
  }
}

@override
Widget buildProduct(Map myProducts) {
  return Card(
    child: Row(
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.network(myProducts["ImageUrl"]),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              myProducts["product"],
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            Text(
              myProducts["time"] + " mins ago",
              style: TextStyle(fontSize: 12),
            ),
            Text(
              "\$ " + myProducts["cost"],
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.orange),
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.add_box),
                  onPressed: () {},
                ),
                Text(
                  "Add to shopCart",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
