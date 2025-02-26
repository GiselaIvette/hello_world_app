import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_functions_screen.dart';
//import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main (){
  //widget incial 
  runApp( const MyApp()); 
}

class MyApp extends StatelessWidget {
  //crtl+. para crear el key 
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      //para quitar el baner de debug.
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurpleAccent    
      ),
      home: const CounterFunctionScreeen()
    );
  }
}
