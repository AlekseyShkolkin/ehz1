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
          'ОБСЛУЖИВАНИЕ АЖД',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        )),
      ),
      backgroundColor: Colors.white,
      body: azds.isNotEmpty
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

  objectListItems() {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 2.0),
        itemCount: azds.length,
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
                      borderRadius: BorderRadius.circular(12.0)),
                  elevation: 2.0,
                  child: ListTile(
                    leading: Column(
                      children: <Widget>[
                        Icon(
                          Icons.directions_car_sharp,
                          size: 32,
                          color: azds[position].zamechan1.isEmpty
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
                        (azds[position].title != null &&
                                azds[position].kmtruby != null &&
                                azds[position].doroga != null &&
                                azds[position].kmdorogi != null &&
                                azds[position].title.isNotEmpty &&
                                azds[position].kmtruby.isNotEmpty &&
                                azds[position].doroga.isNotEmpty &&
                                azds[position].kmdorogi.isNotEmpty)
                            ? '${azds[position].title}-${azds[position].kmtruby}, ${azds[position].doroga}-${azds[position].kmdorogi}'
                            : 'Нет данных',
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
                          (azds[position].potenctrubsumm1 != null &&
                                  azds[position].potencfutlsumm1 != null &&
                                  azds[position].potenctrubsumm1.isNotEmpty &&
                                  azds[position].potencfutlsumm1.isNotEmpty)
                              ? 'Uт=${azds[position].potenctrubsumm1}B  Uф=${azds[position].potencfutlsumm1}B'
                              : '',
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black38,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        azds[position].date1 != null
                            ? Text(
                                'Дата обслуживания ' + azds[position].date1,
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
