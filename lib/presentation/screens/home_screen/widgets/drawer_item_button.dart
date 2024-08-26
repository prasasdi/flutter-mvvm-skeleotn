import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonDrawerItem extends StatefulWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final bool isSelected; // Add this to manage the selected state
  final double size;

  const ButtonDrawerItem({
    required this.icon,
    required this.text,
    required this.onTap,
    this.isSelected = false,
    this.size = 125.0,
    Key? key,
  }) : super(key: key);

  @override
  _BuildDrawerItemState createState() => _BuildDrawerItemState();
}

class _BuildDrawerItemState extends State<ButtonDrawerItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: widget.onTap,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              color: widget.isSelected ? Colors.blue.withOpacity(0.2) : Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: widget.isSelected
                  ? [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.4),
                  spreadRadius: 4,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ]
                  : [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: DrawerGestureItem(
              icon: widget.icon,
              text: widget.text,
              onTap: () {
                setState(() {
                  // Handle any additional state changes if needed
                });
                widget.onTap();
              },
            ),
          ),
        ),
      ),
    );
  }
}

Widget DrawerGestureItem({
  required IconData icon,
  required String text,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 24.0),
            SizedBox(width: 8.0),
            Text(text, style: TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    ),
  );
}
