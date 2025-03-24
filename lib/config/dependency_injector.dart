import 'package:flutter_test_app/core/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future init() async {
  getIt.registerLazySingleton(() => NavigationService());
  
  //RemoteDataSources

  //Repositories

  //UseCases

  //BLOCs
}
