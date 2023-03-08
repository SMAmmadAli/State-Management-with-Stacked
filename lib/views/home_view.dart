import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:statemanagement_stacked/viewmodels/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
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
                        child: Center(
                          child: Text(
                            viewModel.counterService.counterValue.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            viewModel.navigateToCounter();
                          },
                          child: Text("Navigate to Counter"))
                    ]),
              ),
            ),
          );
        });
  }
}
