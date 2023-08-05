import 'package:flutter/material.dart';
import 'package:pc_pro/screans/home.dart';
import 'package:pc_pro/screans/order.dart';
import 'package:pc_pro/screans/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PUreCode',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Order(),

      //home: const Services(),
      // home: const Home(),
    );
  }
}
