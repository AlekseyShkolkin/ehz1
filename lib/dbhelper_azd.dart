import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import './model_azd.dart';

class DbHelperAzd {
  static final DbHelperAzd _dbHelperAzd = DbHelperAzd._internal();
  String tblAzd = 'azd';
  String colId = 'id';
  String coltitle = 'title';
  String coldate = 'date';
  String coldate1 = 'date1';

  String coltipdorogi = 'tipdorogi';
  String coldoroga = 'doroga';
  String coltruba = 'truba';
  String colkmdorogi = 'kmdorogi';
  String colkmtruby = 'kmtruby';
  String colnalichfutljara = 'nalichfutljara';
  String coltipzashity = 'tipzashity';
  String colsostperehoda = 'sostperehoda';
  String coltipkontrolja1 = 'tipkontrolja1';
  String colsostojanie1 = 'sostojanie1';
  String colperemsost1 = 'peremsost1';
  String colpotenctrubsumm1 = 'potenctrubsumm1';
  String colpotenctrubpol1 = 'potenctrubpol1';
  String colpotencfutlsumm1 = 'potencfutlsumm1';
  String colpotencfutlpol1 = 'potencfutlpol1';
  String coltok11 = 'tok11';
  String coltok21 = 'tok21';
  String colsoprotkan11 = 'soprotkan11';
  String colsoprotkan21 = 'soprotkan21';
  String colsoprotcepi1 = 'soprotcepi1';
  String colsoprotrast1 = 'soprotrast1';
  String colzamechan1 = 'zamechan1';
  String colfoto1 = 'foto1';
  String coltipkontrolja2 = 'tipkontrolja2';
  String colsostojanie2 = 'sostojanie2';
  String colperemsost2 = 'peremsost2';
  String colpotenctrubsumm2 = 'potenctrubsumm2';
  String colpotenctrubpol2 = 'potenctrubpol2';
  String colpotencfutlsumm2 = 'potencfutlsumm2';
  String colpotencfutlpol2 = 'potencfutlpol2';
  String coltok12 = 'tok12';
  String coltok22 = 'tok22';
  String colsoprotkan12 = 'soprotkan12';
  String colsoprotkan22 = 'soprotkan22';
  String colsoprotcepi2 = 'soprotcepi2';
  String colsoprotrast2 = 'soprotrast2';
  String colzamechan2 = 'zamechan2';
  String colfoto2 = 'foto2';
  String coludsoprgrunta1 = 'udsoprgrunta1';
  String coludsoprgrunta2 = 'udsoprgrunta2';

  DbHelperAzd._internal();

  factory DbHelperAzd() {
    return _dbHelperAzd;
  }

  static Database _db;

  Future<Database> get db async {
    _db ??= await initializeDb();
    return _db;
  }

  Future<Database> initializeDb() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final String path = dir.path + '/azd.db';
    final Database dbAzds =
        await openDatabase(path, version: 1, onCreate: _onCreate);
    return dbAzds;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
        CREATE TABLE $tblAzd(
        $colId INTEGER PRIMARY KEY, 
        $coltitle TEXT,
        $coldate TEXT,
        $coludsoprgrunta1 TEXT,
        $coludsoprgrunta2 TEXT,
        $coldate1 TEXT,        
        $coltipdorogi TEXT,
        $coldoroga TEXT,
        $coltruba TEXT,
        $colkmdorogi TEXT,
        $colkmtruby TEXT,
        $colnalichfutljara TEXT,
        $coltipzashity TEXT,
        $colsostperehoda TEXT,
        $coltipkontrolja1 TEXT,
        $colsostojanie1 TEXT,
        $colperemsost1 TEXT,
        $colpotenctrubsumm1 TEXT,
        $colpotenctrubpol1 TEXT,
        $colpotencfutlsumm1 TEXT,
        $colpotencfutlpol1 TEXT,
        $coltok11 TEXT,
        $coltok21 TEXT,
        $colsoprotkan11 TEXT,
        $colsoprotkan21 TEXT,
        $colsoprotcepi1 TEXT,
        $colsoprotrast1 TEXT,
        $colzamechan1 TEXT,
        $colfoto1 TEXT,
        $coltipkontrolja2 TEXT,
        $colsostojanie2 TEXT,
        $colperemsost2 TEXT,
        $colpotenctrubsumm2 TEXT,
        $colpotenctrubpol2 TEXT,
        $colpotencfutlsumm2 TEXT,
        $colpotencfutlpol2 TEXT,
        $coltok12 TEXT,
        $coltok22 TEXT,
        $colsoprotkan12 TEXT,
        $colsoprotkan22 TEXT,
        $colsoprotcepi2 TEXT,
        $colsoprotrast2 TEXT,
        $colzamechan2 TEXT,
        $colfoto2 TEXT )''');
  }

  Future<int> insertAzd(Azd azd) async {
    final Database db = await this.db;
    final int result = await db?.insert(tblAzd, azd.toMap()) ?? 0;
    return result;
  }

  Future<List<Map<String, Object>>> getAzds() async {
    final Database db = await this.db;
    final List<Map<String, Object>> result = await db
        ?.rawQuery('SELECT * FROM $tblAzd ORDER BY $colId DESC'); /*ASC DESC*/
    return result;
  }

  Future<int> getCount() async {
    Database db = await (this.db as FutureOr<Database>);
    final int result = Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT (*) FROM $tblAzd'));
    return result;
  }

  Future<int> getTodoCountAzd() async {
    final Database db = await this.db;
    final List<Map<String, dynamic>> result =
        await db.rawQuery('SELECT COUNT(*) FROM $tblAzd');
    final int countAzd = Sqflite.firstIntValue(result);
    return countAzd;
  }

  Future<int> updateAzd(Azd azd) async {
    final Database db = await this.db;
    final int result = await db?.update(tblAzd, azd.toMap(),
            where: '$colId = ?', whereArgs: [azd.id]) ??
        0;
    return result;
  }

  Future<int> deleteAzd(int id) async {
    int result;
    final Database db = await this.db;
    result = await db?.rawDelete('DELETE FROM $tblAzd WHERE $colId = $id') ?? 0;
    return result;
  }
}
