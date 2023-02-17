import 'package:flutter/material.dart';
import 'package:getx/Utils/myroutes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes().snakebar);
                  },
                  child: const Text('Snakbar Tutorial')),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes().tbsa);
                  },
                  child: const Text('Themes, BottomSheet & AlertDialog')),
            ],
          ),
        ),
      ),
    );
  }
}
