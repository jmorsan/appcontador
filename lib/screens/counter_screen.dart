import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int cont=0;

  @override
  Widget build(BuildContext context) {

    const TextStyle miEstilo30 = TextStyle( fontSize: 30, );
    

    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 149, 123, 241),
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
        centerTitle: true,
      ),
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget> [
              const Text('Click Counter',style: miEstilo30,),
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
              setState(() {
                cont++;
              });

            },
            
            ),
    );
  }
}