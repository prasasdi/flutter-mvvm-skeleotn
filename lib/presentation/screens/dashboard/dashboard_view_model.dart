import 'package:get/get.dart';
import 'package:hello_mvvm_flutter/presentation/screens/dashboard/dashboard_model.dart';
import 'dashboard_model.dart';

class DashboardViewModel extends GetxController
{
  // Initialize the Rx variable with a default DashboardModel instance
  var dashboardModel = DashboardModel((b) => b
    ..id = 1
    ..title = 'Initial Title'
    ..count = 0).obs;

  // Example method to update the model
  void updateTitle(String newTitle) {
    dashboardModel.value = dashboardModel.value.rebuild((b) => b
      ..title = newTitle);
  }

  void incrementCount() {
    dashboardModel.value = dashboardModel.value.rebuild((b) => b
      ..count = (b.count ?? 0) + 1);
  }

  void resetDashboard() {
    dashboardModel.value = dashboardModel.value.rebuild((b) => b
      ..title = 'Reset Title'
      ..count = 0);
  }
}
