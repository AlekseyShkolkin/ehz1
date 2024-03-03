import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';

class Azd {
  int _id;
  String _todoDate;
  String _title;

  String _date1;
  String _tipdorogi;
  String _doroga;
  String _truba;
  String _kmdorogi;
  String _kmtruby;
  String _nalichfutljara;
  String _tipzashity;
  String _sostperehoda;
  String _tipkontrolja1;
  String _sostojanie1;
  String _peremsost1;
  String _potenctrubsumm1;
  String _potenctrubpol1;
  String _potencfutlsumm1;
  String _potencfutlpol1;
  String _tok11;
  String _tok21;
  String _soprotkan11;
  String _soprotkan21;
  String _soprotcepi1;
  String _soprotrast1;
  String _zamechan1;
  String _foto1;
  String _tipkontrolja2;
  String _sostojanie2;
  String _peremsost2;
  String _potenctrubsumm2;
  String _potenctrubpol2;
  String _potencfutlsumm2;
  String _potencfutlpol2;
  String _tok12;
  String _tok22;
  String _soprotkan12;
  String _soprotkan22;
  String _soprotcepi2;
  String _soprotrast2;
  String _zamechan2;
  String _foto2;

  Azd(
    this._title,
    this._todoDate, [
    this._date1,
    this._tipdorogi,
    this._doroga,
    this._truba,
    this._kmdorogi,
    this._kmtruby,
    this._nalichfutljara,
    this._tipzashity,
    this._sostperehoda,
    this._tipkontrolja1,
    this._sostojanie1,
    this._peremsost1,
    this._potenctrubsumm1,
    this._potenctrubpol1,
    this._potencfutlsumm1,
    this._potencfutlpol1,
    this._tok11,
    this._tok21,
    this._soprotkan11,
    this._soprotkan21,
    this._soprotcepi1,
    this._soprotrast1,
    this._zamechan1,
    this._foto1,
    this._tipkontrolja2,
    this._sostojanie2,
    this._peremsost2,
    this._potenctrubsumm2,
    this._potenctrubpol2,
    this._potencfutlsumm2,
    this._potencfutlpol2,
    this._tok12,
    this._tok22,
    this._soprotkan12,
    this._soprotkan22,
    this._soprotcepi2,
    this._soprotrast2,
    this._zamechan2,
    this._foto2,
  ]);

  Azd.withId(
    this._id,
    this._title,
    this._todoDate, [
    this._date1,
    this._tipdorogi,
    this._doroga,
    this._truba,
    this._kmdorogi,
    this._kmtruby,
    this._nalichfutljara,
    this._tipzashity,
    this._sostperehoda,
    this._tipkontrolja1,
    this._sostojanie1,
    this._peremsost1,
    this._potenctrubsumm1,
    this._potenctrubpol1,
    this._potencfutlsumm1,
    this._potencfutlpol1,
    this._tok11,
    this._tok21,
    this._soprotkan11,
    this._soprotkan21,
    this._soprotcepi1,
    this._soprotrast1,
    this._zamechan1,
    this._foto1,
    this._tipkontrolja2,
    this._sostojanie2,
    this._peremsost2,
    this._potenctrubsumm2,
    this._potenctrubpol2,
    this._potencfutlsumm2,
    this._potencfutlpol2,
    this._tok12,
    this._tok22,
    this._soprotkan12,
    this._soprotkan22,
    this._soprotcepi2,
    this._soprotrast2,
    this._zamechan2,
    this._foto2,
  ]);

  int get id => _id;
  String get todoDate => _todoDate;
  String get title => _title;

