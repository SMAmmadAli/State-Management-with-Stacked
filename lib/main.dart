import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statemanagement_stacked/app/app.router.dart';
import 'package:statemanagement_stacked/views/counter_view.dart';

import 'app/app.locator.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
