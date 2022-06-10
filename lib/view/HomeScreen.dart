import 'package:flutter/material.dart';

import 'AddDetails.dart';
import 'AddimageWithDetails.dart';
import 'ViewDetails.dart';
import 'ViewImageWithDetails.dart';

class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("HomePage"),),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: ()async{
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>AddDetails())
                );
              },
              leading:Icon(Icons.add),
              title: Text("Add Details"),
            ),
            ListTile(
              onTap: ()async{
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>ViewDetails())
                );
              },
              leading:Icon(Icons.preview_sharp),
              title: Text("ViewDetails"),
            ),
            ListTile(
              onTap: ()async{
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>AddimageWithDetails())
                );
              },
              leading:Icon(Icons.add),
              title: Text("Add Image With Details"),
            ),
            ListTile(
              onTap: ()async{
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>ViewWithDetails())
                );
              },
              leading:Icon(Icons.add),
              title: Text("View Image With Details"),
            ),

          ],
        ),

      ),
    );
  }
}
