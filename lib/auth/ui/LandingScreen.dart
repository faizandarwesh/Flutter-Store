import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/auth/ui/LoginScreen.dart';
import 'package:flutter_ui/auth/ui/RegisterScreen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                color: Colors.redAccent,
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1511317559916-56d5ddb62563?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=639&q=80"),
                  fit: BoxFit.fill,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 50,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Flutter Store",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Enrich your shopping list wisely.",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: TextButton(
                        child: Text("Sign Up".toUpperCase(),
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(15)),
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    side: BorderSide(color: Colors.white)))),
                        onPressed: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => RegisterScreen()))),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                        child: Text("Login".toUpperCase(),
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        style: ButtonStyle(
                            foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    side: BorderSide(color: Colors.white)))),
                        onPressed: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => LoginScreen()))),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
