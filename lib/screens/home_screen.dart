import 'package:circle_design/screens/paint/progress_paint.dart';
import 'package:flutter/material.dart';

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
              // child: const SizedBox(
              //   width: 300,
              //   height: 300,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Text("Title",style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.w700),),
              //       Text("1st Day",style: TextStyle(fontSize: 25,color: Colors.pink)),
              //     ],
              //   ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
