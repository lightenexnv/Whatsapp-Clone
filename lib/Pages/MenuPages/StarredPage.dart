import 'package:flutter/material.dart';

class StarredPage extends StatelessWidget {
  const StarredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'This is the Starred Page',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

