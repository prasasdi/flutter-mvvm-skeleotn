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
      body: Column(
        children: [
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: _buildDashboardItem(text: '12500', description: 'Todays Revenue', margin: EdgeInsets.only(left: 8))),
              Expanded(child: _buildDashboardItem(text: '10', description: 'Take Outs', margin: EdgeInsets.only(left: 8))),
              Expanded(child: _buildDashboardItem(text: '20', description: 'Online Orders', margin: EdgeInsets.only(left: 8))),
              Expanded(child: _buildDashboardItem(text: '199', description: 'Overall Performance', margin: EdgeInsets.only(left: 8))),
              SizedBox(width: 8), // Adds horizontal space between items
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center, // Centers children horizontally
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
                ),
          ))
        ],
      )

    );
  }

  Widget _buildDashboardItem({
    // required IconData icon,
    required String text,
    required String description,
    // required VoidCallback onTap,
    EdgeInsetsGeometry? margin,
  }) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns content to the left
          children: [
            Text('image'),
            SizedBox(height: 10),
            Text(text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            Text(description,
            style: TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}


