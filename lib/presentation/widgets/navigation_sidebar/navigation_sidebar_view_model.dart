import 'package:get/get.dart';

class NavigationSidebarViewModel extends GetxController {
  var selectedPage = ''.obs; // Track the selected page

  void selectPage(String page) {
    selectedPage.value = page;
  }
}