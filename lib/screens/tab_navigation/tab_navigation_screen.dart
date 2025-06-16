import 'package:flutter/material.dart';

class TabNavigationScreen extends StatelessWidget {
  const TabNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Navigation'),
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.article), text: 'Latest News'),
              Tab(icon: Icon(Icons.trending_up), text: 'Trending'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Latest News Content')),
            Center(child: Text('Trending Content')),
            Center(child: Text('Profile Content')),
          ],
        ),
      ),
    );
  }
}
