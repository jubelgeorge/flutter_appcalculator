import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sub extends StatelessWidget {
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: num1controller,
                decoration: InputDecoration(hintText: "Enter number 1"),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: num2controller,
                decoration: InputDecoration(hintText: "Enter number 2"),
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  var getnum1 = int.parse(num1controller.text);
                  var getnum2 = int.parse(num2controller.text);
                  print(getnum1 - getnum2);
                },
                child: Container(
                  color: Colors.pinkAccent,
                  height: 50.0,
                  width: 500.0,
                  child: Center(child: Text("Sub")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
