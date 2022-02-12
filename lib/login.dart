import 'dart:ui';

import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 30),
            Image.asset(
              "assets/images/key.png",
              width: 220,
              height: 220,
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Login with your Mobile Number",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 8.0,
                        offset: Offset(5, 5)),
                  ]),
              height: 200,
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                          counterText: "",
                          border: InputBorder.none,
                          prefixIcon: Text("+91"),
                          prefixIconConstraints:
                              BoxConstraints(minHeight: 0, minWidth: 0)),
                    ),
                  ),
                  SizedBox(height: 30),
                  //ElevatedButton(onPressed: () {}, child: Text("Continue"))
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Continue"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
