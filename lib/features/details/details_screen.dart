import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = '/details';
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
    );
  }
}
