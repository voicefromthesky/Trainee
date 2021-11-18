import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

final Random _random = Random();


class _Home extends State<Home> {
  Color _color = const Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: const TextButton(
          child: Text(
            'Hey There',
            style:  TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          onPressed: null,
        ),
        color: _color,
      ),
      onTap: () {
        setState(() {
          _color = Color.fromARGB(
        //or with fromRGBO with fourth arg as _random.nextDouble(),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
          );
        });
      },
    );
  }
}
