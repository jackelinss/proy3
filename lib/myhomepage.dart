import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int x = 1;
  
  String _imagePath = 'assets/abc1.jpg'; // Ruta de la imagen inicial

  void _cambiarImagen() {
    setState(() {
       x = Random().nextInt(9) + 1;
      // Cambiar la ruta de la imagen al presionar el botón
      _imagePath = 'assets/abc$x.jpg'; // Ruta de la nueva imagen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mi App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              _imagePath, // Ruta de la imagen
              width: 200,
              height: 200,
            ),
            ElevatedButton(
              onPressed: _cambiarImagen,
              child: Text('Cambiar Imagen'),
            ),
          ],
        ),
      ),
    );
  }
}