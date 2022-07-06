import 'package:flutter/material.dart';

import 'SecondPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: RaisedButton(
          child: const Text(
            'Navigate to a new screen >>',
            style: TextStyle(fontSize: 24.0),
          ),
          onPressed: () {
            nextPage(context);
          },
        ),
      ),
    );
  }

  void nextPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SecondPage()));
  }
}
