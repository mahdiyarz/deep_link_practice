import 'package:deep_link_practice/core/resources/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(text: '35');
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Screen'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  // focusedBorder: OutlineInputBorder()ß
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please provide an ID';
                  }

                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.pushNamed(AppRoute.detailsScreen,
                          pathParameters: {'detailsID': controller.text});
                    }
                  },
                  child: const Text('Go Next Page')),
            ],
          ),
        ),
      ),
    );
  }
}
