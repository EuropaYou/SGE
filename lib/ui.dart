import 'package:flutter/material.dart';
import './lib/table.dart' as table;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          backgroundColor: Colors.amber,
          dialogBackgroundColor: Colors.amber,
          scaffoldBackgroundColor: Colors.amber),
      home: Row(
        children: [Text(table.generateTable(3, 3, 0).toString())],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
