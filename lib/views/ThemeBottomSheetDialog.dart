import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TBsD extends StatefulWidget {
  const TBsD({super.key});

  @override
  State<TBsD> createState() => _TBsDState();
}

class _TBsDState extends State<TBsD> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Themes, BottomSheet, AlertDialog")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Card(
                child: ListTile(
                  title: const Text('Alert Dialog'),
                  subtitle:
                      const Text('Alert Dialog Box implementation using GetX'),
                  onTap: (() {
                    Get.defaultDialog(
                      title: 'Do you want to Cancel?',
                      middleText:
                          'for cancel please press on the button of CANCEL, and for confirmation please click on the button OK',
                      contentPadding: const EdgeInsets.fromLTRB(8, 24, 8, 8),
                      cancel: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel')),
                      confirm: TextButton(
                          onPressed: () {
                            Get.snackbar(
                              'Alert Dialog',
                              'Welcome to the Alert Dialog',
                            );
                          },
                          child: const Text('OK')),
                    );
                  }),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Card(
                child: ListTile(
                  title: const Text('Bottom Sheet'),
                  subtitle:
                      const Text('Alert Dialog Box implementation using GetX'),
                  onTap: (() {
                    Get.bottomSheet(
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text(
                                'Light Theme',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              leading: const Icon(
                                Icons.light_mode,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              title: const Text(
                                'Dark Theme',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              leading: const Icon(
                                Icons.dark_mode,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
