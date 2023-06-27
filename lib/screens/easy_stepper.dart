import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

class EasyStepperPage extends StatefulWidget {
  const EasyStepperPage({super.key});

  @override
  State<EasyStepperPage> createState() => _EasyStepperPageState();
}

class _EasyStepperPageState extends State<EasyStepperPage> {
  int activeStep=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Easy Stepper"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              EasyStepper(
                activeStep: activeStep,
                lineLength: 30,
                stepShape: StepShape.circle,
                stepBorderRadius: 15,
                borderThickness: 2,
                padding: const EdgeInsets.all(20),
                stepRadius: 25,
                finishedStepBorderColor: Colors.deepOrange,
                finishedStepTextColor: Colors.deepOrange,
                finishedStepBackgroundColor: Colors.deepOrange,
                activeStepIconColor: Colors.white,
                showLoadingAnimation: false,
                direction: Axis.horizontal,
                alignment: Alignment.topCenter,
                steps: [
                  EasyStep(
                    customStep: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Opacity(
                        opacity: activeStep >= 0 ? 1 : 0.3,
                        child: const Icon(Icons.edit),
                      ),
                    ),
                    customTitle: const Text(
                      'Dash 1',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  EasyStep(
                    customStep: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Opacity(
                        opacity: activeStep >= 1 ? 1 : 0.3,
                        child: const Icon(Icons.edit),
                      ),
                    ),
                    customTitle: const Text(
                      'Dash 2',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  EasyStep(
                    customStep: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Opacity(
                        opacity: activeStep >= 2 ? 1 : 0.3,
                        child: const Icon(Icons.edit),
                      ),
                    ),
                    customTitle: const Text(
                      'Dash 3',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  EasyStep(
                    customStep: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Opacity(
                        opacity: activeStep >= 3 ? 1 : 0.3,
                        child: const Icon(Icons.edit),
                      ),
                    ),
                    customTitle: const Text(
                      'Dash 4',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
                onStepReached: (index) => setState(() => activeStep = index),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
