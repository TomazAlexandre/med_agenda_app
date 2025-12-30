import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'core/routes.dart';

class MedApp extends StatelessWidget {
  const MedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Med App',
      theme: AppTheme.light,
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
