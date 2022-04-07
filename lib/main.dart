import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

@override
enum SingingCharacter { male, female }

class _MyAppState extends State<MyApp> {
  get padding => null;

  late TextEditingController _namectrl = TextEditingController();
  late TextEditingController _emailctrl = TextEditingController();
  late TextEditingController _numberctrl = TextEditingController();
  late TextEditingController _passworldctrl = TextEditingController();

  var _character;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Contact Form'),
            backgroundColor: const Color.fromARGB(255, 1, 35, 63),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                width: double.infinity,
                height: 300,
                // color: Colors.amber,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextField(
                      controller: _namectrl,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          filled: true,
                          labelText: "Name",
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          labelStyle:
                              TextStyle(fontSize: 28, color: Colors.grey)),
                    ),
                    TextField(
                      controller: _emailctrl,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          labelText: "Email",
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          labelStyle:
                              TextStyle(fontSize: 28, color: Colors.grey)),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: _numberctrl,
                      decoration: const InputDecoration(
                          labelText: "Number",
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          labelStyle:
                              TextStyle(fontSize: 28, color: Colors.grey)),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: _passworldctrl,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.0),
                          ),
                          labelStyle:
                              TextStyle(fontSize: 28, color: Colors.grey)),
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.green,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Gender"),
                    ListTile(
                      title: const Text('Male'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.male,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Female'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.female,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 120.0,
                    ),
                    CheckboxListTile(
                      title: const Text(
                          "By signing up, I acept terms and conditions"),
                      controlAffinity: ListTileControlAffinity.leading,
                      checkColor: Colors.white,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                width: 360,
                child: ElevatedButton(
                  onPressed: () {
                    // _showDialog(context);
                  },
                  child: const Text(
                    "SUBMIT",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void _showDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: new Text("valores introducidos"),
  //         content: new Text("Name: "),
  //         actions: <Widget>[
  //           new ElevatedButton(
  //             child: new Text("OK"),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
