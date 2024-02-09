import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import './model_ukz.dart';

class DbHelperUkz {
  static final DbHelperUkz _dbHelperUkz = DbHelperUkz._internal();
  String tblUkz = 'ukz';
  String colId = 'id';
  String coltitle = 'title';
  String coldate = 'date';
  String coldate1 = 'date1';

  String colobject1 = 'object1';
  String colmarkaskz1 = 'markaskz1';
  String colsostojanieskz1 = 'sostojanieskz1';
  String colfotoskz1 = 'fotoskz1';
  String colzamechskz1 = 'zamechskz1';
  String colpotencialskz1 = 'potencialskz1';
  String colnaprrabskz1 = 'naprrabskz1';
  String colnaprmaxskz1 = 'naprmaxskz1';
  String coltokrabskz1 = 'tokrabskz1';
  String coltokmaxskz1 = 'tokmaxskz1';
  String colzapaspotokuskz1 = 'zapaspotokuskz1';
  String colshunttokskz1 = 'shunttokskz1';
  String colshuntnaprskz1 = 'shuntnaprskz1';
  String colsoprotskz1 = 'soprotskz1';
  String colschetelec1 = 'schetelec1';
  String colschetnarab1 = 'schetnarab1';
  String colschetzasch1 = 'schetzasch1';

  String coldate2 = 'date2';
  String colobject2 = 'object2';
  String colmarkaskz2 = 'markaskz2';
  String colsostojanieskz2 = 'sostojanieskz2';
  String colfotoskz2 = 'fotoskz2';
  String colzamechskz2 = 'zamechskz2';
  String colpotencialskz2 = 'potencialskz2';
  String colnaprrabskz2 = 'naprrabskz2';
  String colnaprmaxskz2 = 'naprmaxskz2';
  String coltokrabskz2 = 'tokrabskz2';
  String coltokmaxskz2 = 'tokmaxskz2';
  String colzapaspotokuskz2 = 'zapaspotokuskz2';
  String colshunttokskz2 = 'shunttokskz2';
  String colshuntnaprskz2 = 'shuntnaprskz2';
  String colshunttokskz3 = 'shunttokskz3';
  String colshuntnaprskz3 = 'shuntnaprskz3';
  String colshunttokskz4 = 'shunttokskz4';
  String colshuntnaprskz4 = 'shuntnaprskz4';
  String colsoprotskz2 = 'soprotskz2';
  String colschetelec2 = 'schetelec2';
  String colschetnarab2 = 'schetnarab2';
  String colschetzasch2 = 'schetzasch2';

  String colkipname1 = 'kipname1';
  String colkipname2 = 'kipname2';
  String colkipname3 = 'kipname3';
  String colkipname4 = 'kipname4';
  String colsostojaniekip1 = 'sostojaniekip1';
  String colsostojaniekip2 = 'sostojaniekip2';
  String colsostojaniekip3 = 'sostojaniekip3';
  String colsostojaniekip4 = 'sostojaniekip4';
  String colfotokip1 = 'fotokip1';
  String colfotokip2 = 'fotokip2';
  String colfotokip3 = 'fotokip3';
  String colfotokip4 = 'fotokip4';
  String colzamechkip1 = 'zamechkip1';
  String colzamechkip2 = 'zamechkip2';
  String colzamechkip3 = 'zamechkip3';
  String colzamechkip4 = 'zamechkip4';
  String colpotenctdvklsum1 = 'potenctdvklsum1';
  String colpotenctdvklpol1 = 'potenctdvklpol1';
  String colpotenctdotklsum1 = 'potenctdotklsum1';
  String colpotenctdotklpol1 = 'potenctdotklpol1';
  String colperemsost1 = 'peremsost1';
  String coldatchkorr1 = 'datchkorr1';
  String colpotenctdvklsum2 = 'potenctdvklsum2';
  String colpotenctdvklpol2 = 'potenctdvklpol2';
  String colpotenctdotklsum2 = 'potenctdotklsum2';
  String colpotenctdotklpol2 = 'potenctdotklpol2';
  String colperemsost2 = 'peremsost2';
  String coldatchkorr2 = 'datchkorr2';
  String colpotenctdvklsum3 = 'potenctdvklsum3';
  String colpotenctdvklpol3 = 'potenctdvklpol3';
  String colpotenctdotklsum3 = 'potenctdotklsum3';
  String colpotenctdotklpol3 = 'potenctdotklpol3';
  String colperemsost3 = 'peremsost3';
  String coldatchkorr3 = 'datchkorr3';
  String colpotenctdvklsum4 = 'potenctdvklsum4';
  String colpotenctdvklpol4 = 'potenctdvklpol4';
  String colpotenctdotklsum4 = 'potenctdotklsum4';
  String colpotenctdotklpol4 = 'potenctdotklpol4';
  String colperemsost4 = 'peremsost4';
  String coldatchkorr4 = 'datchkorr4';