  String get date1 => _date1;
  String get tipdorogi => _tipdorogi;
  String get doroga => _doroga;
  String get truba => _truba;
  String get kmdorogi => _kmdorogi;
  String get kmtruby => _kmtruby;
  String get nalichfutljara => _nalichfutljara;
  String get tipzashity => _tipzashity;
  String get sostperehoda => _sostperehoda;
  String get tipkontrolja1 => _tipkontrolja1;
  String get sostojanie1 => _sostojanie1;
  String get peremsost1 => _peremsost1;
  String get potenctrubsumm1 => _potenctrubsumm1;
  String get potenctrubpol1 => _potenctrubpol1;
  String get potencfutlsumm1 => _potencfutlsumm1;
  String get potencfutlpol1 => _potencfutlpol1;
  String get tok11 => _tok11;
  String get tok21 => _tok21;
  String get soprotkan11 => _soprotkan11;
  String get soprotkan21 => _soprotkan21;
  String get soprotcepi1 => _soprotcepi1;
  String get soprotrast1 => _soprotrast1;
  String get zamechan1 => _zamechan1;
  String get foto1 => _foto1;
  String get tipkontrolja2 => _tipkontrolja2;
  String get sostojanie2 => _sostojanie2;
  String get peremsost2 => _peremsost2;
  String get potenctrubsumm2 => _potenctrubsumm2;
  String get potenctrubpol2 => _potenctrubpol2;
  String get potencfutlsumm2 => _potencfutlsumm2;
  String get potencfutlpol2 => _potencfutlpol2;
  String get tok12 => _tok12;
  String get tok22 => _tok22;
  String get soprotkan12 => _soprotkan12;
  String get soprotkan22 => _soprotkan22;
  String get soprotcepi2 => _soprotcepi2;
  String get soprotrast2 => _soprotrast2;
  String get zamechan2 => _zamechan2;
  String get foto2 => _foto2;

  set title(String newTitle) {
    if ((newTitle?.length ?? 0) <= 255) {
      _title = newTitle;
    }
  }

  set todoDate(newtodoDate) {
    _todoDate = newtodoDate;
  }

  set date1(String newdate1) {
    if ((newdate1?.length ?? 0) <= 255) {
      _date1 = newdate1;
    }
  }

  set tipdorogi(String newtipdorogi) {
    if ((newtipdorogi?.length ?? 0) <= 255) {
      _tipdorogi = newtipdorogi;
    }
  }

  set doroga(String newdoroga) {
    if ((newdoroga?.length ?? 0) <= 255) {
      _doroga = newdoroga;
    }
  }

  set truba(String newtruba) {
    if ((newtruba?.length ?? 0) <= 255) {
      _truba = newtruba;
    }
  }

  set kmdorogi(String newkmdorogi) {
    if ((newkmdorogi?.length ?? 0) <= 255) {
      _kmdorogi = newkmdorogi;
    }
  }

  set kmtruby(String newkmtruby) {
    if ((newkmtruby?.length ?? 0) <= 255) {
      _kmtruby = newkmtruby;
    }
  }

  set nalichfutljara(String newnalichfutljara) {
    if ((newnalichfutljara?.length ?? 0) <= 255) {
      _nalichfutljara = newnalichfutljara;
    }
  }

  set tipzashity(String newtipzashity) {
    if ((newtipzashity?.length ?? 0) <= 255) {
      _tipzashity = newtipzashity;
    }
  }

  set sostperehoda(String newsostperehoda) {
    if ((newsostperehoda?.length ?? 0) <= 255) {
      _sostperehoda = newsostperehoda;
    }
  }

  set tipkontrolja1(String newtipkontrolja1) {
    if ((newtipkontrolja1?.length ?? 0) <= 255) {
      _tipkontrolja1 = newtipkontrolja1;
    }
  }

  set sostojanie1(String newsostojanie1) {
    if ((newsostojanie1?.length ?? 0) <= 255) {
      _sostojanie1 = newsostojanie1;
    }
  }

  set peremsost1(String newperemsost1) {
    if ((newperemsost1?.length ?? 0) <= 255) {
      _peremsost1 = newperemsost1;
    }
  }

  set potenctrubsumm1(String newpotenctrubsumm1) {
    if ((newpotenctrubsumm1?.length ?? 0) <= 255) {
      _potenctrubsumm1 = newpotenctrubsumm1;
    }
  }

  set potenctrubpol1(String newpotenctrubpol1) {
    if ((newpotenctrubpol1?.length ?? 0) <= 255) {
      _potenctrubpol1 = newpotenctrubpol1;
    }
  }

  set potencfutlsumm1(String newpotencfutlsumm1) {
    if ((newpotencfutlsumm1?.length ?? 0) <= 255) {
      _potencfutlsumm1 = newpotencfutlsumm1;
    }
  }

  set potencfutlpol1(String newpotencfutlpol1) {
    if ((newpotencfutlpol1?.length ?? 0) <= 255) {
      _potencfutlpol1 = newpotencfutlpol1;
    }
  }

