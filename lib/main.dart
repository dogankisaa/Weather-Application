import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/theme/theme.dart';
import 'package:weather_app/view/home_view.dart';
import 'package:weather_app/view_model/home_view_model.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      builder: (context, child) => const MyApp(),
    ),
  ]));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: theme(), home: const HomeView());
  }
}
