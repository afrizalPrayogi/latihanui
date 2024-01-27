import 'package:flutter/material.dart';
import 'package:latihan_ui/pages/Homepage.dart';

void main() => runApp(latihanui());

class latihanui extends StatelessWidget {
  const latihanui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
