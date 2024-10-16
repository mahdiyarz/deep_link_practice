import 'package:deep_link_practice/features/explore/explore_screen.dart';
import 'package:deep_link_practice/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = '/main';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: PageView(
              controller: _pageController,
              children: const [
                HomeScreen(),
                ExploreScreen(),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            left: 15,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        _pageController.animateToPage(0,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.decelerate);
                      },
                      child: const Text('Home')),
                  TextButton(
                      onPressed: () {
                        _pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.decelerate);
                      },
                      child: const Text('Explore')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
