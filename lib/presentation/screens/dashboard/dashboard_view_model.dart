import 'package:get/get.dart';
import 'package:hello_mvvm_flutter/presentation/screens/dashboard/dashboard_model.dart';
import 'package:hello_mvvm_flutter/presentation/screens/dashboard/dashboard_model_mutable.dart';

class DashboardViewModel extends GetxController
{
  // Initialize the Rx variable with a default DashboardModel instance
  var dashboardModel = DashboardModel((b) => b
    ..id = 1
    ..title = 'Initial Title'
    ..count = 0).obs;

  var mutDashboardModel = MutDashboardModel(id: 2, title: 'Initial Mutable Object', count: 0).obs;

  // Example method to update the immutable model
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

  // Example method to update the mutable model
  void updateTitleMut(String newTitle) {
    mutDashboardModel.value = mutDashboardModel.value.copyWith(title: newTitle);
  }

  void incrementCountMut() {
    mutDashboardModel.value = mutDashboardModel.value.copyWith(count: mutDashboardModel.value.count + 1);
  }

  void resetDashboardMut() {
    mutDashboardModel.value = MutDashboardModel(id: 2, title: 'Initial Mutable Object', count: 0);
  }

}
