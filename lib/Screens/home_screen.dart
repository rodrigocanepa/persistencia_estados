import 'package:flutter/material.dart';
import 'package:persistencia_estados/Screens/Fragments/fragment_down.dart';
import 'package:persistencia_estados/Screens/Fragments/fragment_up.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Expanded(
            flex: 1,
              child: FragmentUp()
          ),
          Expanded(
            flex: 1,
              child: FragmentDown()
          )
        ],
      ),
    );
  }
}
