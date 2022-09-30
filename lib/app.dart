import 'package:exercise_e4/app_logic.dart';
import 'package:flutter/material.dart';

class E4App extends StatelessWidget {
  const E4App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise E4',
      home: const MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO - implement this method
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Profile page",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          elevation: 10,
          actions: <Widget>[
            IconButton(
                iconSize: 32,
                icon: const Icon(Icons.logout),
                onPressed: () {
                  _signOut(context);
                }),
          ]),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showHelp(context);
          },
          child: const Icon(
              Icons.help_outline, size: 44),
        ),

        backgroundColor: Colors.grey[200],
        body: _myContent(context),

    );
  }

  Widget _myContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('images/chuck.jpg'),
          ElevatedButton(
            child: const Text('Change profile picture'),
            onPressed: () {
              _changePicture(context);
            },
          ),
        ],
      ),
    );
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
