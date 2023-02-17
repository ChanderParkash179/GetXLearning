import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Navigation Screen'),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back')),
        ),
      ),
    );
  }
}
