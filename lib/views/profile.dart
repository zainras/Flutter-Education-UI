import 'package:flutter/material.dart';
import 'package:myworld/app_theme.dart';

class ProfileScreen extends StatefulWidget {
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    // title section
    Widget  titleSection = Container(
      padding: const EdgeInsets.all(10),
      child: Text('Edit Profile', style: TextStyle(fontSize: 22.0)),
    );

    // image profile section
    Widget imageProfileSection = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              width: 118,
              height: 118,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjkz48B7kVfll-LhGIs0IL2zsPAoOjon5u1hBANFEu98A5BAqJ&s')
                )
              )
            ),
          ),
          Container(
            transform: Matrix4.translationValues(40.0, -30.0, 0.0),
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.greenAccent,
            ),
            child: Icon(
              Icons.photo_camera,
              color: Colors.white,
              size: 16.0,
            ),
          ),
        ],
      ),
      
    );

    // profile data section
    Widget profileDataSection = Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 18.0, bottom: 18.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2.0, color: Colors.black12)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Username', style: TextStyle(color: Colors.black38)),
                Text('Amanda Jane'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, bottom: 18.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2.0, color: Colors.black12)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Email', style: TextStyle(color: Colors.black38)),
                Text('amanda@jane.com'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, bottom: 18.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2.0, color: Colors.black12)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Phone', style: TextStyle(color: Colors.black38)),
                Text('+ 65 8778 3475'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, bottom: 18.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2.0, color: Colors.black12)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Date of birth', style: TextStyle(color: Colors.black38)),
                Text('18/05/1990'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 18.0, bottom: 18.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2.0, color: Colors.black12)
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Address', style: TextStyle(color: Colors.black38)),
                Text('123 Royal Street, New York'),
              ],
            ),
          ),
        ],
      ),
    );


    return MaterialApp(
      title: 'UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Container(
          color: AppTheme.nearlyWhite,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: AppTheme.nearlyWhite,
              body: ListView(
                children: <Widget>[
                  titleSection,
                  imageProfileSection,
                  profileDataSection,
                ],
              )
            )
          ),
        ),
      )
    );
  }
}