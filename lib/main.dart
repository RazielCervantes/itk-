import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children: <Widget>[
        //page 1
        Container(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
            child: Center(
              child: Text(
                "Hello Flutters!",
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),
        ),
        //page 2
        Center(
          child: Center(
              child: Container(
            height: 200,
            width: 200,
            child: Center(
              child: Image.network(
                  "https://i2.wp.com/zimbronapps.com/wp-content/uploads/2019/03/flutter.png?fit=750%2C300&ssl=1&resize=350%2C200"),
            ),
          )),
        ),
        //page 3
        Center(
          child: Center(
            child: Container(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i2.wp.com/zimbronapps.com/wp-content/uploads/2019/03/flutter.png?fit=750%2C300&ssl=1&resize=350%2C200"),
                radius: 90,
              ),
            ),
          ),
        ),
        //Page 4
        Center(
          child: Center(
              child: Container(
            height: 70,
            width: 200,
            child: ElevatedButton(
              child: Text(
                "click me",
                style: TextStyle(fontSize: 40),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          )),
        ),
        //page 5
        Center(
          child: Center(
              child: Container(
            child: TextButton(
              child: Text("click me"),
              onPressed: () {},
            ),
          )),
        ),
        //page 6
        Center(
          child: Center(
            child: Container(
              child: OutlineButton(
                child: Text("click me"),
                onPressed: () {},
              ),
            ),
          ),
        ),
        //Page 7
        Center(
          child: Center(
            child: Container(
              child: IconButton(
                iconSize: 70,
                icon: Icon(Icons.alarm),
                onPressed: () {},
              ),
            ),
          ),
        ),
        //Page 8
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset("images/1.png"),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "learning flutter",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
        //page 9
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.amber[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 158,
                width: 158,
                child: Image.asset("images/1.png"),
              ),
              Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "learning flutter",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "learn how to make apps with flutter",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        //page 10
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset("images/2.jpg"),
              ),
              Container(
                height: 50,
                width: 350,
                child: OutlineButton(
                  child: Text(
                    "Continue with google",
                    style: TextStyle(fontSize: 26),
                  ),
                  onPressed: () {},
                  borderSide:
                      BorderSide(color: Colors.black, style: BorderStyle.solid),
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
        //page 11
        Container(
          child: Row(children: [
            Container(),
            Container(),
            Container(),
          ]),
        ),
        //page 12
        Container(
          child: Image.asset("images/2.jpg"),
        ),
        //page 13
        Container(
          child: Image.asset("images/2.jpg"),
        ),
      ],
    );
  }
}
