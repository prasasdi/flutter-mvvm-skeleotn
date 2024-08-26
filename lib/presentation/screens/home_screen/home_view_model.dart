import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  var currentView = ''.obs; // Track the current view

  void updateView(String view) {
    currentView.value = view;
  }
}
