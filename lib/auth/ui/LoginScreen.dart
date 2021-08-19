import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.redAccent,
              size: 50,
            ),
            SizedBox(
              height: 120,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
                    child: Text("Email".toUpperCase(),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
                    child: TextFormField(
                      controller: _emailController,
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
                    child: Text("Password".toUpperCase(),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
                    child: TextFormField(
                      controller: _passwordController,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Container(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    child: Text("Login".toUpperCase(),
                        style: TextStyle(fontSize: 18)),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.redAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    side:
                                        BorderSide(color: Colors.redAccent)))),
                    onPressed: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => LoginScreen()))),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                        child: Divider(
                          color: Colors.black,
                          height: 16,
                        ))),
                Text(
                  "Or Connect with".toUpperCase(),
                  style: TextStyle(fontSize: 18),
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                        child: Divider(
                          color: Colors.black,
                          height: 16,
                        ))),
              ],
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Container(
                width: double.infinity,
                height: 60,
                child: ElevatedButton.icon(
                  label: Text("Sign In with Google".toUpperCase(),
                      style: TextStyle(fontSize: 18)),
                  icon: Icon(Icons.shopping_cart,color: Colors.white,),
                  style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                              side:
                              BorderSide(color: Colors.redAccent)))),
                  onPressed: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => LoginScreen())),),
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
              child: Container(
                width: double.infinity,
                height: 60,
                child: ElevatedButton.icon(
                    label: Text("Sign In with Facebook".toUpperCase(),
                        style: TextStyle(fontSize: 18)),
                    icon: Icon(Icons.shopping_cart,color: Colors.white,),
                    style: ButtonStyle(
                        foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                side:
                                BorderSide(color: Colors.blueAccent)))),
                    onPressed: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => LoginScreen())),),
              ),
            ),
            SizedBox(height: 8,)
          ],
        ),
      )),
    );
  }
}
