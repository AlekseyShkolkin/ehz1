import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';

class Upz {
  int _id;
  String _todoDate;
  String _title;
  String _kontrol;
  String _kolvoprotvgruppe;
  String _kolvoprotvgruppe1;
  String _kolvoprotvgruppe2;
  String _date1;
  String _fotoupz;
  String _zamechupz;
  String _sostojanieupz;

  String _peremsost;
  String _potencialvklsumm;
  String _potencialvklpolyar;
  String _potencialprot;
  String _edsupz;
  String _tokupz;
  String _soprrast;
  String _udsoprgrunta;

  String _potencialvklsumm1;
  String _potencialvklpolyar1;
  String _potencialprot1;
  String _edsupz1;
  String _tokupz1;
  String _soprrast1;
  String _udsoprgrunta1;

  String _potencialvklsumm2;
  String _potencialvklpolyar2;
  String _potencialprot2;
  String _edsupz2;
  String _tokupz2;
  String _soprrast2;
  String _udsoprgrunta2;

  String _soprcepiupz;
  String _soprcepiupz1;
  String _soprcepiupz2;

  Upz(
    this._title,
    this._todoDate, [
    this._kontrol,
    this._kolvoprotvgruppe,
    this._kolvoprotvgruppe1,
    this._kolvoprotvgruppe2,
    this._date1,
    this._fotoupz,
    this._zamechupz,
    this._sostojanieupz,
    this._peremsost,
    this._potencialvklsumm,
    this._potencialvklpolyar,
    this._potencialprot,
    this._edsupz,
    this._tokupz,
    this._soprrast,
    this._udsoprgrunta,
    this._potencialvklsumm1,
    this._potencialvklpolyar1,
    this._potencialprot1,
    this._edsupz1,
    this._tokupz1,
    this._soprrast1,
    this._udsoprgrunta1,
    this._potencialvklsumm2,
    this._potencialvklpolyar2,
    this._potencialprot2,
    this._edsupz2,
    this._tokupz2,
    this._soprrast2,
    this._udsoprgrunta2,
    this._soprcepiupz,
    this._soprcepiupz1,
    this._soprcepiupz2,
  ]);

  Upz.withId(
    this._id,
    this._title,
    this._todoDate, [
    this._kontrol,
    this._kolvoprotvgruppe,
    this._kolvoprotvgruppe1,
    this._kolvoprotvgruppe2,
    this._date1,
    this._fotoupz,
    this._zamechupz,
    this._sostojanieupz,
    this._peremsost,
    this._potencialvklsumm,
    this._potencialvklpolyar,
    this._potencialprot,
    this._edsupz,
    this._tokupz,
    this._soprrast,
    this._udsoprgrunta,
    this._potencialvklsumm1,
    this._potencialvklpolyar1,
    this._potencialprot1,
    this._edsupz1,
    this._tokupz1,
    this._soprrast1,
    this._udsoprgrunta1,
    this._potencialvklsumm2,
    this._potencialvklpolyar2,
    this._potencialprot2,
    this._edsupz2,
    this._tokupz2,
    this._soprrast2,
    this._udsoprgrunta2,
    this._soprcepiupz,
    this._soprcepiupz1,
    this._soprcepiupz2,
  ]);

  int get id => _id;

  String get todoDate => _todoDate;
  String get title => _title;
  String get kontrol => _kontrol;
  String get kolvoprotvgruppe => _kolvoprotvgruppe;
  String get kolvoprotvgruppe1 => _kolvoprotvgruppe1;
  String get kolvoprotvgruppe2 => _kolvoprotvgruppe2;

  String get date1 => _date1;
  String get fotoupz => _fotoupz;
  String get zamechupz => _zamechupz;
  String get sostojanieupz => _sostojanieupz;

