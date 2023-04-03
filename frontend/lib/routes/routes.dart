import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/homepage.dart';
import '../pages/errorview.dart';
import '../utils/config.dart';
import '../layouts/appbar.dart';

GoRouter getRoutes() {
  return GoRouter(
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
            body: Column(
              children: [
                const CustomAppBar(logoUrl: Config.logo, title: Config.title),
                Expanded(
                  child: Container(
                    color: Theme.of(context).canvasColor,
                    child: child,
                  ),
                ),
              ],
            ),
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
}