  String colbdr1 = 'bdr1';
  String colsostojaniebdr1 = 'sostojaniebdr1';
  String colfotobdr1 = 'fotobdr1';
  String colzamechbdr1 = 'zamechbdr1';
  String coltok1bdr1 = 'tok1bdr1';
  String coltok2bdr1 = 'tok2bdr1';
  String coltok3bdr1 = 'tok3bdr1';
  String coltok4bdr1 = 'tok4bdr1';
  String coltok5bdr1 = 'tok5bdr1';
  String colsoprot1bdr1 = 'soprot1bdr1';
  String colsoprot2bdr1 = 'soprot2bdr1';
  String colsoprot3bdr1 = 'soprot3bdr1';
  String colsoprot4bdr1 = 'soprot4bdr1';
  String colsoprot5bdr1 = 'soprot5bdr1';
  String colbdr2 = 'bdr2';
  String colsostojaniebdr2 = 'sostojaniebdr2';
  String colfotobdr2 = 'fotobdr2';
  String colzamechbdr2 = 'zamechbdr2';
  String coltok1bdr2 = 'tok1bdr2';
  String coltok2bdr2 = 'tok2bdr2';
  String coltok3bdr2 = 'tok3bdr2';
  String coltok4bdr2 = 'tok4bdr2';
  String coltok5bdr2 = 'tok5bdr2';
  String colsoprot1bdr2 = 'soprot1bdr2';
  String colsoprot2bdr2 = 'soprot2bdr2';
  String colsoprot3bdr2 = 'soprot3bdr2';
  String colsoprot4bdr2 = 'soprot4bdr2';
  String colsoprot5bdr2 = 'soprot5bdr2';

  String colsostojanieaz = 'sostojanieaz';
  String colfotoaz = 'fotoaz';
  String colzamechaz = 'zamechaz';
  String coltok1az = 'tok1az';
  String coltok2az = 'tok2az';
  String coltok3az = 'tok3az';
  String coltok4az = 'tok4az';
  String colsoprrast1az = 'soprrast1az';
  String colsoprrast2az = 'soprrast2az';
  String colsoprrast3az = 'soprrast3az';
  String colsoprrast4az = 'soprrast4az';

  String colsostojaniezz = 'sostojaniezz';
  String colfotozz = 'fotozz';
  String colzamechzz = 'zamechzz';

  String colnaznachvl1 = 'naznachvl1';
  String colsostojanievl1 = 'sostojanievl1';
  String colfotovl1 = 'fotovl1';
  String colzamechvl1 = 'zamechvl1';
  String coltipoporvl1 = 'tipoporvl1';
  String colkolvooporvl1 = 'kolvooporvl1';
  String coldlinavl1 = 'dlinavl1';
  String colprovodvl1 = 'provodvl1';
  String colkolvoizolvl1 = 'kolvoizolvl1';
  String colmarkaizolvl1 = 'markaizolvl1';
  String colnaznachvl2 = 'naznachvl2';
  String colsostojanievl2 = 'sostojanievl2';
  String colfotovl2 = 'fotovl2';
  String colzamechvl2 = 'zamechvl2';
  String coltipoporvl2 = 'tipoporvl2';
  String colkolvooporvl2 = 'kolvooporvl2';
  String coldlinavl2 = 'dlinavl2';
  String colprovodvl2 = 'provodvl2';
  String colkolvoizolvl2 = 'kolvoizolvl2';
  String colmarkaizolvl2 = 'markaizolvl2';
  String colnaznachvl3 = 'naznachvl3';
  String colsostojanievl3 = 'sostojanievl3';
  String colfotovl3 = 'fotovl3';
  String colzamechvl3 = 'zamechvl3';
  String coltipoporvl3 = 'tipoporvl3';
  String colkolvooporvl3 = 'kolvooporvl3';
  String coldlinavl3 = 'dlinavl3';
  String colprovodvl3 = 'provodvl3';
  String colkolvoizolvl3 = 'kolvoizolvl3';
  String colmarkaizolvl3 = 'markaizolvl3';