  String get peremsost => _peremsost;
  String get potencialvklsumm => _potencialvklsumm;
  String get potencialvklpolyar => _potencialvklpolyar;
  String get potencialprot => _potencialprot;
  String get edsupz => _edsupz;
  String get tokupz => _tokupz;
  String get soprrast => _soprrast;
  String get udsoprgrunta => _udsoprgrunta;

  String get potencialvklsumm1 => _potencialvklsumm1;
  String get potencialvklpolyar1 => _potencialvklpolyar1;
  String get potencialprot1 => _potencialprot1;
  String get edsupz1 => _edsupz1;
  String get tokupz1 => _tokupz1;
  String get soprrast1 => _soprrast1;
  String get udsoprgrunta1 => _udsoprgrunta1;

  String get potencialvklsumm2 => _potencialvklsumm2;
  String get potencialvklpolyar2 => _potencialvklpolyar2;
  String get potencialprot2 => _potencialprot2;
  String get edsupz2 => _edsupz2;
  String get tokupz2 => _tokupz2;
  String get soprrast2 => _soprrast2;
  String get udsoprgrunta2 => _udsoprgrunta2;

  String get soprcepiupz => _soprcepiupz;
  String get soprcepiupz1 => _soprcepiupz1;
  String get soprcepiupz2 => _soprcepiupz2;

  set title(String newTitle) {
    if ((newTitle?.length ?? 0) <= 255) {
      _title = newTitle;
    }
  }

  set todoDate(newtodoDate) {
    _todoDate = newtodoDate;
  }

  set kontrol(String newkontrol) {
    if ((newkontrol?.length ?? 0) <= 255) {
      _kontrol = newkontrol;
    }
  }

  set kolvoprotvgruppe(String newkolvoprotvgruppe) {
    if ((newkolvoprotvgruppe?.length ?? 0) <= 255) {
      _kolvoprotvgruppe = newkolvoprotvgruppe;
    }
  }

  set kolvoprotvgruppe1(String newkolvoprotvgruppe1) {
    if ((newkolvoprotvgruppe1?.length ?? 0) <= 255) {
      _kolvoprotvgruppe1 = newkolvoprotvgruppe1;
    }
  }

  set kolvoprotvgruppe2(String newkolvoprotvgruppe2) {
    if ((newkolvoprotvgruppe2?.length ?? 0) <= 255) {
      _kolvoprotvgruppe2 = newkolvoprotvgruppe2;
    }
  }

  set date1(String newdate1) {
    if ((newdate1?.length ?? 0) <= 255) {
      _date1 = newdate1;
    }
  }

  set fotoupz(String newfotoupz) {
    if ((newfotoupz?.length ?? 0) <= 255) {
      _fotoupz = newfotoupz;
    }
  }

  set zamechupz(String newzamechupz) {
    if ((newzamechupz?.length ?? 0) <= 255) {
      _zamechupz = newzamechupz;
    }
  }

  set sostojanieupz(String newsostojanieupz) {
    if ((newsostojanieupz?.length ?? 0) <= 255) {
      _sostojanieupz = newsostojanieupz;
    }
  }

  set peremsost(String newperemsost) {
    if ((newperemsost?.length ?? 0) <= 255) {
      _peremsost = newperemsost;
    }
  }

  set potencialvklsumm(String newpotencialvklsumm) {
    if ((newpotencialvklsumm?.length ?? 0) <= 255) {
      _potencialvklsumm = newpotencialvklsumm;
    }
  }

  set potencialvklpolyar(String newpotencialvklpolyar) {
    if ((newpotencialvklpolyar?.length ?? 0) <= 255) {
      _potencialvklpolyar = newpotencialvklpolyar;
    }
  }

  set potencialprot(String newpotencialprot) {
    if ((newpotencialprot?.length ?? 0) <= 255) {
      _potencialprot = newpotencialprot;
    }
  }

  set edsupz(String newedsupz) {
    if ((newedsupz?.length ?? 0) <= 255) {
      _edsupz = newedsupz;
    }
  }

