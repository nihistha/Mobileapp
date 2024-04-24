import 'dart:ui';

import 'package:classworks/model/area_circle_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AreaCircleScreen extends StatefulWidget {
  const AreaCircleScreen({super.key});

  @override
  State<AreaCircleScreen> createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  final mykey = GlobalKey<FormState>();
  AreaCircleModel? areaCircleModel;
  double? radius;
  double? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent[100],
      appBar: AppBar(
        title: const Text("Circle"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: mykey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter Radius';
                  }
                  return null;
                },
                onChanged: (value) {
                  radius = double.parse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  labelText: 'Enter Radius',
                ),
              ),

              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  if(mykey.currentState!.validate()){
                    setState(() {
                      areaCircleModel = AreaCircleModel(radius: radius);
                      result = areaCircleModel?.area();
                    });
                  }
                },
                  child: const Text(
                      "Calculate",
                      style : TextStyle(
                        fontSize: 25,
                      )
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion
              // Text(
              //   'Area is : $result',
              //   style: const TextStyle(
              //     fontSize: 30,
              //   ),
              // ),
              RichText(
                  text:  TextSpan(
                    text: "The Area is",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' $result ',
                        style: TextStyle(
                          backgroundColor: Colors.black87,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                      TextSpan(
                        text: "only",
                      )
                    ]
                  )
              ),
              RichText(
                text: const
                  TextSpan(
                    text: "M",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.orange,
                  ),
                  children: [
                    TextSpan(
                      text: "y name is Nihira",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      )
                    )
                  ]
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
