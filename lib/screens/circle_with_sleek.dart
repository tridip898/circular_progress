import 'package:flutter/material.dart';


class CircleSleekSlider extends StatefulWidget {
  const CircleSleekSlider({super.key});

  @override
  State<CircleSleekSlider> createState() => _CircleSleekSliderState();
}

class _CircleSleekSliderState extends State<CircleSleekSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sleek Slider"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Text("data"),
        ),
      ),
    );
  }
}