  set tokupz(String newtokupz) {
    if ((newtokupz?.length ?? 0) <= 255) {
      _tokupz = newtokupz;
    }
  }

  set soprrast(String newsoprrast) {
    if ((newsoprrast?.length ?? 0) <= 255) {
      _soprrast = newsoprrast;
    }
  }

  set udsoprgrunta(String newudsoprgrunta) {
    if ((newudsoprgrunta?.length ?? 0) <= 255) {
      _udsoprgrunta = newudsoprgrunta;
    }
  }

  set potencialvklsumm1(String newpotencialvklsumm1) {
    if ((newpotencialvklsumm1?.length ?? 0) <= 255) {
      _potencialvklsumm1 = newpotencialvklsumm1;
    }
  }

  set potencialvklpolyar1(String newpotencialvklpolyar1) {
    if ((newpotencialvklpolyar1?.length ?? 0) <= 255) {
      _potencialvklpolyar1 = newpotencialvklpolyar1;
    }
  }

  set potencialprot1(String newpotencialprot1) {
    if ((newpotencialprot1?.length ?? 0) <= 255) {
      _potencialprot1 = newpotencialprot1;
    }
  }

  set edsupz1(String newedsupz1) {
    if ((newedsupz1?.length ?? 0) <= 255) {
      _edsupz1 = newedsupz1;
    }
  }

  set tokupz1(String newtokupz1) {
    if ((newtokupz1?.length ?? 0) <= 255) {
      _tokupz1 = newtokupz1;
    }
  }

  set soprrast1(String newsoprrast1) {
    if ((newsoprrast1?.length ?? 0) <= 255) {
      _soprrast1 = newsoprrast1;
    }
  }

  set udsoprgrunta1(String newudsoprgrunta1) {
    if ((newudsoprgrunta1?.length ?? 0) <= 255) {
      _udsoprgrunta1 = newudsoprgrunta1;
    }
  }

  set potencialvklsumm2(String newpotencialvklsumm2) {
    if ((newpotencialvklsumm2?.length ?? 0) <= 255) {
      _potencialvklsumm2 = newpotencialvklsumm2;
    }
  }

  set potencialvklpolyar2(String newpotencialvklpolyar2) {
    if ((newpotencialvklpolyar2?.length ?? 0) <= 255) {
      _potencialvklpolyar2 = newpotencialvklpolyar2;
    }
  }

  set potencialprot2(String newpotencialprot2) {
    if ((newpotencialprot2?.length ?? 0) <= 255) {
      _potencialprot2 = newpotencialprot2;
    }
  }

  set edsupz2(String newedsupz2) {
    if ((newedsupz2?.length ?? 0) <= 255) {
      _edsupz2 = newedsupz2;
    }
  }

  set tokupz2(String newtokupz2) {
    if ((newtokupz2?.length ?? 0) <= 255) {
      _tokupz2 = newtokupz2;
    }
  }

  set soprrast2(String newsoprrast2) {
    if ((newsoprrast2?.length ?? 0) <= 255) {
      _soprrast2 = newsoprrast2;
    }
  }

  set udsoprgrunta2(String newudsoprgrunta2) {
    if ((newudsoprgrunta2?.length ?? 0) <= 255) {
      _udsoprgrunta2 = newudsoprgrunta2;
    }
  }

  set soprcepiupz(String newsoprcepiupz) {
    if ((newsoprcepiupz?.length ?? 0) <= 255) {
      _soprcepiupz = newsoprcepiupz;
    }
  }

  set soprcepiupz1(String newsoprcepiupz1) {
    if ((newsoprcepiupz1?.length ?? 0) <= 255) {
      _soprcepiupz1 = newsoprcepiupz1;
    }
  }

