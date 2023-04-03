import 'package:flutter/material.dart';
import 'package:frontend/theme/theme.dart';

import 'routes/routes.dart';
import 'utils/config.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: Config.title, theme: getThemeData(), routerConfig: getRoutes());
  }
}
