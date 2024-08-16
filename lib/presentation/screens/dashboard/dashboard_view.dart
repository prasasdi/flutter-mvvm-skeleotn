import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hello_mvvm_flutter/presentation/screens/dashboard/dashboard_view_model.dart';

class DashboardView extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    final DashboardViewModel viewModel = Get.put(DashboardViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Row (
        children: [
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return Text('Title: ${viewModel.mutDashboardModel.value.title}');
              }),
              Obx(() {
                return Text('Items Count: ${viewModel.mutDashboardModel.value.count}');
              }),
              ElevatedButton(onPressed: () {
                viewModel.incrementCountMut();
              }, child: Text('Increase Count'))
            ],
          ))
        ],
      )
    );
  }

}
