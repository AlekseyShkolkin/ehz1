import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import './object_list_ukz.dart';
import './dbhelper_ukz.dart';

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
      // DbHelperUkz dbHelperUkz = DbHelperUkz();
      // DbHelperUkz dbHelperUkz = DbHelperUkz();
      // DbHelperUkz dbHelperUkz = DbHelperUkz();
      dbHelperUkz.getTodoCountUkz();
      // dbHelperUkz.getTodoCountUkz();
      // dbHelperUkz.getTodoCountUkz();
      // dbHelperUkz.getTodoCountUkz();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Center(
            child: Text(
          'ЖУРНАЛ ЭХЗ',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w400,
          ),
        )),
      ),
      body: start_page_list(context),
    );
  }

  ListView start_page_list(context) {
    print('Количество записей: ${widget.countUkz}');
    return ListView(
      children: [
        Divider(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ObjectListUkz(),
              ),
            );
          },
          title: Text(
            'ОБСЛУЖИВАНИЕ УКЗ',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).primaryColor,
            ),
          ),
          trailing: Badge(
            badgeContent: widget.countUkz == null || widget.countUkz == 0
                ? Text('')
                : Text(widget.countUkz.toString()),
            child: Icon(
              Icons.exposure,
              size: 52,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        Divider(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ObjectListUkz(),
              ),
            );
          },
          title: Text(
            'ОБСЛУЖИВАНИЕ УПЗ',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).primaryColor,
            ),
          ),
          // trailing: Badge(
          //   badgeContent: widget.countLkp == null || widget.countLkp == 0
          //       ? Text('')
          //       : Text(widget.countLkp.toString()),
          //   child: Icon(
          //     Icons.imagesearch_roller_rounded,
          //     size: 52,
          //     color: Theme.of(context).accentColor,
          //   ),
          // ),
        ),
        Divider(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ObjectListUkz(),
              ),
            );
          },
          title: Text(
            'ОБСЛУЖИВАНИЕ УДЗ',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).primaryColor,
            ),
          ),
          // trailing: Badge(
          //   badgeContent: widget.countLkp == null || widget.countLkp == 0
          //       ? Text('')
          //       : Text(widget.countLkp.toString()),
          //   child: Icon(
          //     Icons.imagesearch_roller_rounded,
          //     size: 52,
          //     color: Theme.of(context).accentColor,
          //   ),
          // ),
        ),
        Divider(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ObjectListUkz(),
              ),
            );
          },
          title: Text(
            'ОБСЛУЖИВАНИЕ ПЕРЕХОДОВ',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).primaryColor,
            ),
          ),
          // trailing: Badge(
          //   badgeContent: widget.countLkp == null || widget.countLkp == 0
          //       ? Text('')
          //       : Text(widget.countLkp.toString()),
          //   child: Icon(
          //     Icons.imagesearch_roller_rounded,
          //     size: 52,
          //     color: Theme.of(context).accentColor,
          //   ),
          // ),
        ),
        Divider(),
      ],
    );
  }
}
