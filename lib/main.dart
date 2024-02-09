import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import './dbhelper_ukz.dart';
import './load_prog.dart';
import './auth.dart';
import './start_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(QualContr());

class QualContr extends StatefulWidget {
  @override
  QualContrState createState() => QualContrState();
}

class QualContrState extends State<QualContr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ru', 'RU'),
      ],
      theme: ThemeData(
        primaryColor: Color(0xFF007CB0),
        accentColor: Color(0xFFF6B600),
      ),
      home: LoadProg(),
    );
  }
}
