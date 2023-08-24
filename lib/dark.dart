// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Brightness _brightness = Brightness.light;

  void _toggleBrightness() {
    setState(() {
      _brightness =
          _brightness == Brightness.light ? Brightness.dark : Brightness.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: _brightness),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Dark Color')),
          actions: [
            IconButton(
              icon: Icon(_brightness == Brightness.light
                  ? Icons.dark_mode_outlined
                  : Icons.dark_mode_outlined),
              onPressed: _toggleBrightness,
            ),
          ],
        ),
      ),
    );
  }
}
