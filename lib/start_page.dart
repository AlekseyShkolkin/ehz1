import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import './object_list_ukz.dart';
import './object_list_upz.dart';
import './object_list_udz.dart';
import './object_list_azd.dart';
import './dbhelper_ukz.dart';
import './dbhelper_upz.dart';
import './dbhelper_udz.dart';
import './dbhelper_azd.dart';

class StartPage extends StatefulWidget {
  final int countUkz;
  final int countUpz;
  final int countUdz;
  final int countAzd;

  StartPage({
    this.countUkz,
    this.countUpz,
    this.countUdz,
    this.countAzd,
  });

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int countUkz;
  int countUpz;
  int countUdz;
  int countAzd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      countUkz = widget.countUkz;
      countUpz = widget.countUpz;
      countUdz = widget.countUdz;
      countAzd = widget.countAzd;
      DbHelperUkz dbHelperUkz = DbHelperUkz();
      DbHelperUpz dbHelperUpz = DbHelperUpz();
      DbHelperUdz dbHelperUdz = DbHelperUdz();
      DbHelperAzd dbHelperAzd = DbHelperAzd();
      dbHelperUkz.getTodoCountUkz();
      dbHelperUpz.getTodoCountUpz();
      dbHelperUdz.getTodoCountUdz();
      dbHelperAzd.getTodoCountAzd();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'ЖУРНАЛ ЭХЗ',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
      body: start_page_list(context),
      backgroundColor: Colors.white,
    );
  }

  GridView start_page_list(context) {
    print('Количество записей: ${widget.countUkz}');
    return GridView.count(
      primary: false,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: [
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ObjectListUkz(),
                ),
              );
            },
            child: Stack(
              children: [
                Container(
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
                ),
                ListTile(
                  title: Text(
                    'УКЗ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Badge(
                    position: BadgePosition.bottomEnd(),
                    badgeStyle: BadgeStyle(
                      badgeColor: Theme.of(context).colorScheme.secondary,
                      elevation: 2,
                    ),
                    badgeContent:
                        widget.countUkz == null || widget.countUkz == 0
                            ? Text('')
                            : Text(
                                widget.countUkz.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                    child: Icon(
                      Icons.exposure,
                      size: 54,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ObjectListUpz(),
                ),
              );
            },
            child: Stack(
              children: [
                Container(
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
                ),
                ListTile(
                  title: Text(
                    'УПЗ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Badge(
                    position: BadgePosition.bottomEnd(),
                    badgeStyle: BadgeStyle(
                      badgeColor: Theme.of(context).colorScheme.secondary,
                      elevation: 2,
                    ),
                    badgeContent:
                        widget.countUpz == null || widget.countUpz == 0
                            ? Text('')
                            : Text(
                                widget.countUpz.toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                    child: Icon(
                      Icons.linear_scale_rounded,
                      size: 54,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ObjectListUdz(),
                ),
              );
            },
            child: Stack(
              children: [
                Container(
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
                ),
                ListTile(
                  title: Text(
                    'УДЗ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Badge(
                    position: BadgePosition.bottomEnd(),
                    badgeStyle: BadgeStyle(
                      badgeColor: Theme.of(context).colorScheme.secondary,
                      elevation: 2,
                    ),
                    badgeContent:
                        widget.countUdz == null || widget.countUdz == 0
                            ? Text('')
                            : Text(
                                widget.countUdz.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                    child: Icon(
                      Icons.train,
                      size: 54,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ObjectListAzd(),
                ),
              );
            },
            child: Stack(
              children: [
                Container(
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
                ),
                ListTile(
                  title: Text(
                    'АЖД',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Badge(
                    position: BadgePosition.bottomEnd(),
                    badgeStyle: BadgeStyle(
                      badgeColor: Theme.of(context).colorScheme.secondary,
                      elevation: 2,
                    ),
                    badgeContent:
                        widget.countAzd == null || widget.countAzd == 0
                            ? Text('')
                            : Text(
                                widget.countAzd.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.directions_car_sharp,
                          size: 54,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
