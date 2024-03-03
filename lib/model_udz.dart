import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';

class Udz {
  int _id;
  String _todoDate;
  String _title;
  String _date;

  String _marka1;
  String _sostojanie1;
  String _potencrels1;
  String _potenctrub1;
  String _edsudz1;
  String _naprshunt1;
  String _tokshunt1;
  String _izmnaprshunt1;
  String _soprotudz1;
  String _elecshet1;
  String _narabshet1;
  String _foto1;
  String _zamech1;

  String _marka2;
  String _sostojanie2;
  String _potencrels2;
  String _potenctrub2;
  String _edsudz2;
  String _naprshunt2;
  String _tokshunt2;
  String _izmnaprshunt2;
  String _soprotudz2;
  String _elecshet2;
  String _narabshet2;
  String _foto2;
  String _zamech2;

  Udz(
    this._title,
    this._todoDate, [
    this._date,
    this._marka1,
    this._sostojanie1,
    this._potencrels1,
    this._potenctrub1,
    this._edsudz1,
    this._naprshunt1,
    this._tokshunt1,
    this._izmnaprshunt1,
    this._soprotudz1,
    this._elecshet1,
    this._narabshet1,
    this._foto1,
    this._zamech1,
    this._marka2,
    this._sostojanie2,
    this._potencrels2,
    this._potenctrub2,
    this._edsudz2,
    this._naprshunt2,
    this._tokshunt2,
    this._izmnaprshunt2,
    this._soprotudz2,
    this._elecshet2,
    this._narabshet2,
    this._foto2,
    this._zamech2,
  ]);

  Udz.withId(
    this._id,
    this._title,
    this._todoDate, [
    this._date,
    this._marka1,
    this._sostojanie1,
    this._potencrels1,
    this._potenctrub1,
    this._edsudz1,
    this._naprshunt1,
    this._tokshunt1,
    this._izmnaprshunt1,
    this._soprotudz1,
    this._elecshet1,
    this._narabshet1,
    this._foto1,
    this._zamech1,
    this._marka2,
    this._sostojanie2,
    this._potencrels2,
    this._potenctrub2,
    this._edsudz2,
    this._naprshunt2,
    this._tokshunt2,
    this._izmnaprshunt2,
    this._soprotudz2,
    this._elecshet2,
    this._narabshet2,
    this._foto2,
    this._zamech2,
  ]);

  int get id => _id;
  String get todoDate => _todoDate;
  String get title => _title;
// String get date => _date;

  String get marka1 => _marka1;
  String get sostojanie1 => _sostojanie1;
  String get potencrels1 => _potencrels1;
  String get potenctrub1 => _potenctrub1;
  String get edsudz1 => _edsudz1;
  String get naprshunt1 => _naprshunt1;
  String get tokshunt1 => _tokshunt1;
  String get izmnaprshunt1 => _izmnaprshunt1;
  String get soprotudz1 => _soprotudz1;
  String get elecshet1 => _elecshet1;
  String get narabshet1 => _narabshet1;
  String get foto1 => _foto1;
  String get zamech1 => _zamech1;
  String get marka2 => _marka2;
  String get sostojanie2 => _sostojanie2;
  String get potencrels2 => _potencrels2;
  String get potenctrub2 => _potenctrub2;
  String get edsudz2 => _edsudz2;
  String get naprshunt2 => _naprshunt2;
  String get tokshunt2 => _tokshunt2;
  String get izmnaprshunt2 => _izmnaprshunt2;
  String get soprotudz2 => _soprotudz2;
  String get elecshet2 => _elecshet2;
  String get narabshet2 => _narabshet2;
  String get foto2 => _foto2;
  String get zamech2 => _zamech2;

  set title(String newTitle) {
    if ((newTitle?.length ?? 0) <= 255) {
      _title = newTitle;
    }
  }

  set todoDate(newtodoDate) {
    _todoDate = newtodoDate;
  }

  set marka1(String newmarka1) {
    if ((newmarka1?.length ?? 0) <= 255) {
      _marka1 = newmarka1;
    }
  }

  set sostojanie1(String newsostojanie1) {
    if ((newsostojanie1?.length ?? 0) <= 255) {
      _sostojanie1 = newsostojanie1;
    }
  }

  set potencrels1(String newpotencrels1) {
    if ((newpotencrels1?.length ?? 0) <= 255) {
      _potencrels1 = newpotencrels1;
    }
  }

  set potenctrub1(String newpotenctrub1) {
    if ((newpotenctrub1?.length ?? 0) <= 255) {
      _potenctrub1 = newpotenctrub1;
    }
  }

  set edsudz1(String newedsudz1) {
    if ((newedsudz1?.length ?? 0) <= 255) {
      _edsudz1 = newedsudz1;
    }
  }

  set naprshunt1(String newnaprshunt1) {
    if ((newnaprshunt1?.length ?? 0) <= 255) {
      _naprshunt1 = newnaprshunt1;
    }
  }

  set tokshunt1(String newtokshunt1) {
    if ((newtokshunt1?.length ?? 0) <= 255) {
      _tokshunt1 = newtokshunt1;
    }
  }

  set izmnaprshunt1(String newizmnaprshunt1) {
    if ((newizmnaprshunt1?.length ?? 0) <= 255) {
      _izmnaprshunt1 = newizmnaprshunt1;
    }
  }

  set soprotudz1(String newsoprotudz1) {
    if ((newsoprotudz1?.length ?? 0) <= 255) {
      _soprotudz1 = newsoprotudz1;
    }
  }