  set tok11(String newtok11) {
    if ((newtok11?.length ?? 0) <= 255) {
      _tok11 = newtok11;
    }
  }

  set tok21(String newtok21) {
    if ((newtok21?.length ?? 0) <= 255) {
      _tok21 = newtok21;
    }
  }

  set soprotkan11(String newsoprotkan11) {
    if ((newsoprotkan11?.length ?? 0) <= 255) {
      _soprotkan11 = newsoprotkan11;
    }
  }

  set soprotkan21(String newsoprotkan21) {
    if ((newsoprotkan21?.length ?? 0) <= 255) {
      _soprotkan21 = newsoprotkan21;
    }
  }

  set soprotcepi1(String newsoprotcepi1) {
    if ((newsoprotcepi1?.length ?? 0) <= 255) {
      _soprotcepi1 = newsoprotcepi1;
    }
  }

  set soprotrast1(String newsoprotrast1) {
    if ((newsoprotrast1?.length ?? 0) <= 255) {
      _soprotrast1 = newsoprotrast1;
    }
  }

  set zamechan1(String newzamechan1) {
    if ((newzamechan1?.length ?? 0) <= 255) {
      _zamechan1 = newzamechan1;
    }
  }

  set foto1(String newfoto1) {
    if ((newfoto1?.length ?? 0) <= 255) {
      _foto1 = newfoto1;
    }
  }

  set tipkontrolja2(String newtipkontrolja2) {
    if ((newtipkontrolja2?.length ?? 0) <= 255) {
      _tipkontrolja2 = newtipkontrolja2;
    }
  }

  set sostojanie2(String newsostojanie2) {
    if ((newsostojanie2?.length ?? 0) <= 255) {
      _sostojanie2 = newsostojanie2;
    }
  }

  set peremsost2(String newperemsost2) {
    if ((newperemsost2?.length ?? 0) <= 255) {
      _peremsost2 = newperemsost2;
    }
  }

  set potenctrubsumm2(String newpotenctrubsumm2) {
    if ((newpotenctrubsumm2?.length ?? 0) <= 255) {
      _potenctrubsumm2 = newpotenctrubsumm2;
    }
  }

  set potenctrubpol2(String newpotenctrubpol2) {
    if ((newpotenctrubpol2?.length ?? 0) <= 255) {
      _potenctrubpol2 = newpotenctrubpol2;
    }
  }

  set potencfutlsumm2(String newpotencfutlsumm2) {
    if ((newpotencfutlsumm2?.length ?? 0) <= 255) {
      _potencfutlsumm2 = newpotencfutlsumm2;
    }
  }

  set potencfutlpol2(String newpotencfutlpol2) {
    if ((newpotencfutlpol2?.length ?? 0) <= 255) {
      _potencfutlpol2 = newpotencfutlpol2;
    }
  }

  set tok12(String newtok12) {
    if ((newtok12?.length ?? 0) <= 255) {
      _tok12 = newtok12;
    }
  }

  set tok22(String newtok22) {
    if ((newtok22?.length ?? 0) <= 255) {
      _tok22 = newtok22;
    }
  }

  set soprotkan12(String newsoprotkan12) {
    if ((newsoprotkan12?.length ?? 0) <= 255) {
      _soprotkan12 = newsoprotkan12;
    }
  }

  set soprotkan22(String newsoprotkan22) {
    if ((newsoprotkan22?.length ?? 0) <= 255) {
      _soprotkan22 = newsoprotkan22;
    }
  }

  set soprotcepi2(String newsoprotcepi2) {
    if ((newsoprotcepi2?.length ?? 0) <= 255) {
      _soprotcepi2 = newsoprotcepi2;
    }
  }

  set soprotrast2(String newsoprotrast2) {
    if ((newsoprotrast2?.length ?? 0) <= 255) {
      _soprotrast2 = newsoprotrast2;
    }
  }

  set zamechan2(String newzamechan2) {
    if ((newzamechan2?.length ?? 0) <= 255) {
      _zamechan2 = newzamechan2;
    }
  }

