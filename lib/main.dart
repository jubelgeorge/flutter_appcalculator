import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercalculatorapp/views/add.dart';
import 'package:fluttercalculatorapp/views/del.dart';
import 'package:fluttercalculatorapp/views/mul.dart';
import 'package:fluttercalculatorapp/views/sub.dart';

void main() {
  runApp(Calc());
}

class Calc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: Main(),
      ),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 210.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height,
              child: Container(
                margin: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>Add()
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(15.0)),
                        height: 50.0,
                        width: 500.0,
                        child: Center(
                            child: Text(
                          "ADD",
                          style: TextStyle(fontSize: 23.0, color: Colors.white),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>Sub()
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(15.0)),
                        height: 50.0,
                        width: 500.0,
                        child: Center(
                            child: Text(
                          "SUBTRACT",
                          style: TextStyle(fontSize: 23.0, color: Colors.white),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>Mul()
                        ));

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(15.0)),
                        height: 50.0,
                        width: 500.0,
                        child: Center(
                          child: Text(
                            "MULTIPLY",
                            style: TextStyle(fontSize: 23.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Del()
                        )
                        );

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        height: 50.0,
                        width: 500.0,
                        child: Center(
                          child: Text(
                            "DIVIDE",
                            style: TextStyle(fontSize: 23.0,color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
