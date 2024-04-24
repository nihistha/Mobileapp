import 'package:classworks/screen/add_screen.dart';
import 'package:classworks/screen/area_circle_screen.dart';
import 'package:classworks/screen/simple_interest_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        title: const Text('Dashboard'),
        centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const AddScreen())
            );
          }, child: const Text('Arithmetic')),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>const SimpleInterestScreen())
            );
          }, child: const Text('Button 2')),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>const AreaCircleScreen())
            );
          }, child: const Text('Circle'))
        ],
      ),
    ),

    );
  }
}
