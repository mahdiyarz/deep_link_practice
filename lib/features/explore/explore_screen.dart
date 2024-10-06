import 'package:deep_link_practice/core/resources/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.pushNamed(AppRoute.detailsScreen);
            },
            child: const Text('Go Next Page')),
      ),
    );
  }
}
