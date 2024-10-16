import 'package:deep_link_practice/core/resources/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = '/details/id=:detailsID';
  final String detailsID;
  const DetailsScreen({required this.detailsID, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              if (context.canPop()) {
                context.pop();
                return;
              }
              context.goNamed(AppRoute.mainScreen);
            },
            icon: const Icon(Icons.arrow_back_rounded)),
      ),
      body: Center(
        child: Text(
            'this is the detailsID that came from pre-screen\n----$detailsID----'),
      ),
    );
  }
}
