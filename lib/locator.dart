import 'package:get_it/get_it.dart';
import 'home/view_model/view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ViewModel());
}
