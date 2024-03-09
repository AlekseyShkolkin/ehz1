import 'dart:async';

import './start_page.dart';
import 'package:flutter/material.dart';
import './dbhelper_ukz.dart';
import './dbhelper_udz.dart';
import './dbhelper_upz.dart';
import './dbhelper_azd.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './auth.dart';

class LoadProg extends StatefulWidget {
  @override
  State<LoadProg> createState() => _LoadProgState();
}

class _LoadProgState extends State<LoadProg> {
  @override
  void initState() {
    super.initState();

    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, navigationPage);
  }

  void navigationPage() async {
    DbHelperUkz dbHelperUkz = DbHelperUkz();
    DbHelperUpz dbHelperUpz = DbHelperUpz();
    DbHelperUdz dbHelperUdz = DbHelperUdz();
    DbHelperAzd dbHelperAzd = DbHelperAzd();

    int countUkz = await dbHelperUkz.getTodoCountUkz();
    int countUpz = await dbHelperUpz.getTodoCountUpz();
    int countUdz = await dbHelperUdz.getTodoCountUdz();
    int countAzd = await dbHelperAzd.getTodoCountAzd();

    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => StartPage(
          countUkz: countUkz,
          countUpz: countUpz,
          countUdz: countUdz,
          countAzd: countAzd,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration:
            Duration(milliseconds: 1500), // Длительность анимации
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(0, 122, 223, 1),
              Color.fromRGBO(0, 236, 188, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            'ДОБРО ПОЖАЛОВАТЬ!',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          // Image.asset(
          //   'assets/images/logo2.png',
          //   width: 100,
          //   height: 100,
          //   fit: BoxFit.fill,
          // ),
        ),
      ),
    );
  }
}
