import 'package:flutter/material.dart';
import 'package:persistencia_estados/Utils/shared_preferences_util.dart';

class CounterProvider extends ChangeNotifier{

  int counter = SharedInfo().readCounter();

  addCounter(){
    counter++;
    SharedInfo().writeCounter(counter: counter);
    notifyListeners();
  }
}