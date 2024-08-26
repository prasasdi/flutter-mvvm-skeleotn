import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'drawer_item_button.dart';

Widget DrawerGestureItem({
  required IconData icon,
  required String text,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size:24.0),
            SizedBox(width: 8.0),
            Text(text, style: TextStyle(fontSize: 16.0))
          ],
        ),
      ),
    ),
  );
}

Widget BuildDrawerItem({
  required IconData icon,
  required String text,
  required VoidCallback onTap,
  double size = 125
})
{
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0),
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 2),
              )
            ]
        ),
        child: DrawerGestureItem(icon: icon, text: text, onTap: onTap),
      ),
    )
  );
}

Widget _buildDrawerItem_ListTile({
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