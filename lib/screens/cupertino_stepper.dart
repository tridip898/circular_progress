import 'package:flutter/material.dart';

class CupertinoStepperPage extends StatefulWidget {
  const CupertinoStepperPage({super.key});

  @override
  State<CupertinoStepperPage> createState() => _CupertinoStepperPageState();
}

class _CupertinoStepperPageState extends State<CupertinoStepperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino Stepper"),
      ),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
