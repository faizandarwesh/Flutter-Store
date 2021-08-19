import 'package:flutter/material.dart';
import 'package:flutter_ui/auth/ui/LoginScreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083384_1280.jpg"), fit: BoxFit.cover)),
            child: Text("Flutter Store",style: TextStyle(fontSize: 22),),
          ),
          ListTile(
            title: const Text('Cart'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
