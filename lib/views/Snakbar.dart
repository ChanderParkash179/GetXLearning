import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snakbar extends StatefulWidget {
  const Snakbar({super.key});

  @override
  State<Snakbar> createState() => _SnakbarState();
}

class _SnakbarState extends State<Snakbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SnakBar'),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Snakbar in GetX'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'GetX',
            'Welcome to GetX Learning',
            snackPosition: SnackPosition.TOP,
            icon: const Icon(CupertinoIcons.mail),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
