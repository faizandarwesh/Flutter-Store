import 'package:flutter/material.dart';
import 'package:flutter_ui/utils/Constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  CustomAppBar({
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      leading: IconButton(
        onPressed: () => null,
        icon: Icon(Icons.menu),
      ),
      centerTitle: true,
      title: Text(Constants.APP_TITLE),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}
