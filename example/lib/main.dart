import 'package:flutter/material.dart';
import 'package:flutter_text_field_fab/flutter_text_field_fab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: TextFieldFloatingActionButton(
          'Search...',
          Icon(Icons.gamepad),
          onChange: (String query) => print(query),
          onClear: () => print('I was cleared.'),
        ),
        body: Text('Example'));
  }
}
