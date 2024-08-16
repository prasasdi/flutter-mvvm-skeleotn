import 'package:get/get.dart';
import 'package:hello_mvvm_flutter/core/enums/app_pages.dart';

// views
import 'package:hello_mvvm_flutter/presentation/screens/dashboard/dashboard_view.dart';

class AppRoutes
{
  static const String dashboard = '/dashboard';
  // more route names here

  static String getRoute(AppPages page)
  {
    switch (page)
    {
      case AppPages.dashboard:
        return dashboard;
    }
  }

  static List<GetPage> routes = [
    GetPage(name: dashboard, page: () => DashboardView()),
  ];
}