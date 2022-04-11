import 'package:flutter/material.dart';
import 'package:persistencia_estados/Providers/counter_provider.dart';
import 'package:provider/provider.dart';

class FragmentDown extends StatefulWidget {
  const FragmentDown({Key? key}) : super(key: key);

  @override
  _FragmentDownState createState() => _FragmentDownState();
}

class _FragmentDownState extends State<FragmentDown> {

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context, listen: true);
    return Container(
      color: Colors.green.shade800,
      child: Center(
        child: Text(
          counterProvider.counter.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32.0
          ),
        ),
      ),
    );
  }
}
