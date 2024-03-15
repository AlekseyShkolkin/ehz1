import 'dart:async';

import 'package:flutter/material.dart';
import './dbhelper_upz.dart';
import './model_upz.dart';
import './object_detail_upz.dart';
import 'package:sqflite/sqflite.dart';

DbHelperUpz helper = DbHelperUpz();

class ObjectListUpz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ObjectListUpzState();
}

class ObjectListUpzState extends State {
  DbHelperUpz helper = DbHelperUpz();
  List<Upz> upzs;

  @override
  Widget build(BuildContext context) {
    if (upzs == null) {
      upzs = <Upz>[];
      getData();
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.black,
              size: 22,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'ОБСЛУЖИВАНИЕ УПЗ',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        )),
      ),
      backgroundColor: Colors.white,
      body: upzs.isNotEmpty
          ? objectListItems()
          : Center(
              child: Image.asset(
                'assets/notdate.png',
                fit: BoxFit.fill,
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        heroTag: 'Добавить объект',
        onPressed: () {
          navigateToDetail(Upz('', ''));
        },
        tooltip: 'Добавляет объект',
        child: Icon(
          Icons.add,
          size: 35.0,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }

  objectListItems() {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 2.0),
        itemCount: upzs.length,
        itemBuilder: (BuildContext context, int position) {
          return Container(
            padding: const EdgeInsets.only(bottom: 4.0),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 80, 80, 83),
                    blurRadius: 12.0,
                    spreadRadius: -10.0,
                    offset: Offset(0.1, 6)),
              ],
            ),
            child: Dismissible(
              direction: DismissDirection.endToStart,
              background: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 24.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(187, 30, 16, 1.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(
                        Icons.delete_sweep,
                        color: Colors.white,
                        size: 44,
                      ),
                      Text(
                        'УДАЛИТЬ?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
              key: Key(upzs[position].id.toString()),
              onDismissed: (DismissDirection direction) {
                final int id = upzs[position].id;
                final String title = upzs[position].title.toString();
                setState(() {
                  upzs.removeAt(position);
                  helper.deleteUpz(id);
                  getData();
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$title - УДАЛЕНО'),
                  ),
                );
              },
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  elevation: 2.0,
                  child: ListTile(
                    leading: Column(
                      children: <Widget>[
                        Icon(
                          Icons.linear_scale_rounded,
                          size: 32,
                          color: upzs[position].zamechupz.isEmpty ||
                                  upzs[position].zamechupz == null
                              ? Theme.of(context).primaryColor
                              : Colors.red,
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                      ],
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        upzs[position].title ?? 'Без названия',
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          upzs[position].tokupz.isNotEmpty &&
                                  upzs[position].potencialvklsumm.isNotEmpty
                              ? 'I=' +
                                  upzs[position].tokupz +
                                  'мA  ' +
                                  'U=' +
                                  upzs[position].potencialvklsumm +
                                  'B '
                              : 'Данные отсутствуют',
                          style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black38),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        upzs[position].date1 != null
                            ? Text(
                                'Дата обслуживания ' + upzs[position].date1,
                                style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
                              )
                            : Text(
                                'СОЗДАНО / без даты',
                                style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black38),
                              ),
                      ],
                    ),
                    contentPadding:
                        const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10),
                    isThreeLine: true,
                    onTap: () {
                      debugPrint('Tapped on ' + upzs[position].id.toString());
                      navigateToDetail(upzs[position]);
                    },
                  )),
            ),
          );
        });
  }

  String descriptionParser(String desc) {
    if (desc.isNotEmpty) {
      return desc.length > 42 ? desc.substring(0, 42) + '...' : desc;
    }
    return '...';
  }

  void getData() {
    final Future<Database> dbFuture = helper.initializeDb();
    dbFuture.then((Database result) {
      final Future<List> todosFuture = helper.getUpzs();
      todosFuture?.then((List result) {
        final List<Upz> upzList = <Upz>[];
        for (int i = 0; i < (result?.length ?? 0); i++) {
          upzList.add(Upz.fromObject(result[i]));
          debugPrint(upzList[i].title);
        }
        setState(() {
          upzs = upzList;
        });
        debugPrint('Items: ' + upzs.length.toString());
        var lenlistip = upzs.length.toString();
      });
    });
  }

  Future<void> navigateToDetail(Object object) async {
    final bool result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) => ObjectDetailUpz(object: object)),
    );

    if (result == true) {
      getData();
    }
  }
  // Navigator.pop
}
