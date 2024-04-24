import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {

  int? selectedOption = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Educative Answers'),),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[
            ListTile(
              title: const Text('add'),
              leading: Radio<int>(
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                    print("Button value: $value");
                  });

                },
              ),
            ),
        ListTile(
                   title: const Text('Subtract'),
              leading: Radio<int>(
              value: 1,
              groupValue: selectedOption,
              onChanged: (value) {
              setState(() {
              selectedOption = value;
              print("Button value: $value");
              });
              },
              ),
        ),
            ListTile(
              title: const Text('Divide'),
              leading: Radio<int>(
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                    print("Button value: $value");
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Multiply'),
              leading: Radio<int>(
                value: 1,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                    print("Button value: $value");
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}