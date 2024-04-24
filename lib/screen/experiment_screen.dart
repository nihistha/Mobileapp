import 'package:flutter/material.dart';

class ExperimentScreen extends StatelessWidget {
  const ExperimentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "Full Name",
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "Username",
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "Phone Number",
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: "PassWord"
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){}, child: Text("Sign Up"),
              style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
