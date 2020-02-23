import 'package:myworld/views/course/main.dart';
import 'package:myworld/views/home.dart';
import 'package:myworld/views/profile.dart';
import 'custom_drawer/drawer_user_controller.dart';
import 'custom_drawer/home_drawer.dart';
import 'app_theme.dart';
import 'package:flutter/material.dart';

class RouterScreen extends StatefulWidget {
  @override
  _RouterScreenState createState() => _RouterScreenState();
}

class _RouterScreenState extends State<RouterScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;
  AnimationController sliderAnimationController;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = HomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            animationController: (AnimationController animationController) {
              sliderAnimationController = animationController;
            },
            onDrawerCall: (DrawerIndex drawerIndexdata) => changeIndex(drawerIndexdata),
            screenView: screenView,
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = HomeScreen();
        });
      } else if (drawerIndex == DrawerIndex.Profile) {
        setState(() {
          screenView = ProfileScreen();
        });
      } else if (drawerIndex == DrawerIndex.Course) {
        setState(() {
          screenView = CourseScreeen();
        });
      } else {
        //do in your way......
      }
    }
  }
}