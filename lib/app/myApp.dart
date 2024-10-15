import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vive/config/appRoutes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Vive',
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}