  set foto2(String newfoto2) {
    if ((newfoto2?.length ?? 0) <= 255) {
      _foto2 = newfoto2;
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['title'] = _title;
    map['date'] = _todoDate;

    map['date1'] = _date1;
    map['tipdorogi'] = _tipdorogi;
    map['doroga'] = _doroga;
    map['truba'] = _truba;
    map['kmdorogi'] = _kmdorogi;
    map['kmtruby'] = _kmtruby;
    map['nalichfutljara'] = _nalichfutljara;
    map['tipzashity'] = _tipzashity;
    map['sostperehoda'] = _sostperehoda;
    map['tipkontrolja1'] = _tipkontrolja1;
    map['sostojanie1'] = _sostojanie1;
    map['peremsost1'] = _peremsost1;
    map['potenctrubsumm1'] = _potenctrubsumm1;
    map['potenctrubpol1'] = _potenctrubpol1;
    map['potencfutlsumm1'] = _potencfutlsumm1;
    map['potencfutlpol1'] = _potencfutlpol1;
    map['tok11'] = _tok11;
    map['tok21'] = _tok21;
    map['soprotkan11'] = _soprotkan11;
    map['soprotkan21'] = _soprotkan21;
    map['soprotcepi1'] = _soprotcepi1;
    map['soprotrast1'] = _soprotrast1;
    map['zamechan1'] = _zamechan1;
    map['foto1'] = _foto1;
    map['tipkontrolja2'] = _tipkontrolja2;
    map['sostojanie2'] = _sostojanie2;
    map['peremsost2'] = _peremsost2;
    map['potenctrubsumm2'] = _potenctrubsumm2;
    map['potenctrubpol2'] = _potenctrubpol2;
    map['potencfutlsumm2'] = _potencfutlsumm2;
    map['potencfutlpol2'] = _potencfutlpol2;
    map['tok12'] = _tok12;
    map['tok22'] = _tok22;
    map['soprotkan12'] = _soprotkan12;
    map['soprotkan22'] = _soprotkan22;
    map['soprotcepi2'] = _soprotcepi2;
    map['soprotrast2'] = _soprotrast2;
    map['zamechan2'] = _zamechan2;
    map['foto2'] = _foto2;

    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }

  Azd.fromObject(dynamic o) {
    _id = o['id'];
    _title = o['title'];
    _todoDate = o['date'];
    _date1 = o['date1'];
    _tipdorogi = o['tipdorogi'];
    _doroga = o['doroga'];
    _truba = o['truba'];
    _kmdorogi = o['kmdorogi'];
    _kmtruby = o['kmtruby'];
    _nalichfutljara = o['nalichfutljara'];
    _tipzashity = o['tipzashity'];
    _sostperehoda = o['sostperehoda'];
    _tipkontrolja1 = o['tipkontrolja1'];
    _sostojanie1 = o['sostojanie1'];
    _peremsost1 = o['peremsost1'];
    _potenctrubsumm1 = o['potenctrubsumm1'];
    _potenctrubpol1 = o['potenctrubpol1'];
    _potencfutlsumm1 = o['potencfutlsumm1'];
    _potencfutlpol1 = o['potencfutlpol1'];
    _tok11 = o['tok11'];
    _tok21 = o['tok21'];
    _soprotkan11 = o['soprotkan11'];
    _soprotkan21 = o['soprotkan21'];
    _soprotcepi1 = o['soprotcepi1'];
    _soprotrast1 = o['soprotrast1'];
    _zamechan1 = o['zamechan1'];
    _foto1 = o['foto1'];
    _tipkontrolja2 = o['tipkontrolja2'];
    _sostojanie2 = o['sostojanie2'];
    _peremsost2 = o['peremsost2'];
    _potenctrubsumm2 = o['potenctrubsumm2'];
    _potenctrubpol2 = o['potenctrubpol2'];
    _potencfutlsumm2 = o['potencfutlsumm2'];
    _potencfutlpol2 = o['potencfutlpol2'];
    _tok12 = o['tok12'];
    _tok22 = o['tok22'];
    _soprotkan12 = o['soprotkan12'];
    _soprotkan22 = o['soprotkan22'];
    _soprotcepi2 = o['soprotcepi2'];
    _soprotrast2 = o['soprotrast2'];
    _zamechan2 = o['zamechan2'];
    _foto2 = o['foto2'];
  }
}
