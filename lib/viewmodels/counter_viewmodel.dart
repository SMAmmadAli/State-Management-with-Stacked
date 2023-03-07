import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statemanagement_stacked/app/app.router.dart';

import '../app/app.locator.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  navigateToHome() {
    navigationService.navigateToHomeView();
  }
}
