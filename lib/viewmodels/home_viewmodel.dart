import 'dart:developer';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statemanagement_stacked/app/app.locator.dart';
import 'package:statemanagement_stacked/app/app.router.dart';
import '../services/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  navigateToCounter() {
    navigationService.navigateToCounterView();
  }
}
