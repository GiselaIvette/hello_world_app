import 'package:flutter/material.dart';
//impm

//stles + tab
class CounterFunctionScreeen extends StatefulWidget {
  const CounterFunctionScreeen({super.key});

  @override
  State<CounterFunctionScreeen> createState() => _CounterFunctionScreeenState();
}

class _CounterFunctionScreeenState extends State<CounterFunctionScreeen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador'),
          //lista de widgest, aparece en lado derecho
          actions: [
            IconButton(

              icon: const Icon(Icons.refresh_rounded),
              //reiniciar contadors
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 160,
                      fontWeight: FontWeight.w100
                      
                      )),
              // tarea: Text(clickCounter == 1 ? 'Click' : 'Clicks',
              Text('Click${clickCounter == 1 ? '' : 's'}',
                  style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Custom_button(
              icon: Icons.refresh_rounded,
              onPressed:(){
                clickCounter =0;
                setState(() {});
              },
            ),
            const SizedBox(height: 15),
            Custom_button(
              icon:  Icons.exposure_minus_1,
              onPressed: (){
                if (clickCounter==0) return; 
                clickCounter--;
                setState(() {});
              },
              ),
            //para espacio
            const SizedBox(height: 15),
            Custom_button(
              icon: Icons.plus_one, 
              onPressed: (){
                clickCounter++;
                setState(() {});
              },

              ),
          ],
        ));
  }
}

class Custom_button extends StatelessWidget {
  final IconData icon;

  final VoidCallback? onPressed;
  const Custom_button({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      autofocus: true,
      focusElevation: 8,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