  set soprcepiupz2(String newsoprcepiupz2) {
    if ((newsoprcepiupz2?.length ?? 0) <= 255) {
      _soprcepiupz2 = newsoprcepiupz2;
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['title'] = _title;
    map['date'] = _todoDate;

    map['kontrol'] = _kontrol;
    map['kolvoprotvgruppe'] = _kolvoprotvgruppe;
    map['kolvoprotvgruppe1'] = _kolvoprotvgruppe1;
    map['kolvoprotvgruppe2'] = _kolvoprotvgruppe2;

    map['date1'] = _date1;
    map['fotoupz'] = _fotoupz;
    map['zamechupz'] = _zamechupz;
    map['sostojanieupz'] = _sostojanieupz;
    map['peremsost'] = _peremsost;
    map['potencialvklsumm'] = _potencialvklsumm;
    map['potencialvklpolyar'] = _potencialvklpolyar;
    map['potencialprot'] = _potencialprot;
    map['edsupz'] = _edsupz;
    map['tokupz'] = _tokupz;
    map['soprrast'] = _soprrast;
    map['udsoprgrunta'] = _udsoprgrunta;
    map['potencialvklsumm1'] = _potencialvklsumm1;
    map['potencialvklpolyar1'] = _potencialvklpolyar1;
    map['potencialprot1'] = _potencialprot1;
    map['edsupz1'] = _edsupz1;
    map['tokupz1'] = _tokupz1;
    map['soprrast1'] = _soprrast1;
    map['udsoprgrunta1'] = _udsoprgrunta1;
    map['potencialvklsumm2'] = _potencialvklsumm2;
    map['potencialvklpolyar2'] = _potencialvklpolyar2;
    map['potencialprot2'] = _potencialprot2;
    map['edsupz2'] = _edsupz2;
    map['tokupz2'] = _tokupz2;
    map['soprrast2'] = _soprrast2;
    map['udsoprgrunta2'] = _udsoprgrunta2;
    map['soprcepiupz'] = _soprcepiupz;
    map['soprcepiupz1'] = _soprcepiupz1;
    map['soprcepiupz2'] = _soprcepiupz2;

    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }

  Upz.fromObject(dynamic o) {
    _id = o['id'];
    _title = o['title'];
    _todoDate = o['date'];

    _kontrol = o['kontrol'];
    _kolvoprotvgruppe = o['kolvoprotvgruppe'];
    _kolvoprotvgruppe1 = o['kolvoprotvgruppe1'];
    _kolvoprotvgruppe2 = o['kolvoprotvgruppe2'];

    _date1 = o['date1'];
    _fotoupz = o['fotoupz'];
    _zamechupz = o['zamechupz'];
    _sostojanieupz = o['sostojanieupz'];
    _peremsost = o['peremsost'];
    _potencialvklsumm = o['potencialvklsumm'];
    _potencialvklpolyar = o['potencialvklpolyar'];
    _potencialprot = o['potencialprot'];
    _edsupz = o['edsupz'];
    _tokupz = o['tokupz'];
    _soprrast = o['soprrast'];
    _udsoprgrunta = o['udsoprgrunta'];
    _potencialvklsumm1 = o['potencialvklsumm1'];
    _potencialvklpolyar1 = o['potencialvklpolyar1'];
    _potencialprot1 = o['potencialprot1'];
    _edsupz1 = o['edsupz1'];
    _tokupz1 = o['tokupz1'];
    _soprrast1 = o['soprrast1'];
    _udsoprgrunta1 = o['udsoprgrunta1'];
    _potencialvklsumm2 = o['potencialvklsumm2'];
    _potencialvklpolyar2 = o['potencialvklpolyar2'];
    _potencialprot2 = o['potencialprot2'];
    _edsupz2 = o['edsupz2'];
    _tokupz2 = o['tokupz2'];
    _soprrast2 = o['soprrast2'];
    _udsoprgrunta2 = o['udsoprgrunta2'];
    _soprcepiupz = o['soprcepiupz'];
    _soprcepiupz1 = o['soprcepiupz1'];
    _soprcepiupz2 = o['soprcepiupz2'];
  }
}
