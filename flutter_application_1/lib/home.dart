import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quay lại!"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 40),
              child: Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: FlutterLogo()),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 40),
              child: Text(
                "UPS...coudln't Sign ln ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 60),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 100),
              child: Text(
                "Your username and password don't match. ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 160),
              child: Text(
                " Please, try again.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 40),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "TRY AGAIN",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
