import 'package:flutter/material.dart';
import 'package:persistencia_estados/Providers/counter_provider.dart';
import 'package:persistencia_estados/Screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'Utils/shared_preferences_util.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedInfo.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  final _counterProvider = CounterProvider();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(create: (_) => _counterProvider),
      ],
      child: MaterialApp(
        title: 'Persistencia',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

