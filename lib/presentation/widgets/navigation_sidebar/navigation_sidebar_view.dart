import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_mvvm_flutter/presentation/routes/routes.dart';
import 'package:hello_mvvm_flutter/presentation/widgets/navigation_sidebar/navigation_sidebar_view_model.dart';

class NavigationSidebar extends StatelessWidget {
  final NavigationSidebarViewModel _controller = Get.put(NavigationSidebarViewModel());

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          _buildDrawerItem(
            icon: Icons.dashboard,
            text: 'Dashboard',
            onTap: () {
              _controller.selectPage(AppRoutes.dashboard);
              /*
              Get.toNamed ini ke halaman sebagai full view
               */
              // Get.toNamed(AppRoutes.dashboard);
            },
          ),
          _buildDrawerItem(
            icon: Icons.settings,
            text: 'Settings',
            onTap: () {
              _controller.selectPage('settings');
              // Get.toNamed('/settings');
            },
          ),
          // Add more items here as needed
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}
