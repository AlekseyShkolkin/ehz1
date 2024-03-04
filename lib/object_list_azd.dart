import 'dart:async';

import 'package:flutter/material.dart';
import './dbhelper_azd.dart';
import './model_azd.dart';
import './object_detail_azd.dart';
import 'package:sqflite/sqflite.dart';

DbHelperAzd helper = DbHelperAzd();

class ObjectListAzd extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ObjectListAzdState();
}

class ObjectListAzdState extends State {
  DbHelperAzd helper = DbHelperAzd();
  List<Azd> azds;

  @override
  Widget build(BuildContext context) {
    if (azds == null) {
      azds = <Azd>[];
      getData();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
            child: Text(
          'ОБСЛУЖИВАНИЕ УДЗ',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        )),
      ),
      body: objectListItems(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        heroTag: 'Добавить объект',
        onPressed: () {
          navigateToDetail(Azd('', ''));
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

  ListView objectListItems() {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 8.0),
        itemCount: azds.length,
        itemBuilder: (BuildContext context, int position) {
          return Container(
            padding: const EdgeInsets.only(bottom: 2.0),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 235, 235, 243),
                    blurRadius: 10.0,
                    spreadRadius: -9.0,
                    offset: Offset(0.0, 7.0)),
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
              key: Key(azds[position].id.toString()),
              onDismissed: (DismissDirection direction) {
                final int id = azds[position].id;
                final String title = azds[position].title.toString();
                setState(() {
                  azds.removeAt(position);
                  helper.deleteAzd(id);
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
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0,
                  child: ListTile(
                    leading: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.white,
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                      ],
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        azds[position].title ?? '' '',
                        style: const TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w800),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          descriptionParser(azds[position].title ?? ''),
                          style: const TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black38),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        azds[position].date1 != null
                            ? Text(
                                'Дата обслуживания ' + azds[position].date1,
                                style: const TextStyle(
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38),
                              )
                            : Text(
                                'СОЗДАНО / без даты',
                                style: const TextStyle(
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black38),
                              ),
                      ],
                    ),
                    contentPadding:
                        const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10),
                    isThreeLine: true,
                    onTap: () {
                      debugPrint('Tapped on ' + azds[position].id.toString());
                      navigateToDetail(azds[position]);
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
      final Future<List> todosFuture = helper.getAzds();
      todosFuture?.then((List result) {
        final List<Azd> azdList = <Azd>[];
        for (int i = 0; i < (result?.length ?? 0); i++) {
          azdList.add(Azd.fromObject(result[i]));
          debugPrint(azdList[i].title);
        }
        setState(() {
          azds = azdList;
        });
        debugPrint('Items: ' + azds.length.toString());
        var lenlistip = azds.length.toString();
      });
    });
  }

  Future<void> navigateToDetail(Object object) async {
    final bool result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (BuildContext context) => ObjectDetailAzd(object: object)),
    );

    if (result == true) {
      getData();
    }
  }
  // Navigator.pop
}
