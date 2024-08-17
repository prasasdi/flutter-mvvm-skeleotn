import 'package:get/get.dart';

class MainContainerViewModel extends GetxController {
  var currentView = ''.obs; // Track the current view

  void updateView(String view) {
    currentView.value = view;
  }
}
