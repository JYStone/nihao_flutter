import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepperDemo'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ),
              child: Stepper(
                // 第几个打开的
                currentStep: _currentStep,
                onStepTapped: (int value) {
                  setState(() {
                    _currentStep = value;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                  });
                },
                onStepCancel: () {
                  setState(() {
                    _currentStep > 0 ? _currentStep -= 1 : _currentStep = 0;
                  });
                },
                steps: [
                  Step(
                    title: Text('Login'),
                    content: Text('Login first'),
                    subtitle: Text('flutter 不使用appbar导航栏时,头部被状态栏遮挡 使用S...'),
                    isActive: _currentStep == 0,
                  ),
                  Step(
                    title: Text('Login'),
                    content: Text('Login first'),
                    subtitle: Text('flutter 不使用appbar导航栏时,头部被状态栏遮挡 使用S...'),
                    isActive: _currentStep == 1,
                  ),
                  Step(
                    title: Text('Login'),
                    content: Text('Login first'),
                    subtitle: Text('flutter 不使用appbar导航栏时,头部被状态栏遮挡 使用S...'),
                    isActive: _currentStep == 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
