import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../viewmodels/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Counter Value:"),
                      ElevatedButton(
                          onPressed: () {}, child: Text("Add Counter value")),
                      ElevatedButton(
                          onPressed: () {
                            viewModel.navigateToHome();
                          },
                          child: Text("Navigate to home"))
                    ]),
              ),
            ),
          );
        });
  }
}
