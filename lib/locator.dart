import 'package:first_web_server/services/api.dart';
import 'package:get_it/get_it.dart';
import 'package:first_web_server/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => Api());
}
