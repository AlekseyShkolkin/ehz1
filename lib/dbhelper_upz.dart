import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import './model_upz.dart';

class DbHelperUpz {
  static final DbHelperUpz _dbHelperUpz = DbHelperUpz._internal();
  String tblUpz = 'upz';
  String colId = 'id';
  String coltitle = 'title';
  String coldate = 'date';
  String coldate1 = 'date1';

  String colkontrol = 'kontrol';
  String colkolvoprotvgruppe = 'kolvoprotvgruppe';
  String colkolvoprotvgruppe1 = 'kolvoprotvgruppe1';
  String colkolvoprotvgruppe2 = 'kolvoprotvgruppe2';

  String colfotoupz = 'fotoupz';
  String colzamechupz = 'zamechupz';
  String colsostojanieupz = 'sostojanieupz';
  String colperemsost = 'peremsost';
  String colpotencialvklsumm = 'potencialvklsumm';
  String colpotencialvklpolyar = 'potencialvklpolyar';
  String colpotencialprot = 'potencialprot';
  String coledsupz = 'edsupz';
  String coltokupz = 'tokupz';
  String colsoprrast = 'soprrast';
  String coludsoprgrunta = 'udsoprgrunta';
  String colpotencialvklsumm1 = 'potencialvklsumm1';
  String colpotencialvklpolyar1 = 'potencialvklpolyar1';
  String colpotencialprot1 = 'potencialprot1';
  String coledsupz1 = 'edsupz1';
  String coltokupz1 = 'tokupz1';
  String colsoprrast1 = 'soprrast1';
  String coludsoprgrunta1 = 'udsoprgrunta1';
  String colpotencialvklsumm2 = 'potencialvklsumm2';
  String colpotencialvklpolyar2 = 'potencialvklpolyar2';
  String colpotencialprot2 = 'potencialprot2';
  String coledsupz2 = 'edsupz2';
  String coltokupz2 = 'tokupz2';
  String colsoprrast2 = 'soprrast2';
  String coludsoprgrunta2 = 'udsoprgrunta2';
  String colsoprcepiupz = 'soprcepiupz';
  String colsoprcepiupz1 = 'soprcepiupz1';
  String colsoprcepiupz2 = 'soprcepiupz2';

  DbHelperUpz._internal();

  factory DbHelperUpz() {
    return _dbHelperUpz;
  }

  static Database _db;

  Future<Database> get db async {
    _db ??= await initializeDb();
    return _db;
  }

  Future<Database> initializeDb() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final String path = dir.path + '/upz.db';
    final Database dbUpzs =
        await openDatabase(path, version: 1, onCreate: _onCreate);
    return dbUpzs;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
        CREATE TABLE $tblUpz(
        $colId INTEGER PRIMARY KEY, 
        $coltitle TEXT,
        $coldate TEXT,
        $coldate1 TEXT,
        $colkontrol TEXT,
        $colkolvoprotvgruppe TEXT,
        $colkolvoprotvgruppe1 TEXT,
        $colkolvoprotvgruppe2 TEXT,
        $colfotoupz TEXT,
        $colzamechupz TEXT,
        $colsostojanieupz TEXT,
        $colperemsost TEXT,
        $colpotencialvklsumm TEXT,
        $colpotencialvklpolyar TEXT,
        $colpotencialprot TEXT,
        $coledsupz TEXT,
        $coltokupz TEXT,
        $colsoprrast TEXT,
        $coludsoprgrunta TEXT,
        $colpotencialvklsumm1 TEXT,
        $colpotencialvklpolyar1 TEXT,
        $colpotencialprot1 TEXT,
        $coledsupz1 TEXT,
        $coltokupz1 TEXT,
        $colsoprrast1 TEXT,
        $coludsoprgrunta1 TEXT,
        $colpotencialvklsumm2 TEXT,
        $colpotencialvklpolyar2 TEXT,
        $colpotencialprot2 TEXT,
        $coledsupz2 TEXT,
        $coltokupz2 TEXT,
        $colsoprrast2 TEXT,
        $colsoprcepiupz TEXT,
        $colsoprcepiupz1 TEXT,
        $colsoprcepiupz2 TEXT,
        $coludsoprgrunta2 TEXT)''');
  }

  Future<int> insertUpz(Upz upz) async {
    final Database db = await this.db;
    final int result = await db?.insert(tblUpz, upz.toMap()) ?? 0;
    return result;
  }

  Future<List<Map<String, Object>>> getUpzs() async {
    final Database db = await this.db;
    final List<Map<String, Object>> result = await db
        ?.rawQuery('SELECT * FROM $tblUpz ORDER BY $colId DESC'); /*ASC DESC*/
    return result;
  }

  Future<int> getCount() async {
    Database db = await (this.db as FutureOr<Database>);
    final int result = Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT (*) FROM $tblUpz'));
    return result;
  }

  Future<int> getTodoCountUpz() async {
    final Database db = await this.db;
    final List<Map<String, dynamic>> result =
        await db.rawQuery('SELECT COUNT(*) FROM $tblUpz');
    final int countUpz = Sqflite.firstIntValue(result);
    return countUpz;
  }

  Future<int> updateUpz(Upz upz) async {
    final Database db = await this.db;
    final int result = await db?.update(tblUpz, upz.toMap(),
            where: '$colId = ?', whereArgs: [upz.id]) ??
        0;
    return result;
  }

  Future<int> deleteUpz(int id) async {
    int result;
    final Database db = await this.db;
    result = await db?.rawDelete('DELETE FROM $tblUpz WHERE $colId = $id') ?? 0;
    return result;
  }
}
