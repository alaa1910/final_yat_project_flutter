import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView (
        children: <Widget>[
          UserAccountsDrawerHeader(accountName: Text(FirebaseAuth.instance.currentUser.displayName)
            , accountEmail:Text(FirebaseAuth.instance.currentUser.email),
            currentAccountPicture: CircleAvatar(child: Icon(Icons.person,color:Colors.white),backgroundColor:Colors.blueAccent),
            decoration: BoxDecoration(
                color:Colors.red,
                image: DecorationImage(image:AssetImage("images/first.jpg"),fit: BoxFit.fill)

            ),
          ),
          ListTile(
            title: Text("الصفحة الرئيسيه", style: TextStyle(color: Colors.black , fontSize: 18),),
            leading: Icon(Icons.home,color:Colors.blueAccent ,size: 25),
            onTap: (){
              Navigator.of(context).pushNamed('Homepage');
            },
          ),
          Divider(color:Colors.black ,height:2,),
          ListTile(
            title: Text("الأقسام", style: TextStyle(color: Colors.black , fontSize: 18),),
            leading: Icon(Icons.all_inbox_outlined ,color:Colors.blueAccent ,size: 25 ),
            onTap: (){
              Navigator.of(context).pushNamed('categories');
            },
          ),
          Divider(color:Colors.black ,height:2),
          ListTile(
            title: Text("حول التطبيق", style: TextStyle(color: Colors.black , fontSize: 18),),
            leading: Icon(Icons.info ,color:Colors.blueAccent ,size: 25 ),
            onTap: (){
              Navigator.of(context).pushNamed('about');
            },
          ),

          Divider(color:Colors.black ,height:2),
          ListTile(
            title: Text("تسجيل الخروج", style: TextStyle(color: Colors.black , fontSize: 18),),
            leading: Icon(Icons.logout ,color:Colors.blueAccent ,size: 25 ),
            onTap: (){

              Navigator.pushReplacementNamed(context,'login');
            },
          )

        ],
      ),
    );
  }

}