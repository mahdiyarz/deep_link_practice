import 'package:deep_link_practice/core/constant/app_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(AppTitle.description),
        ),
      ),
    );
  }
}
