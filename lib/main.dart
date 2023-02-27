import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_route/observer/my_observer.dart';
import 'package:nested_route/routes/app_router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AutoRouterDelegate(_appRouter,
          navigatorObservers: () => [MyObserver()],
      initialRoutes: [const SplashRoute()]),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: ThemeData(
        fontFamily: 'Georgia',
        //text styling
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 22.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      debugShowCheckedModeBanner: true,
    );
  }
}
