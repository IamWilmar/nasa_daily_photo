import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  static final String routeName = 'homePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}