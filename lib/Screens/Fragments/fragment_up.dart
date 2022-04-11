import 'package:flutter/material.dart';
import 'package:persistencia_estados/Providers/counter_provider.dart';
import 'package:provider/provider.dart';

class FragmentUp extends StatefulWidget {
  const FragmentUp({Key? key}) : super(key: key);

  @override
  _FragmentUpState createState() => _FragmentUpState();
}

class _FragmentUpState extends State<FragmentUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade800,
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Presiona el botón para actualizar el contador"
            ),
            ElevatedButton(
                onPressed: (){
                  Provider.of<CounterProvider>(context, listen: false).addCounter();
                },
                child: const Text(
                  "Aumentar contador"
                )
            )
          ],
        ),
      ),
    );
  }
}
