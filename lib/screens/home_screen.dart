import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle miEstilo30 = TextStyle( fontSize: 30, );
    int cont=0;
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 149, 123, 241),
      appBar: AppBar(
        title: const Text('MyApp'),
        elevation: 10.0,
        centerTitle: true,
      ),
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget> [
              Text('Click Counter',style: miEstilo30,),
              Text('$cont',style: miEstilo30,),
            ],
          ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            child:Column(
              children: const <Widget> [
                Icon(Icons.add),
                Icon(Icons.remove),
              
            ],
            ),  
              onPressed: () {
              print(cont);
              
              cont++;
            },
            
            ),
    );
  }

}