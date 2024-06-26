import 'package:app_flutter_testing/di.dart';
import 'package:app_flutter_testing/presentation/home/view/home_page.dart';
import 'package:flutter/material.dart';

void main() async {
  await init();
  runApp( const MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Random Dogs',
        theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            primaryColor: Colors.deepPurple),
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
