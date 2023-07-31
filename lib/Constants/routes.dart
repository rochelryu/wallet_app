import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../Views/authentication/authentication_page.dart';
import '../Views/on_boarding/on_boardin_page.dart';



// GoRouter configuration
final router = GoRouter(
  initialLocation: OnBoarding.routeName,
  routes: [
    GoRoute(
      path: OnBoarding.routeName,
      builder: (context, state) => OnBoarding(
        key: UniqueKey(),
      ),
    ),
    GoRoute(
      path: AuthenticationPage.routeName,
      builder: (context, state) => AuthenticationPage(
        key: UniqueKey(),
      ),
    ),

  ],
  debugLogDiagnostics: true,
);