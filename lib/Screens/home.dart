import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mkdreams/Screens/Exam/Exam_Rseult.dart';
import 'package:mkdreams/widgets/AppBar.dart';
import 'package:mkdreams/widgets/BouncingButton.dart';
import 'package:mkdreams/widgets/DashboardCards.dart';
import 'package:mkdreams/widgets/MainDrawer.dart';
import 'package:mkdreams/widgets/UserDetailCard.dart';

import 'Attendance/Attendance.dart';
import 'Leave_Apply/Leave_apply.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late Animation animation, delayedAnimation, muchDelayedAnimation, LeftCurve;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp();
    animationController = AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation =
        Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: -1.0, end: 0.0)
        .animate(CurvedAnimation(parent: animationController, curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0)
        .animate(CurvedAnimation(parent: animationController, curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));

    LeftCurve = Tween(begin: -1.0, end: 0.0)
        .animate(CurvedAnimation(parent: animationController, curve: Interval(0.5, 1.0, curve: Curves.easeInOut)));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget? child) {
        final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
        return Scaffold(
          key: _scaffoldKey,
          drawer: Drawer(
            elevation: 0,
            child: MainDrawer(),
          ),
          appBar: CommonAppBar(
            menuenabled: true,
            notificationenabled: true,
            ontap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            titleString: "Dashboard",
          ),
          body: ListView(
            children: [
              UserDetailCard(),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                child: Container(
                  alignment: Alignment(1.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(muchDelayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => Attendance(),
                                  ));
                            },
                            child: DashboardCard(
                              name: "Attendance",
                              imgpath: "attendance.png",
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(delayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {},
                            child: DashboardCard(
                              name: "Profile",
                              imgpath: "profile.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                child: Container(
                  alignment: Alignment(1.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(muchDelayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => ExamResult(),
                                  ));
                            },
                            child: DashboardCard(
                              name: "Exam",
                              imgpath: "exam.png",
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(delayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {},
                            child: DashboardCard(
                              name: "TimeTable",
                              imgpath: "calendar.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                child: Container(
                  alignment: Alignment(1.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(muchDelayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {},
                            child: DashboardCard(
                              name: "Library",
                              imgpath: "library.png",
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(delayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {},
                            child: DashboardCard(
                              name: "Track Bus",
                              imgpath: "bus.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 10, 30, 10),
                child: Container(
                  alignment: Alignment(1.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(muchDelayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {},
                            child: DashboardCard(
                              name: "Activity",
                              imgpath: "activity.png",
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(delayedAnimation.value * width, 0, 0),
                          child: Bouncing(
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => LeaveApply(),
                                  ));
                            },
                            child: DashboardCard(
                              name: "Apply Leave",
                              imgpath: "leave_apply.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
