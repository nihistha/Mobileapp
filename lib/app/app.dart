import 'package:classworks/screen/add_screen.dart';
import 'package:classworks/screen/area_circle_screen.dart';
import 'package:classworks/screen/column_screen.dart';
import 'package:classworks/screen/dashboard_screen.dart';
import 'package:classworks/screen/experiment_screen.dart';
import 'package:classworks/screen/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:classworks/screen/hello_world_screen.dart';

import '../screen/radio_button.dart';

class App extends StatelessWidget {
 const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RadioButton(),
    );
}
}
