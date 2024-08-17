import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hello_mvvm_flutter/presentation/widgets/navigation_sidebar/navigation_sidebar_view.dart';
import 'package:hello_mvvm_flutter/presentation/widgets/main_container/main_container_view_model.dart';
import 'package:hello_mvvm_flutter/presentation/routes/routes.dart';

class MainContainerView extends StatelessWidget {
  final Widget child; // The view to be displayed
  final MainContainerViewModel _controller = Get.put(MainContainerViewModel());

  MainContainerView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationSidebar(), // The navigation sidebar
          Expanded(
            child: Obx(() {
              String currentRoute = _controller.currentView.value;
              return currentRoute.isEmpty
                  ? child
                  : GetMaterialApp(
                initialRoute: currentRoute,
                getPages: AppRoutes.routes,
              );
            }),
          ),
        ],
      ),
    );
  }
}
