import 'package:get/get.dart';
import 'package:hello_mvvm_flutter/core/enums/app_pages.dart';

// views
import 'package:hello_mvvm_flutter/presentation/screens/dashboard/dashboard_view.dart';
import 'package:hello_mvvm_flutter/presentation/screens/view_dummy/dummy_view.dart';

class AppRoutes
{
  static const String dashboard = '/dashboard';
  static const String dummy = '/dummy';
  // more route names here

  static String getRoute(AppPages page)
  {
    switch (page)
    {
      case AppPages.dashboard:
        return dashboard;
      case AppPages.dummy:
        return dummy;

    }
  }

  static GetPage getPageByName(String name) {
    try {
      return routes.firstWhere((page) => page.name == name);
    } catch (e) {
      throw Exception('Page with name $name not found');
    }
  }

  static List<GetPage> routes = [
    GetPage(name: dashboard, page: () => DashboardView()),
    GetPage(name: dummy, page: () => DummyView()),
  ];
}