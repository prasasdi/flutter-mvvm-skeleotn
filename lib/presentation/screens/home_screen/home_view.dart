import 'package:flutter/material.dart';
import 'package:get/get.dart';

// widgets
import 'package:hello_mvvm_flutter/presentation/screens/home_screen/widgets/drawer_item_button.dart';
import 'package:hello_mvvm_flutter/presentation/screens/home_screen/home_view_model.dart';
import 'package:hello_mvvm_flutter/presentation/routes/routes.dart';

class HomeView extends StatelessWidget {
  final Widget child; // The view to be displayed
  final HomeViewModel _controller = Get.put(HomeViewModel());

  HomeView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            width: 200,
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Navigation Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Obx(() {
                    return ButtonDrawerItem(
                        icon: Icons.dashboard,
                        text: 'Dashboard',
                        isSelected: _controller.currentView.value == AppRoutes.dashboard,
                        onTap: () {
                      _controller.updateView(AppRoutes.dashboard);
                    });
                  }),
                  Obx(() {
                    return ButtonDrawerItem(
                      icon: Icons.settings,
                      text: 'Settings',
                      isSelected: _controller.currentView.value == AppRoutes.dummy,
                      onTap: () {
                        _controller.updateView(AppRoutes.dummy);
                      });
                  }),

                ],
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              String currentRoute = _controller.currentView.value;

              if (currentRoute.isEmpty) {
                return child;
              }

              Widget page = AppRoutes.getPageByName(currentRoute).page();
              return page;

              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (Get.currentRoute != currentRoute) {
                  Get.toNamed(currentRoute);
                }
              });

              return Center(child: CircularProgressIndicator()); // Placeholder
            }),
          ),
        ],
      ),
    );
  }
}
