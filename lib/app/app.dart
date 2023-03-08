import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:statemanagement_stacked/views/counter_view.dart';
import 'package:statemanagement_stacked/views/home_view.dart';

import '../services/counter_service.dart';

@StackedApp(routes: [
  MaterialRoute(page: CounterView, initial: true),
  MaterialRoute(page: HomeView),
], dependencies: [
  // dependencies me jo services used kare ge wo batane hote hai.
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterService)
])
class App {}
