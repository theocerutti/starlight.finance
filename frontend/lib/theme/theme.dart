import "package:flutter/material.dart";

ThemeData getThemeData() {
  return ThemeData(
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: Colors.grey.shade700,
      ),
    ),
    canvasColor: Colors.grey.shade300,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade50,
    ),
  );
}
