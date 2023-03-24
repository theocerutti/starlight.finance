import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'errorview.dart';
import 'homepage.dart';

void main() {
  runApp(const App());
}

final GoRouter _router = GoRouter(
  errorBuilder: (BuildContext context, Object error) => const ErrorView(),
  routes: <RouteBase>[
    GoRoute(
      path: '/error',
      builder: (BuildContext context, GoRouterState state) =>
      const ErrorView(),
    ),
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Starlight'),
          ),
          body: child,
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
          const HomePage(),
        ),
      ],
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Starlight',
      theme: ThemeData(),
      routerConfig: _router
    );
  }
}