import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/auth/ui/LoginScreen.dart';
import 'package:flutter_ui/custom_widgets/WebViewScreen.dart';

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
                    image: NetworkImage("https://images.unsplash.com/photo-1511317559916-56d5ddb62563?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=639&q=80"), fit: BoxFit.cover)),
            child: Center(child: Text("Flutter Store",style: TextStyle(fontSize: 32,color: Colors.redAccent),)),
          ),
          ListTile(
            title: const Text('WebView'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, CupertinoPageRoute(builder: (context) => WebViewScreen()));
            },
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
             Navigator.push(context, CupertinoPageRoute(builder: (context)=> LoginScreen()));
            },
          ),
        ],
      ),
    );
  }
}
