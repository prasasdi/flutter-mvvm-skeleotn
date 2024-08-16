import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hello_mvvm_flutter/presentation/routes/routes.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Master MVVM Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.dashboard,
      getPages: AppRoutes.routes,
      // Optionaly define middleware or other settings here
    );
  }
}
