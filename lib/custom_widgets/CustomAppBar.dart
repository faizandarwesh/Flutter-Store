import 'package:flutter/material.dart';
import 'package:flutter_ui/utils/Constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final GlobalKey<ScaffoldState> globalKey;

  CustomAppBar({
    this.height = kToolbarHeight,
    required this.globalKey
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      leading: IconButton(
        onPressed: () => globalKey.currentState!.openDrawer(),
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
