import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statemanagement_stacked/app/app.router.dart';
import 'package:statemanagement_stacked/services/counter_service.dart';

import '../app/app.locator.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }

  navigateToHome() {
    navigationService.navigateToHomeView();
  }
}
