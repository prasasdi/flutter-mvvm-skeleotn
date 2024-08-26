import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hello_mvvm_flutter/presentation/routes/routes.dart';
import 'package:hello_mvvm_flutter/presentation/screens/dashboard/dashboard_view.dart';
import 'package:hello_mvvm_flutter/presentation/screens/home_screen/home_view.dart';

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
      /*
      Pakai initialRoute untuk keperluan debug page
       */
      // initialRoute: AppRoutes.dashboard,
      getPages: AppRoutes.routes,
      home: HomeView(child: DashboardView())
      // Optionaly define middleware or other settings here
    );
  }
}