  String colnaznachkl1 = 'naznachkl1';
  String colsostojaniekl1 = 'sostojaniekl1';
  String colfotokl1 = 'fotokl1';
  String colzamechkl1 = 'zamechkl1';
  String colmarkakabelkl1 = 'markakabelkl1';
  String coldlinakl1 = 'dlinakl1';
  String colsoprotkl1 = 'soprotkl1';
  String colnaznachkl2 = 'naznachkl2';
  String colsostojaniekl2 = 'sostojaniekl2';
  String colfotokl2 = 'fotokl2';
  String colzamechkl2 = 'zamechkl2';
  String colmarkakabelkl2 = 'markakabelkl2';
  String coldlinakl2 = 'dlinakl2';
  String colsoprotkl2 = 'soprotkl2';
  String colnaznachkl3 = 'naznachkl3';
  String colsostojaniekl3 = 'sostojaniekl3';
  String colfotokl3 = 'fotokl3';
  String colzamechkl3 = 'zamechkl3';
  String colmarkakabelkl3 = 'markakabelkl3';
  String coldlinakl3 = 'dlinakl3';
  String colsoprotkl3 = 'soprotkl3';

  String coltipktp = 'tipktp';
  String colsostojaniektp = 'sostojaniektp';
  String colfotoktp = 'fotoktp';
  String colmarkatrr = 'markatrr';

  String colpotrmoschnost = 'potrmoschnost';
  String coldatato1 = 'datato1';
  String colelekschetchik1 = 'elekschetchik1';
  String coldatato2 = 'datato2';
  String colelekschetchik2 = 'elekschetchik2';
  String colprostoi1 = 'prostoi1';
  String colnarabschetchik1 = 'narabschetchik1';
  String colnarabschetchik2 = 'narabschetchik2';
  String colprostoi2 = 'prostoi2';

  DbHelperUkz._internal();

  factory DbHelperUkz() {
    return _dbHelperUkz;
  }

  static Database _db;

  Future<Database> get db async {
    _db ??= await initializeDb();
    return _db;
  }

