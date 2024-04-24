import 'package:classworks/app/app.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Column(
                children: [
                  Icon(
                      Icons.phone
                  ),
                  Text("Call"),
                ],

              ),
              Column(
                children: [
                  Icon(Icons.mail),
                  Text("Email"),
                ],

              ),
              Column(
                children: [
                  Icon(Icons.phone),
                  Text("Call"),
                ],

              ),
            ],
        ),
      ),
    );
  }
}
