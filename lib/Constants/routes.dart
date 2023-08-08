import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mon_gay/Views/authentication/signin_page.dart';
import 'package:mon_gay/Views/authentication/signup_page.dart';
import 'package:mon_gay/Views/home_page.dart';
import '../Views/authentication/authentication_page.dart';
import '../Views/on_boarding/on_boardin_page.dart';



// GoRouter configuration
final router = GoRouter(
  initialLocation: HomePage.routeName,
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
      routes: [
        GoRoute(
          path: SignupPage.routeName,
          builder: (context, state) => SignupPage(
            key: UniqueKey(),
          ),
        ),
        GoRoute(
          path: SigninPage.routeName,
          builder: (context, state) => SigninPage(
            key: UniqueKey(),
          ),
        ),
      ]
    ),
    GoRoute(
      path: HomePage.routeName,
      builder: (context, state) => HomePage(
        key: UniqueKey(),
      ),
    ),


  ],
  debugLogDiagnostics: true,
);