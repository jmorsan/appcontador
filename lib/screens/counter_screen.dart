import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int cont=0;

void incrementar(){
  cont++;
  setState(() {});
}

void decrementar(){
  cont--;
  setState(() {});
}

void resetear(){
  cont=0;
  setState(() {});
}

  @override
  Widget build(BuildContext context) {

    const TextStyle miEstilo30 = TextStyle( fontSize: 30, );
    

    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 149, 123, 241),
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
          floatingActionButton:  CustomFloatingActions(
            incrementarCont: incrementar,
            decrementarCont: decrementar,
            resetearCont: resetear,
          ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function incrementarCont;
  final Function decrementarCont;
  final Function resetearCont;

  const CustomFloatingActions({
    Key? key, 
    required this.incrementarCont, 
    required this.decrementarCont,
    required this.resetearCont,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
         children:  [
          FloatingActionButton(
            
            onPressed:(() => incrementarCont()),
              child:  const Icon(Icons.add)
          ),
          
           FloatingActionButton(
             onPressed: (() => resetearCont()),
              child:  const Icon(Icons.refresh),
            ),

          FloatingActionButton(
            onPressed: (() => decrementarCont()),
            child:  const Icon(Icons.remove)
            ),
      ], 
      );
  }
}