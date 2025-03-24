import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'config/dependency_injector.dart';
import 'config/routing/app_routes.dart';
import 'config/routing/router.dart';
import 'core/services/navigation_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.mainTabsScreen,
      onGenerateInitialRoutes: (_) => [
        RouteGenerator.onGenerateRoute(RouteSettings(name: _)),
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Cairo',
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontFamily: 'Cairo',
          ),
        ),
      ),
      onGenerateRoute: RouteGenerator.onGenerateRoute,
      onUnknownRoute: RouteGenerator.onUnknownRoute,
      navigatorObservers: [getIt<NavigationService>().routeObserver],
      navigatorKey: getIt<NavigationService>().navigationKey,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
