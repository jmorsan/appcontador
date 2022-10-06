import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 8, 204),
      appBar: AppBar(
        title: Text('MyApp'),
      ),
      body: const Center(
          child: Text('Hola Mundo'),
          ),
    );
  }

}