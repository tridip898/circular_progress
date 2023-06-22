import 'package:flutter/material.dart';

import '../paint/progress_paint.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circle Design"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: CustomPaint(
              painter: ProgressPaint(),
              child: const SizedBox(
                width: 300,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Period",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w500),),
                    Text("3rd Day",style: TextStyle(fontSize: 20,color: Colors.pink)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
