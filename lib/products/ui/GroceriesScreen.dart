import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/custom_widgets/CustomAppBar.dart';
import 'package:flutter_ui/custom_widgets/CustomDrawer.dart';
import 'package:flutter_ui/custom_widgets/GroceriesListTile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_ui/utils/Constants.dart';

class GroceriesScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
        height: 60,
        globalKey: _scaffoldKey,
      ),
      drawer: CustomDrawer(),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection(Constants.PRODUCTS_COLLECTION)
              .snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CupertinoActivityIndicator(),);
            }
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 300),
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (_, index) {
                  return Hero(
                    tag: snapshot.data!.docs[index]['imageUrl'],
                    child: Card(
                      elevation: 8,
                      margin: const EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.network(
                              snapshot.data!.docs[index]['imageUrl'],
                              fit: BoxFit.cover,
                            ),
                            ListTile(
                              title: Text(
                                snapshot.data!.docs[index]['name'],
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 16),
                              ),
                              subtitle: Text(
                                '\$${snapshot.data!.docs[index]['imageUrl']}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }),
    );
  }
}
