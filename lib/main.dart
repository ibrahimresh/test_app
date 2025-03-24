import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'app.dart';
import 'config/dependency_injector.dart' as di;
import 'core/storage/shared_prefs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  //initialize dependencies
  await di.init();
  //initialize shared prefs
  await SharedPrefs.init();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'SA')],
        path: 'assets/translations',
        fallbackLocale: const Locale('ar', 'SA'),
        startLocale: const Locale('ar', 'SA'),
        useFallbackTranslations: true,
        child: const MyApp()),
  );
}