  set elecshet1(String newelecshet1) {
    if ((newelecshet1?.length ?? 0) <= 255) {
      _elecshet1 = newelecshet1;
    }
  }

  set narabshet1(String newnarabshet1) {
    if ((newnarabshet1?.length ?? 0) <= 255) {
      _narabshet1 = newnarabshet1;
    }
  }

  set foto1(String newfoto1) {
    if ((newfoto1?.length ?? 0) <= 255) {
      _foto1 = newfoto1;
    }
  }

  set zamech1(String newzamech1) {
    if ((newzamech1?.length ?? 0) <= 255) {
      _zamech1 = newzamech1;
    }
  }

  set marka2(String newmarka2) {
    if ((newmarka2?.length ?? 0) <= 255) {
      _marka2 = newmarka2;
    }
  }

  set sostojanie2(String newsostojanie2) {
    if ((newsostojanie2?.length ?? 0) <= 255) {
      _sostojanie2 = newsostojanie2;
    }
  }

  set potencrels2(String newpotencrels2) {
    if ((newpotencrels2?.length ?? 0) <= 255) {
      _potencrels2 = newpotencrels2;
    }
  }

  set potenctrub2(String newpotenctrub2) {
    if ((newpotenctrub2?.length ?? 0) <= 255) {
      _potenctrub2 = newpotenctrub2;
    }
  }

  set edsudz2(String newedsudz2) {
    if ((newedsudz2?.length ?? 0) <= 255) {
      _edsudz2 = newedsudz2;
    }
  }

  set naprshunt2(String newnaprshunt2) {
    if ((newnaprshunt2?.length ?? 0) <= 255) {
      _naprshunt2 = newnaprshunt2;
    }
  }

  set tokshunt2(String newtokshunt2) {
    if ((newtokshunt2?.length ?? 0) <= 255) {
      _tokshunt2 = newtokshunt2;
    }
  }

  set izmnaprshunt2(String newizmnaprshunt2) {
    if ((newizmnaprshunt2?.length ?? 0) <= 255) {
      _izmnaprshunt2 = newizmnaprshunt2;
    }
  }

  set soprotudz2(String newsoprotudz2) {
    if ((newsoprotudz2?.length ?? 0) <= 255) {
      _soprotudz2 = newsoprotudz2;
    }
  }

  set elecshet2(String newelecshet2) {
    if ((newelecshet2?.length ?? 0) <= 255) {
      _elecshet2 = newelecshet2;
    }
  }

  set narabshet2(String newnarabshet2) {
    if ((newnarabshet2?.length ?? 0) <= 255) {
      _narabshet2 = newnarabshet2;
    }
  }

  set foto2(String newfoto2) {
    if ((newfoto2?.length ?? 0) <= 255) {
      _foto2 = newfoto2;
    }
  }

  set zamech2(String newzamech2) {
    if ((newzamech2?.length ?? 0) <= 255) {
      _zamech2 = newzamech2;
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['title'] = _title;
    map['date'] = _todoDate;

    map['marka1'] = _marka1;
    map['sostojanie1'] = _sostojanie1;
    map['potencrels1'] = _potencrels1;
    map['potenctrub1'] = _potenctrub1;
    map['edsudz1'] = _edsudz1;
    map['naprshunt1'] = _naprshunt1;
    map['tokshunt1'] = _tokshunt1;
    map['izmnaprshunt1'] = _izmnaprshunt1;
    map['soprotudz1'] = _soprotudz1;
    map['elecshet1'] = _elecshet1;
    map['narabshet1'] = _narabshet1;
    map['foto1'] = _foto1;
    map['zamech1'] = _zamech1;
    map['marka2'] = _marka2;
    map['sostojanie2'] = _sostojanie2;
    map['potencrels2'] = _potencrels2;
    map['potenctrub2'] = _potenctrub2;
    map['edsudz2'] = _edsudz2;
    map['naprshunt2'] = _naprshunt2;
    map['tokshunt2'] = _tokshunt2;
    map['izmnaprshunt2'] = _izmnaprshunt2;
    map['soprotudz2'] = _soprotudz2;
    map['elecshet2'] = _elecshet2;
    map['narabshet2'] = _narabshet2;
    map['foto2'] = _foto2;
    map['zamech2'] = _zamech2;

    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }

  Udz.fromObject(dynamic o) {
    _id = o['id'];
    _title = o['title'];
    _todoDate = o['date'];

    _marka1 = o['marka1'];
    _sostojanie1 = o['sostojanie1'];
    _potencrels1 = o['potencrels1'];
    _potenctrub1 = o['potenctrub1'];
    _edsudz1 = o['edsudz1'];
    _naprshunt1 = o['naprshunt1'];
    _tokshunt1 = o['tokshunt1'];
    _izmnaprshunt1 = o['izmnaprshunt1'];
    _soprotudz1 = o['soprotudz1'];
    _elecshet1 = o['elecshet1'];
    _narabshet1 = o['narabshet1'];
    _foto1 = o['foto1'];
    _zamech1 = o['zamech1'];
    _marka2 = o['marka2'];
    _sostojanie2 = o['sostojanie2'];
    _potencrels2 = o['potencrels2'];
    _potenctrub2 = o['potenctrub2'];
    _edsudz2 = o['edsudz2'];
    _naprshunt2 = o['naprshunt2'];
    _tokshunt2 = o['tokshunt2'];
    _izmnaprshunt2 = o['izmnaprshunt2'];
    _soprotudz2 = o['soprotudz2'];
    _elecshet2 = o['elecshet2'];
    _narabshet2 = o['narabshet2'];
    _foto2 = o['foto2'];
    _zamech2 = o['zamech2'];
  }
}
