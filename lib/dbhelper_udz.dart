import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import './model_udz.dart';

class DbHelperUdz {
  static final DbHelperUdz _dbHelperUdz = DbHelperUdz._internal();
  String tblUdz = 'udz';
  String colId = 'id';
  String coltitle = 'title';
  String coldate = 'date';

  String colmarka1 = 'marka1';
  String colsostojanie1 = 'sostojanie1';
  String colpotencrels1 = 'potencrels1';
  String colpotenctrub1 = 'potenctrub1';
  String coledsudz1 = 'edsudz1';
  String colnaprshunt1 = 'naprshunt1';
  String coltokshunt1 = 'tokshunt1';
  String colizmnaprshunt1 = 'izmnaprshunt1';
  String colsoprotudz1 = 'soprotudz1';
  String colelecshet1 = 'elecshet1';
  String colnarabshet1 = 'narabshet1';
  String colfoto1 = 'foto1';
  String colzamech1 = 'zamech1';
  String colmarka2 = 'marka2';
  String colsostojanie2 = 'sostojanie2';
  String colpotencrels2 = 'potencrels2';
  String colpotenctrub2 = 'potenctrub2';
  String coledsudz2 = 'edsudz2';
  String colnaprshunt2 = 'naprshunt2';
  String coltokshunt2 = 'tokshunt2';
  String colizmnaprshunt2 = 'izmnaprshunt2';
  String colsoprotudz2 = 'soprotudz2';
  String colelecshet2 = 'elecshet2';
  String colnarabshet2 = 'narabshet2';
  String colfoto2 = 'foto2';
  String colzamech2 = 'zamech2';

  DbHelperUdz._internal();

  factory DbHelperUdz() {
    return _dbHelperUdz;
  }

  static Database _db;

  Future<Database> get db async {
    _db ??= await initializeDb();
    return _db;
  }

  Future<Database> initializeDb() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final String path = dir.path + '/udz.db';
    final Database dbUdzs =
        await openDatabase(path, version: 1, onCreate: _onCreate);
    return dbUdzs;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
        CREATE TABLE $tblUdz(
        $colId INTEGER PRIMARY KEY, 
        $coltitle TEXT,
        $coldate TEXT,
        $colmarka1 TEXT,
        $colsostojanie1 TEXT,
        $colpotencrels1 TEXT,
        $colpotenctrub1 TEXT,
        $coledsudz1 TEXT,
        $colnaprshunt1 TEXT,
        $coltokshunt1 TEXT,
        $colizmnaprshunt1 TEXT,
        $colsoprotudz1 TEXT,
        $colelecshet1 TEXT,
        $colnarabshet1 TEXT,
        $colfoto1 TEXT,
        $colzamech1 TEXT,
        $colmarka2 TEXT,
        $colsostojanie2 TEXT,
        $colpotencrels2 TEXT,
        $colpotenctrub2 TEXT,
        $coledsudz2 TEXT,
        $colnaprshunt2 TEXT,
        $coltokshunt2 TEXT,
        $colizmnaprshunt2 TEXT,
        $colsoprotudz2 TEXT,
        $colelecshet2 TEXT,
        $colnarabshet2 TEXT,
        $colfoto2 TEXT,
        $colzamech2 TEXT)''');
  }

  Future<int> insertUdz(Udz udz) async {
    final Database db = await this.db;
    final int result = await db?.insert(tblUdz, udz.toMap()) ?? 0;
    return result;
  }

  Future<List<Map<String, Object>>> getUdzs() async {
    final Database db = await this.db;
    final List<Map<String, Object>> result = await db
        ?.rawQuery('SELECT * FROM $tblUdz ORDER BY $colId DESC'); /*ASC DESC*/
    return result;
  }

  Future<int> getCount() async {
    Database db = await (this.db as FutureOr<Database>);
    final int result = Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT (*) FROM $tblUdz'));
    return result;
  }

  Future<int> getTodoCountUdz() async {
    final Database db = await this.db;
    final List<Map<String, dynamic>> result =
        await db.rawQuery('SELECT COUNT(*) FROM $tblUdz');
    final int countUdz = Sqflite.firstIntValue(result);
    return countUdz;
  }

  Future<int> updateUdz(Udz udz) async {
    final Database db = await this.db;
    final int result = await db?.update(tblUdz, udz.toMap(),
            where: '$colId = ?', whereArgs: [udz.id]) ??
        0;
    return result;
  }

  Future<int> deleteUdz(int id) async {
    int result;
    final Database db = await this.db;
    result = await db?.rawDelete('DELETE FROM $tblUdz WHERE $colId = $id') ?? 0;
    return result;
  }
}