  Future<Database> initializeDb() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final String path = dir.path + '/ukz.db';
    final Database dbUkzs =
        await openDatabase(path, version: 1, onCreate: _onCreate);
    return dbUkzs;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
        CREATE TABLE $tblUkz(
        $colId INTEGER PRIMARY KEY, 
        $coltitle TEXT,
        $coldate TEXT,
        $coldate1 TEXT,
        $colobject1 TEXT,
        $colmarkaskz1 TEXT,
        $colsostojanieskz1 TEXT,
        $colfotoskz1 TEXT,
        $colzamechskz1 TEXT,
        $colpotencialskz1 TEXT,
        $colnaprrabskz1 TEXT,
        $colnaprmaxskz1 TEXT,
        $coltokrabskz1 TEXT,
        $coltokmaxskz1 TEXT,
        $colzapaspotokuskz1 TEXT,
        $colshunttokskz1 TEXT,
        $colshuntnaprskz1 TEXT,
        $colsoprotskz1 TEXT,
        $colschetelec1 TEXT,
        $colschetnarab1 TEXT,
        $colschetzasch1 TEXT,
        $coldate2 TEXT,
        $colobject2 TEXT,
        $colmarkaskz2 TEXT,
        $colsostojanieskz2 TEXT,
        $colfotoskz2 TEXT,
        $colzamechskz2 TEXT,
        $colpotencialskz2 TEXT,
        $colnaprrabskz2 TEXT,
        $colnaprmaxskz2 TEXT,
        $coltokrabskz2 TEXT,
        $coltokmaxskz2 TEXT,
        $colzapaspotokuskz2 TEXT,
        $colshunttokskz2 TEXT,
        $colshuntnaprskz2 TEXT,
        $colshunttokskz3 TEXT,
        $colshuntnaprskz3 TEXT,
        $colshunttokskz4 TEXT,
        $colshuntnaprskz4 TEXT,
        $colsoprotskz2 TEXT,
        $colschetelec2 TEXT,
        $colschetnarab2 TEXT,
        $colschetzasch2 TEXT,
        $colkipname1 TEXT,
        $colkipname2 TEXT,
        $colkipname3 TEXT,
        $colkipname4 TEXT,
        $colsostojaniekip1 TEXT,
        $colsostojaniekip2 TEXT,
        $colsostojaniekip3 TEXT,
        $colsostojaniekip4 TEXT,
        $colfotokip1 TEXT,
        $colfotokip2 TEXT,
        $colfotokip3 TEXT,
        $colfotokip4 TEXT,
        $colzamechkip1 TEXT,
        $colzamechkip2 TEXT,
        $colzamechkip3 TEXT,
        $colzamechkip4 TEXT,
        $colpotenctdvklsum1 TEXT,
        $colpotenctdvklpol1 TEXT,
        $colpotenctdotklsum1 TEXT,
        $colpotenctdotklpol1 TEXT,
        $colperemsost1 TEXT,
        $coldatchkorr1 TEXT,
        $colpotenctdvklsum2 TEXT,
        $colpotenctdvklpol2 TEXT,
        $colpotenctdotklsum2 TEXT,
        $colpotenctdotklpol2 TEXT,
        $colperemsost2 TEXT,
        $coldatchkorr2 TEXT,
        $colpotenctdvklsum3 TEXT,
        $colpotenctdvklpol3 TEXT,
        $colpotenctdotklsum3 TEXT,
        $colpotenctdotklpol3 TEXT,
        $colperemsost3 TEXT,
        $coldatchkorr3 TEXT,
        $colpotenctdvklsum4 TEXT,
        $colpotenctdvklpol4 TEXT,
        $colpotenctdotklsum4 TEXT,
        $colpotenctdotklpol4 TEXT,
        $colperemsost4 TEXT,
        $coldatchkorr4 TEXT,
        $colbdr1 TEXT,
        $colsostojaniebdr1 TEXT,
        $colfotobdr1 TEXT,
        $colzamechbdr1 TEXT,
        $coltok1bdr1 TEXT,
        $coltok2bdr1 TEXT,
        $coltok3bdr1 TEXT,
        $coltok4bdr1 TEXT,
        $coltok5bdr1 TEXT,
        $colsoprot1bdr1 TEXT,
        $colsoprot2bdr1 TEXT,
        $colsoprot3bdr1 TEXT,
        $colsoprot4bdr1 TEXT,
        $colsoprot5bdr1 TEXT,
        $colbdr2 TEXT,
        $colsostojaniebdr2 TEXT,
        $colfotobdr2 TEXT,
        $colzamechbdr2 TEXT,
        $coltok1bdr2 TEXT,
        $coltok2bdr2 TEXT,
        $coltok3bdr2 TEXT,
        $coltok4bdr2 TEXT,
        $coltok5bdr2 TEXT,
        $colsoprot1bdr2 TEXT,
        $colsoprot2bdr2 TEXT,
        $colsoprot3bdr2 TEXT,
        $colsoprot4bdr2 TEXT,
        $colsoprot5bdr2 TEXT,
        $colsostojanieaz TEXT,
        $colfotoaz TEXT,
        $colzamechaz TEXT,
        $coltok1az TEXT,
        $coltok2az TEXT,
        $coltok3az TEXT,
        $coltok4az TEXT,
        $colsoprrast1az TEXT,
        $colsoprrast2az TEXT,
        $colsoprrast3az TEXT,
        $colsoprrast4az TEXT,
        $colsostojaniezz TEXT,
        $colfotozz TEXT,
        $colzamechzz TEXT,
        $colnaznachvl1 TEXT,
        $colsostojanievl1 TEXT,
        $colfotovl1 TEXT,
        $colzamechvl1 TEXT,
        $coltipoporvl1 TEXT,
        $colkolvooporvl1 TEXT,
        $coldlinavl1 TEXT,
        $colprovodvl1 TEXT,
        $colkolvoizolvl1 TEXT,
        $colmarkaizolvl1 TEXT,
        $colnaznachvl2 TEXT,
        $colsostojanievl2 TEXT,
        $colfotovl2 TEXT,
        $colzamechvl2 TEXT,
        $coltipoporvl2 TEXT,
        $colkolvooporvl2 TEXT,
        $coldlinavl2 TEXT,
        $colprovodvl2 TEXT,
        $colkolvoizolvl2 TEXT,
        $colmarkaizolvl2 TEXT,
        $colnaznachvl3 TEXT,
        $colsostojanievl3 TEXT,
        $colfotovl3 TEXT,
        $colzamechvl3 TEXT,
        $coltipoporvl3 TEXT,
        $colkolvooporvl3 TEXT,
        $coldlinavl3 TEXT,
        $colprovodvl3 TEXT,
        $colkolvoizolvl3 TEXT,
        $colmarkaizolvl3 TEXT,
        $colnaznachkl1 TEXT,
        $colsostojaniekl1 TEXT,
        $colfotokl1 TEXT,
        $colzamechkl1 TEXT,
        $colmarkakabelkl1 TEXT,
        $coldlinakl1 TEXT,
        $colsoprotkl1 TEXT,
        $colnaznachkl2 TEXT,
        $colsostojaniekl2 TEXT,
        $colfotokl2 TEXT,
        $colzamechkl2 TEXT,
        $colmarkakabelkl2 TEXT,
        $coldlinakl2 TEXT,
        $colsoprotkl2 TEXT,
        $colnaznachkl3 TEXT,
        $colsostojaniekl3 TEXT,
        $colfotokl3 TEXT,
        $colzamechkl3 TEXT,
        $colmarkakabelkl3 TEXT,
        $coldlinakl3 TEXT,
        $colsoprotkl3 TEXT,
        $coltipktp TEXT,
        $colsostojaniektp TEXT,
        $colfotoktp TEXT,
        $colmarkatrr TEXT,
        $colpotrmoschnost TEXT,
        $coldatato1 TEXT,
        $colelekschetchik1 TEXT,
        $coldatato2 TEXT,
        $colelekschetchik2 TEXT,
        $colprostoi1 TEXT,
        $colnarabschetchik1 TEXT,
        $colnarabschetchik2 TEXT,
        $colprostoi2 TEXT)''');
  }

  Future<int> insertUkz(Ukz ukz) async {
    final Database db = await this.db;
    final int result = await db?.insert(tblUkz, ukz.toMap()) ?? 0;
    return result;
  }

  Future<List<Map<String, Object>>> getUkzs() async {
    final Database db = await this.db;
    final List<Map<String, Object>> result = await db
        ?.rawQuery('SELECT * FROM $tblUkz ORDER BY $colId ASC'); /*ASC DESC*/
    return result;
  }

  Future<int> getCount() async {
    Database db = await (this.db as FutureOr<Database>);
    final int result = Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT (*) FROM $tblUkz'));
    return result;
  }

  Future<int> getTodoCountUkz() async {
    final Database db = await this.db;
    final List<Map<String, dynamic>> result =
        await db.rawQuery('SELECT COUNT(*) FROM $tblUkz');
    final int countUkz = Sqflite.firstIntValue(result);
    return countUkz;
  }

  Future<int> updateUkz(Ukz ukz) async {
    final Database db = await this.db;
    final int result = await db?.update(tblUkz, ukz.toMap(),
            where: '$colId = ?', whereArgs: [ukz.id]) ??
        0;
    return result;
  }

  Future<int> deleteUkz(int id) async {
    int result;
    final Database db = await this.db;
    result = await db?.rawDelete('DELETE FROM $tblUkz WHERE $colId = $id') ?? 0;
    return result;
  }
}
