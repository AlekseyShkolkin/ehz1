import 'dart:async';

import './start_page.dart';
import 'package:flutter/material.dart';
import './dbhelper_ukz.dart';
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
    int countUkz = await dbHelperUkz.getTodoCountUkz();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (_) => StartPage(
                countUkz: countUkz,
                // countLkp: countLkp,
                // countVhk: countVhk,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ДОБРО ПОЖАЛОВАТЬ!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w300,
            color: Theme.of(context).primaryColor,
          ),
        ),
        // Image.asset(
        //   'assets/images/logo2.png',
        //   width: 100,
        //   height: 100,
        //   fit: BoxFit.fill,
        // ),
      ),
    );
  }
}
