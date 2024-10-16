import 'package:deep_link_practice/core/resources/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = '/details/id=:detailsID';
  final String detailsID;
  const DetailsScreen({required this.detailsID, super.key});

  @override
  Widget build(BuildContext context) {
    final String shareUrl =
        'https://deep-link-practice-3851c.web.app/details/id=$detailsID';

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
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('----$detailsID----'),
            ElevatedButton.icon(
              onPressed: () {
                Share.share(
                  'Check this Depp Link URL:\n$shareUrl',
                );
              },
              label: const Text('Share'),
              icon: const Icon(Icons.share),
            )
          ],
        ),
      ),
    );
  }
}
