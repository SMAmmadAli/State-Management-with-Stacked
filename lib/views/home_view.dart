import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../viewmodels/counter_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.amber,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            viewModel.navigateToHome();
                          },
                          child: Text("Navigate to Counter"))
                    ]),
              ),
            ),
          );
        });
  }
}
