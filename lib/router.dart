import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:print_log/screens/home_screen.dart';
import 'package:print_log/screens/second_screen.dart';
import 'package:print_log/screens/third_screen.dart';
import 'package:print_log/screens/fourth_screen.dart';
import 'package:print_log/screens/nested_screen.dart';
import 'package:print_log/screens/another_nested_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
    GoRoute(
      path: '/second',
      builder: (BuildContext context, GoRouterState state) =>
          const SecondScreen(),
      routes: [
        GoRoute(
          path: 'nested/:id',
          builder: (BuildContext context, GoRouterState state) {
            final id = state.pathParameters['id']!;
            return NestedScreen(id: id);
          },
          routes: [
            GoRoute(
              path: 'another',
              builder: (BuildContext context, GoRouterState state) =>
                  const AnotherNestedScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/third',
      builder: (BuildContext context, GoRouterState state) =>
          const ThirdScreen(),
    ),
    GoRoute(
      path: '/fourth',
      builder: (BuildContext context, GoRouterState state) =>
          const FourthScreen(),
    ),
    GoRoute(
      path: '/redirect',
      redirect: (BuildContext context, GoRouterState state) => '/second',
    ),
  ],
  redirect: (BuildContext context, GoRouterState state) {
    final queryParams = state.uri.queryParameters;
    if (queryParams.containsKey('redirectTo')) {
      return queryParams['redirectTo'];
    }
    return null;
  },
);
