import 'package:exercise_e4/app_logic.dart';
import 'package:flutter/material.dart';

class E4App extends StatelessWidget {
  const E4App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise E4',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO - implement this method
    return Text("TODO - implement this method!");
  }

  /// Show help page/dialog
  /// Note for students: don't modify this method!
  void _showHelp(BuildContext context) {
    // The widget calls the necessary operation in the app-logic class
    AppLogic.instance().showHelp();
    _showDialogMessage("Showing help...", context);
  }

  /// Simulate sign-out
  /// Note for students: don't modify this method!
  void _signOut(BuildContext context) {
    AppLogic.instance().signOut();
    _showDialogMessage("Signing out...", context);
  }

  /// Simulate profile picture change
  /// Note for students: don't modify this method!
  void _changePicture(BuildContext context) {
    AppLogic.instance().changePicture();
    _showDialogMessage("Changing the picture...", context);
  }

  void _showDialogMessage(String message, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }
}
