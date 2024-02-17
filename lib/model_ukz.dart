import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';

class Ukz {
  int _id;
  //скз1
  String _todoDate;
  String _title;
  String _date1;
  String _object1;
  String _markaskz1;
  String _sostojanieskz1;
  String _fotoskz1;
  String _zamechskz1;
  String _potencialskz1;
  String _naprrabskz1;
  String _naprmaxskz1;
  String _tokrabskz1;
  String _tokmaxskz1;
  String _zapaspotokuskz1;
  String _shunttokskz1;
  String _shuntnaprskz1;
  String _soprotskz1;
  String _schetelec1;
  String _schetnarab1;
  String _schetzasch1;
//скз2
  String _date2;
  String _object2;
  String _markaskz2;
  String _sostojanieskz2;
  String _fotoskz2;
  String _zamechskz2;
  String _potencialskz2;
  String _naprrabskz2;
  String _naprmaxskz2;
  String _tokrabskz2;
  String _tokmaxskz2;
  String _zapaspotokuskz2;
  String _shunttokskz2;
  String _shuntnaprskz2;
  String _shunttokskz3;
  String _shuntnaprskz3;
  String _shunttokskz4;
  String _shuntnaprskz4;
  String _soprotskz2;
  String _schetelec2;
  String _schetnarab2;
  String _schetzasch2;
  //КИПы
  String _kipname1;
  String _kipname2;
  String _kipname3;
  String _kipname4;
  String _sostojaniekip1;
  String _sostojaniekip2;
  String _sostojaniekip3;
  String _sostojaniekip4;
  String _fotokip1;
  String _fotokip2;
  String _fotokip3;
  String _fotokip4;
  String _zamechkip1;
  String _zamechkip2;
  String _zamechkip3;
  String _zamechkip4;
  String _potenctdvklsum1;
  String _potenctdvklpol1;
  String _potenctdotklsum1;
  String _potenctdotklpol1;
  String _peremsost1;
  String _datchkorr1;
  String _potenctdvklsum2;
  String _potenctdvklpol2;
  String _potenctdotklsum2;
  String _potenctdotklpol2;
  String _peremsost2;
  String _datchkorr2;
  String _potenctdvklsum3;
  String _potenctdvklpol3;
  String _potenctdotklsum3;
  String _potenctdotklpol3;
  String _peremsost3;
  String _datchkorr3;
  String _potenctdvklsum4;
  String _potenctdvklpol4;
  String _potenctdotklsum4;
  String _potenctdotklpol4;
  String _peremsost4;
  String _datchkorr4;
  //БДРы
  String _bdr1;
  String _sostojaniebdr1;
  String _fotobdr1;
  String _zamechbdr1;
  String _tok1bdr1;
  String _tok2bdr1;
  String _tok3bdr1;
  String _tok4bdr1;
  String _tok5bdr1;
  String _soprot1bdr1;
  String _soprot2bdr1;
  String _soprot3bdr1;
  String _soprot4bdr1;
  String _soprot5bdr1;
  String _bdr2;
  String _sostojaniebdr2;
  String _fotobdr2;
  String _zamechbdr2;
  String _tok1bdr2;
  String _tok2bdr2;
  String _tok3bdr2;
  String _tok4bdr2;
  String _tok5bdr2;
  String _soprot1bdr2;
  String _soprot2bdr2;
  String _soprot3bdr2;
  String _soprot4bdr2;
  String _soprot5bdr2;
  //АЗ
  String _markaaz;
  String _sostojanieaz;
  String _fotoaz;
  String _zamechaz;
  String _tok1az;
  String _tok2az;
  String _tok3az;
  String _tok4az;
  String _tok5az;
  String _soprrast1az;
  String _soprrast2az;
  String _soprrast3az;
  String _soprrast4az;
  String _soprrast5az;
  //ЗЗ
  String _sostojaniezz;
  String _fotozz;
  String _zamechzz;
  String _soprrastzz;
  //ВЛки
  String _naznachvl1;
  String _sostojanievl1;
  String _fotovl1;
  String _zamechvl1;
  String _tipoporvl1;
  String _kolvooporvl1;
  String _dlinavl1;
  String _provodvl1;
  String _kolvoizolvl1;
  String _markaizolvl1;
  String _naznachvl2;
  String _sostojanievl2;
  String _fotovl2;
  String _zamechvl2;
  String _tipoporvl2;
  String _kolvooporvl2;
  String _dlinavl2;
  String _provodvl2;
  String _kolvoizolvl2;
  String _markaizolvl2;
  String _naznachvl3;
  String _sostojanievl3;
  String _fotovl3;
  String _zamechvl3;
  String _tipoporvl3;
  String _kolvooporvl3;
  String _dlinavl3;
  String _provodvl3;
  String _kolvoizolvl3;
  String _markaizolvl3;
  //КЛки
  String _naznachkl1;
  String _sostojaniekl1;
  String _fotokl1;
  String _zamechkl1;
  String _markakabelkl1;
  String _dlinakl1;
  String _soprotkl1;
  String _naznachkl2;
  String _sostojaniekl2;
  String _fotokl2;
  String _zamechkl2;
  String _markakabelkl2;
  String _dlinakl2;
  String _soprotkl2;
  String _naznachkl3;
  String _sostojaniekl3;
  String _fotokl3;
  String _zamechkl3;
  String _markakabelkl3;
  String _dlinakl3;
  String _soprotkl3;
  //КТП
  String _tipktp;
  String _sostojaniektp;
  String _fotoktp;
  String _markatrr;
  String _tipshr;
  String _sostojanieshr;
  String _sostojanieograzhd;
  String _sostojaniezz2;
  String _soprrastzz2;
  String _sostojanieraz;
  String _tipraz;
  //калькулятор простоя СКЗ
  String _potrmoschnost;
  String _datato1;
  String _elekschetchik1;
  String _datato2;
  String _elekschetchik2;
  String _prostoi1;
  String _narabschetchik1;
  String _narabschetchik2;
  String _prostoi2;

  String _rogruntskz;
  String _rogruntktp;
  String _rogruntraz;
  String _rogruntaz;
  String _soprotzzktp;
  String _soprotzzraz;

  Ukz(
    this._title,
    this._todoDate, [
    //скз1
    this._date1,
    this._object1,
    this._markaskz1,
    this._sostojanieskz1,
    this._fotoskz1,
    this._zamechskz1,
    this._potencialskz1,
    this._naprrabskz1,
    this._naprmaxskz1,
    this._tokrabskz1,
    this._tokmaxskz1,
    this._zapaspotokuskz1,
    this._shunttokskz1,
    this._shuntnaprskz1,
    this._soprotskz1,
    this._schetelec1,
    this._schetnarab1,
    this._schetzasch1,
//скз2
    this._date2,
    this._object2,
    this._markaskz2,
    this._sostojanieskz2,
    this._fotoskz2,
    this._zamechskz2,
    this._potencialskz2,
    this._naprrabskz2,
    this._naprmaxskz2,
    this._tokrabskz2,
    this._tokmaxskz2,
    this._zapaspotokuskz2,
    this._shunttokskz2,
    this._shuntnaprskz2,
    this._shunttokskz3,
    this._shuntnaprskz3,
    this._shunttokskz4,
    this._shuntnaprskz4,
    this._soprotskz2,
    this._schetelec2,
    this._schetnarab2,
    this._schetzasch2,
    //КИПы
    this._kipname1,
    this._kipname2,
    this._kipname3,
    this._kipname4,
    this._sostojaniekip1,
    this._sostojaniekip2,
    this._sostojaniekip3,
    this._sostojaniekip4,
    this._fotokip1,
    this._fotokip2,
    this._fotokip3,
    this._fotokip4,
    this._zamechkip1,
    this._zamechkip2,
    this._zamechkip3,
    this._zamechkip4,
    this._potenctdvklsum1,
    this._potenctdvklpol1,
    this._potenctdotklsum1,
    this._potenctdotklpol1,
    this._peremsost1,
    this._datchkorr1,
    this._potenctdvklsum2,
    this._potenctdvklpol2,
    this._potenctdotklsum2,
    this._potenctdotklpol2,
    this._peremsost2,
    this._datchkorr2,
    this._potenctdvklsum3,
    this._potenctdvklpol3,
    this._potenctdotklsum3,
    this._potenctdotklpol3,
    this._peremsost3,
    this._datchkorr3,
    this._potenctdvklsum4,
    this._potenctdvklpol4,
    this._potenctdotklsum4,
    this._potenctdotklpol4,
    this._peremsost4,
    this._datchkorr4,
    //БДРы
    this._bdr1,
    this._sostojaniebdr1,
    this._fotobdr1,
    this._zamechbdr1,
    this._tok1bdr1,
    this._tok2bdr1,
    this._tok3bdr1,
    this._tok4bdr1,
    this._tok5bdr1,
    this._soprot1bdr1,
    this._soprot2bdr1,
    this._soprot3bdr1,
    this._soprot4bdr1,
    this._soprot5bdr1,
    this._bdr2,
    this._sostojaniebdr2,
    this._fotobdr2,
    this._zamechbdr2,
    this._tok1bdr2,
    this._tok2bdr2,
    this._tok3bdr2,
    this._tok4bdr2,
    this._tok5bdr2,
    this._soprot1bdr2,
    this._soprot2bdr2,
    this._soprot3bdr2,
    this._soprot4bdr2,
    this._soprot5bdr2,
    //АЗ
    this._markaaz,
    this._sostojanieaz,
    this._fotoaz,
    this._zamechaz,
    this._tok1az,
    this._tok2az,
    this._tok3az,
    this._tok4az,
    this._tok5az,
    this._soprrast1az,
    this._soprrast2az,
    this._soprrast3az,
    this._soprrast4az,
    this._soprrast5az,
    //ЗЗ
    this._sostojaniezz,
    this._soprrastzz,
    this._fotozz,
    this._zamechzz,
    //ВЛки
    this._naznachvl1,
    this._sostojanievl1,
    this._fotovl1,
    this._zamechvl1,
    this._tipoporvl1,
    this._kolvooporvl1,
    this._dlinavl1,
    this._provodvl1,
    this._kolvoizolvl1,
    this._markaizolvl1,
    this._naznachvl2,
    this._sostojanievl2,
    this._fotovl2,
    this._zamechvl2,
    this._tipoporvl2,
    this._kolvooporvl2,
    this._dlinavl2,
    this._provodvl2,
    this._kolvoizolvl2,
    this._markaizolvl2,
    this._naznachvl3,
    this._sostojanievl3,
    this._fotovl3,
    this._zamechvl3,
    this._tipoporvl3,
    this._kolvooporvl3,
    this._dlinavl3,
    this._provodvl3,
    this._kolvoizolvl3,
    this._markaizolvl3,
    //КЛки
    this._naznachkl1,
    this._sostojaniekl1,
    this._fotokl1,
    this._zamechkl1,
    this._markakabelkl1,
    this._dlinakl1,
    this._soprotkl1,
    this._naznachkl2,
    this._sostojaniekl2,
    this._fotokl2,
    this._zamechkl2,
    this._markakabelkl2,
    this._dlinakl2,
    this._soprotkl2,
    this._naznachkl3,
    this._sostojaniekl3,
    this._fotokl3,
    this._zamechkl3,
    this._markakabelkl3,
    this._dlinakl3,
    this._soprotkl3,
    //КТП
    this._tipktp,
    this._sostojaniektp,
    this._fotoktp,
    this._markatrr,
    this._tipshr,
    this._sostojanieshr,
    this._sostojanieograzhd,
    this._sostojaniezz2,
    this._soprrastzz2,
    this._sostojanieraz,
    this._tipraz,
    //калькулятор простоя СКЗ
    this._potrmoschnost,
    this._datato1,
    this._elekschetchik1,
    this._datato2,
    this._elekschetchik2,
    this._prostoi1,
    this._narabschetchik1,
    this._narabschetchik2,
    this._prostoi2,
    this._rogruntskz,
    this._rogruntktp,
    this._rogruntraz,
    this._rogruntaz,
    this._soprotzzktp,
    this._soprotzzraz,
  ]);

  Ukz.withId(
    this._id,
    this._title,
    this._todoDate, [
    //скз1
    this._date1,
    this._object1,
    this._markaskz1,
    this._sostojanieskz1,
    this._fotoskz1,
    this._zamechskz1,
    this._potencialskz1,
    this._naprrabskz1,
    this._naprmaxskz1,
    this._tokrabskz1,
    this._tokmaxskz1,
    this._zapaspotokuskz1,
    this._shunttokskz1,
    this._shuntnaprskz1,
    this._soprotskz1,
    this._schetelec1,
    this._schetnarab1,
    this._schetzasch1,
//скз2
    this._date2,
    this._object2,
    this._markaskz2,
    this._sostojanieskz2,
    this._fotoskz2,
    this._zamechskz2,
    this._potencialskz2,
    this._naprrabskz2,
    this._naprmaxskz2,
    this._tokrabskz2,
    this._tokmaxskz2,
    this._zapaspotokuskz2,
    this._shunttokskz2,
    this._shuntnaprskz2,
    this._shunttokskz3,
    this._shuntnaprskz3,
    this._shunttokskz4,
    this._shuntnaprskz4,
    this._soprotskz2,
    this._schetelec2,
    this._schetnarab2,
    this._schetzasch2,
    //КИПы
    this._kipname1,
    this._kipname2,
    this._kipname3,
    this._kipname4,
    this._sostojaniekip1,
    this._sostojaniekip2,
    this._sostojaniekip3,
    this._sostojaniekip4,
    this._fotokip1,
    this._fotokip2,
    this._fotokip3,
    this._fotokip4,
    this._zamechkip1,
    this._zamechkip2,
    this._zamechkip3,
    this._zamechkip4,
    this._potenctdvklsum1,
    this._potenctdvklpol1,
    this._potenctdotklsum1,
    this._potenctdotklpol1,
    this._peremsost1,
    this._datchkorr1,
    this._potenctdvklsum2,
    this._potenctdvklpol2,
    this._potenctdotklsum2,
    this._potenctdotklpol2,
    this._peremsost2,
    this._datchkorr2,
    this._potenctdvklsum3,
    this._potenctdvklpol3,
    this._potenctdotklsum3,
    this._potenctdotklpol3,
    this._peremsost3,
    this._datchkorr3,
    this._potenctdvklsum4,
    this._potenctdvklpol4,
    this._potenctdotklsum4,
    this._potenctdotklpol4,
    this._peremsost4,
    this._datchkorr4,
    //БДРы
    this._bdr1,
    this._sostojaniebdr1,
    this._fotobdr1,
    this._zamechbdr1,
    this._tok1bdr1,
    this._tok2bdr1,
    this._tok3bdr1,
    this._tok4bdr1,
    this._tok5bdr1,
    this._soprot1bdr1,
    this._soprot2bdr1,
    this._soprot3bdr1,
    this._soprot4bdr1,
    this._soprot5bdr1,
    this._bdr2,
    this._sostojaniebdr2,
    this._fotobdr2,
    this._zamechbdr2,
    this._tok1bdr2,
    this._tok2bdr2,
    this._tok3bdr2,
    this._tok4bdr2,
    this._tok5bdr2,
    this._soprot1bdr2,
    this._soprot2bdr2,
    this._soprot3bdr2,
    this._soprot4bdr2,
    this._soprot5bdr2,
    //АЗ
    this._markaaz,
    this._sostojanieaz,
    this._fotoaz,
    this._zamechaz,
    this._tok1az,
    this._tok2az,
    this._tok3az,
    this._tok4az,
    this._tok5az,
    this._soprrast1az,
    this._soprrast2az,
    this._soprrast3az,
    this._soprrast4az,
    this._soprrast5az,
    //ЗЗ
    this._sostojaniezz,
    this._soprrastzz,
    this._fotozz,
    this._zamechzz,
    //ВЛки
    this._naznachvl1,
    this._sostojanievl1,
    this._fotovl1,
    this._zamechvl1,
    this._tipoporvl1,
    this._kolvooporvl1,
    this._dlinavl1,
    this._provodvl1,
    this._kolvoizolvl1,
    this._markaizolvl1,
    this._naznachvl2,
    this._sostojanievl2,
    this._fotovl2,
    this._zamechvl2,
    this._tipoporvl2,
    this._kolvooporvl2,
    this._dlinavl2,
    this._provodvl2,
    this._kolvoizolvl2,
    this._markaizolvl2,
    this._naznachvl3,
    this._sostojanievl3,
    this._fotovl3,
    this._zamechvl3,
    this._tipoporvl3,
    this._kolvooporvl3,
    this._dlinavl3,
    this._provodvl3,
    this._kolvoizolvl3,
    this._markaizolvl3,
    //КЛки
    this._naznachkl1,
    this._sostojaniekl1,
    this._fotokl1,
    this._zamechkl1,
    this._markakabelkl1,
    this._dlinakl1,
    this._soprotkl1,
    this._naznachkl2,
    this._sostojaniekl2,
    this._fotokl2,
    this._zamechkl2,
    this._markakabelkl2,
    this._dlinakl2,
    this._soprotkl2,
    this._naznachkl3,
    this._sostojaniekl3,
    this._fotokl3,
    this._zamechkl3,
    this._markakabelkl3,
    this._dlinakl3,
    this._soprotkl3,
    //КТП
    this._tipktp,
    this._sostojaniektp,
    this._fotoktp,
    this._markatrr,
    this._tipshr,
    this._sostojanieshr,
    this._sostojanieograzhd,
    this._sostojaniezz2,
    this._soprrastzz2,
    this._sostojanieraz,
    this._tipraz,
    //калькулятор простоя СКЗ
    this._potrmoschnost,
    this._datato1,
    this._elekschetchik1,
    this._datato2,
    this._elekschetchik2,
    this._prostoi1,
    this._narabschetchik1,
    this._narabschetchik2,
    this._prostoi2,
    this._rogruntskz,
    this._rogruntktp,
    this._rogruntraz,
    this._rogruntaz,
    this._soprotzzktp,
    this._soprotzzraz,
  ]);

  int get id => _id;

  String get title => _title;
  String get todoDate => _todoDate;
  String get date1 => _date1;
  String get object1 => _object1;
  String get markaskz1 => _markaskz1;
  String get sostojanieskz1 => _sostojanieskz1;
  String get fotoskz1 => _fotoskz1;
  String get zamechskz1 => _zamechskz1;
  String get potencialskz1 => _potencialskz1;
  String get naprrabskz1 => _naprrabskz1;
  String get naprmaxskz1 => _naprmaxskz1;
  String get tokrabskz1 => _tokrabskz1;
  String get tokmaxskz1 => _tokmaxskz1;
  String get zapaspotokuskz1 => _zapaspotokuskz1;
  String get shunttokskz1 => _shunttokskz1;
  String get shuntnaprskz1 => _shuntnaprskz1;
  String get soprotskz1 => _soprotskz1;
  String get schetelec1 => _schetelec1;
  String get schetnarab1 => _schetnarab1;
  String get schetzasch1 => _schetzasch1;
//скз2
  String get date2 => _date2;
  String get object2 => _object2;
  String get markaskz2 => _markaskz2;
  String get sostojanieskz2 => _sostojanieskz2;
  String get fotoskz2 => _fotoskz2;
  String get zamechskz2 => _zamechskz2;
  String get potencialskz2 => _potencialskz2;
  String get naprrabskz2 => _naprrabskz2;
  String get naprmaxskz2 => _naprmaxskz2;
  String get tokrabskz2 => _tokrabskz2;
  String get tokmaxskz2 => _tokmaxskz2;
  String get zapaspotokuskz2 => _zapaspotokuskz2;
  String get shunttokskz2 => _shunttokskz2;
  String get shuntnaprskz2 => _shuntnaprskz2;
  String get shunttokskz3 => _shunttokskz3;
  String get shuntnaprskz3 => _shuntnaprskz3;
  String get shunttokskz4 => _shunttokskz4;
  String get shuntnaprskz4 => _shuntnaprskz4;
  String get soprotskz2 => _soprotskz2;
  String get schetelec2 => _schetelec2;
  String get schetnarab2 => _schetnarab2;
  String get schetzasch2 => _schetzasch2;
  String get kipname1 => _kipname1;
  String get kipname2 => _kipname2;
  String get kipname3 => _kipname3;
  String get kipname4 => _kipname4;
  String get sostojaniekip1 => _sostojaniekip1;
  String get sostojaniekip2 => _sostojaniekip2;
  String get sostojaniekip3 => _sostojaniekip3;
  String get sostojaniekip4 => _sostojaniekip4;
  String get fotokip1 => _fotokip1;
  String get fotokip2 => _fotokip2;
  String get fotokip3 => _fotokip3;
  String get fotokip4 => _fotokip4;
  String get zamechkip1 => _zamechkip1;
  String get zamechkip2 => _zamechkip2;
  String get zamechkip3 => _zamechkip3;
  String get zamechkip4 => _zamechkip4;
  String get potenctdvklsum1 => _potenctdvklsum1;
  String get potenctdvklpol1 => _potenctdvklpol1;
  String get potenctdotklsum1 => _potenctdotklsum1;
  String get potenctdotklpol1 => _potenctdotklpol1;
  String get peremsost1 => _peremsost1;
  String get datchkorr1 => _datchkorr1;
  String get potenctdvklsum2 => _potenctdvklsum2;
  String get potenctdvklpol2 => _potenctdvklpol2;
  String get potenctdotklsum2 => _potenctdotklsum2;
  String get potenctdotklpol2 => _potenctdotklpol2;
  String get peremsost2 => _peremsost2;
  String get datchkorr2 => _datchkorr2;
  String get potenctdvklsum3 => _potenctdvklsum3;
  String get potenctdvklpol3 => _potenctdvklpol3;
  String get potenctdotklsum3 => _potenctdotklsum3;
  String get potenctdotklpol3 => _potenctdotklpol3;
  String get peremsost3 => _peremsost3;
  String get datchkorr3 => _datchkorr3;
  String get potenctdvklsum4 => _potenctdvklsum4;
  String get potenctdvklpol4 => _potenctdvklpol4;
  String get potenctdotklsum4 => _potenctdotklsum4;
  String get potenctdotklpol4 => _potenctdotklpol4;
  String get peremsost4 => _peremsost4;
  String get datchkorr4 => _datchkorr4;
  String get bdr1 => _bdr1;
  String get sostojaniebdr1 => _sostojaniebdr1;
  String get fotobdr1 => _fotobdr1;
  String get zamechbdr1 => _zamechbdr1;
  String get tok1bdr1 => _tok1bdr1;
  String get tok2bdr1 => _tok2bdr1;
  String get tok3bdr1 => _tok3bdr1;
  String get tok4bdr1 => _tok4bdr1;
  String get tok5bdr1 => _tok5bdr1;
  String get soprot1bdr1 => _soprot1bdr1;
  String get soprot2bdr1 => _soprot2bdr1;
  String get soprot3bdr1 => _soprot3bdr1;
  String get soprot4bdr1 => _soprot4bdr1;
  String get soprot5bdr1 => _soprot5bdr1;
  String get bdr2 => _bdr2;
  String get sostojaniebdr2 => _sostojaniebdr2;
  String get fotobdr2 => _fotobdr2;
  String get zamechbdr2 => _zamechbdr2;
  String get tok1bdr2 => _tok1bdr2;
  String get tok2bdr2 => _tok2bdr2;
  String get tok3bdr2 => _tok3bdr2;
  String get tok4bdr2 => _tok4bdr2;
  String get tok5bdr2 => _tok5bdr2;
  String get soprot1bdr2 => _soprot1bdr2;
  String get soprot2bdr2 => _soprot2bdr2;
  String get soprot3bdr2 => _soprot3bdr2;
  String get soprot4bdr2 => _soprot4bdr2;
  String get soprot5bdr2 => _soprot5bdr2;
  String get sostojanieaz => _sostojanieaz;
  String get markaaz => _markaaz;
  String get fotoaz => _fotoaz;
  String get zamechaz => _zamechaz;
  String get tok1az => _tok1az;
  String get tok2az => _tok2az;
  String get tok3az => _tok3az;
  String get tok4az => _tok4az;
  String get tok5az => _tok5az;
  String get soprrast1az => _soprrast1az;
  String get soprrast2az => _soprrast2az;
  String get soprrast3az => _soprrast3az;
  String get soprrast4az => _soprrast4az;
  String get soprrast5az => _soprrast5az;
  String get sostojaniezz => _sostojaniezz;
  String get soprrastzz => _soprrastzz;
  String get fotozz => _fotozz;
  String get zamechzz => _zamechzz;
  String get naznachvl1 => _naznachvl1;
  String get sostojanievl1 => _sostojanievl1;
  String get fotovl1 => _fotovl1;
  String get zamechvl1 => _zamechvl1;
  String get tipoporvl1 => _tipoporvl1;
  String get kolvooporvl1 => _kolvooporvl1;
  String get dlinavl1 => _dlinavl1;
  String get provodvl1 => _provodvl1;
  String get kolvoizolvl1 => _kolvoizolvl1;
  String get markaizolvl1 => _markaizolvl1;
  String get naznachvl2 => _naznachvl2;
  String get sostojanievl2 => _sostojanievl2;
  String get fotovl2 => _fotovl2;
  String get zamechvl2 => _zamechvl2;
  String get tipoporvl2 => _tipoporvl2;
  String get kolvooporvl2 => _kolvooporvl2;
  String get dlinavl2 => _dlinavl2;
  String get provodvl2 => _provodvl2;
  String get kolvoizolvl2 => _kolvoizolvl2;
  String get markaizolvl2 => _markaizolvl2;
  String get naznachvl3 => _naznachvl3;
  String get sostojanievl3 => _sostojanievl3;
  String get fotovl3 => _fotovl3;
  String get zamechvl3 => _zamechvl3;
  String get tipoporvl3 => _tipoporvl3;
  String get kolvooporvl3 => _kolvooporvl3;
  String get dlinavl3 => _dlinavl3;
  String get provodvl3 => _provodvl3;
  String get kolvoizolvl3 => _kolvoizolvl3;
  String get markaizolvl3 => _markaizolvl3;
  String get naznachkl1 => _naznachkl1;
  String get sostojaniekl1 => _sostojaniekl1;
  String get fotokl1 => _fotokl1;
  String get zamechkl1 => _zamechkl1;
  String get markakabelkl1 => _markakabelkl1;
  String get dlinakl1 => _dlinakl1;
  String get soprotkl1 => _soprotkl1;
  String get naznachkl2 => _naznachkl2;
  String get sostojaniekl2 => _sostojaniekl2;
  String get fotokl2 => _fotokl2;
  String get zamechkl2 => _zamechkl2;
  String get markakabelkl2 => _markakabelkl2;
  String get dlinakl2 => _dlinakl2;
  String get soprotkl2 => _soprotkl2;
  String get naznachkl3 => _naznachkl3;
  String get sostojaniekl3 => _sostojaniekl3;
  String get fotokl3 => _fotokl3;
  String get zamechkl3 => _zamechkl3;
  String get markakabelkl3 => _markakabelkl3;
  String get dlinakl3 => _dlinakl3;
  String get soprotkl3 => _soprotkl3;
  String get tipktp => _tipktp;
  String get sostojaniektp => _sostojaniektp;
  String get fotoktp => _fotoktp;
  String get markatrr => _markatrr;
  String get tipshr => _tipshr;
  String get sostojanieshr => _sostojanieshr;
  String get sostojanieograzhd => _sostojanieograzhd;
  String get sostojaniezz2 => _sostojaniezz2;
  String get soprrastzz2 => _soprrastzz2;
  String get sostojanieraz => _sostojanieraz;
  String get tipraz => _tipraz;

  String get potrmoschnost => _potrmoschnost;
  String get datato1 => _datato1;
  String get elekschetchik1 => _elekschetchik1;
  String get datato2 => _datato2;
  String get elekschetchik2 => _elekschetchik2;
  String get prostoi1 => _prostoi1;
  String get narabschetchik1 => _narabschetchik1;
  String get narabschetchik2 => _narabschetchik2;
  String get prostoi2 => _prostoi2;

  String get rogruntskz => _rogruntskz;
  String get rogruntktp => _rogruntktp;
  String get rogruntraz => _rogruntraz;
  String get rogruntaz => _rogruntaz;
  String get soprotzzktp => _soprotzzktp;
  String get soprotzzraz => _soprotzzraz;

  set title(String newTitle) {
    if ((newTitle?.length ?? 0) <= 255) {
      _title = newTitle;
    }
  }

  set object1(String newobject1) {
    if ((newobject1?.length ?? 0) <= 255) {
      _object1 = newobject1;
    }
  }

  set markaskz1(String newmarkaskz1) {
    if ((newmarkaskz1?.length ?? 0) <= 255) {
      _markaskz1 = newmarkaskz1;
    }
  }

  set sostojanieskz1(String newsostojanieskz1) {
    if ((newsostojanieskz1?.length ?? 0) <= 255) {
      _sostojanieskz1 = newsostojanieskz1;
    }
  }

  set fotoskz1(String newfotoskz1) {
    if ((newfotoskz1?.length ?? 0) <= 255) {
      _fotoskz1 = newfotoskz1;
    }
  }

  set zamechskz1(String newzamechskz1) {
    if ((newzamechskz1?.length ?? 0) <= 255) {
      _zamechskz1 = newzamechskz1;
    }
  }

  set potencialskz1(String newpotencialskz1) {
    if ((newpotencialskz1?.length ?? 0) <= 255) {
      _potencialskz1 = newpotencialskz1;
    }
  }

  set naprrabskz1(String newnaprrabskz1) {
    if ((newnaprrabskz1?.length ?? 0) <= 255) {
      _naprrabskz1 = newnaprrabskz1;
    }
  }

  set naprmaxskz1(String newnaprmaxskz1) {
    if ((newnaprmaxskz1?.length ?? 0) <= 255) {
      _naprmaxskz1 = newnaprmaxskz1;
    }
  }

  set tokrabskz1(String newtokrabskz1) {
    if ((newtokrabskz1?.length ?? 0) <= 255) {
      _tokrabskz1 = newtokrabskz1;
    }
  }

  set tokmaxskz1(String newtokmaxskz1) {
    if ((newtokmaxskz1?.length ?? 0) <= 255) {
      _tokmaxskz1 = newtokmaxskz1;
    }
  }

  set zapaspotokuskz1(String newzapaspotokuskz1) {
    if ((newzapaspotokuskz1?.length ?? 0) <= 255) {
      _zapaspotokuskz1 = newzapaspotokuskz1;
    }
  }

  set shunttokskz1(String newshunttokskz1) {
    if ((newshunttokskz1?.length ?? 0) <= 255) {
      _shunttokskz1 = newshunttokskz1;
    }
  }

  set shuntnaprskz1(String newshuntnaprskz1) {
    if ((newshuntnaprskz1?.length ?? 0) <= 255) {
      _shuntnaprskz1 = newshuntnaprskz1;
    }
  }

  set soprotskz1(String newsoprotskz1) {
    if ((newsoprotskz1?.length ?? 0) <= 255) {
      _soprotskz1 = newsoprotskz1;
    }
  }

  set schetelec1(String newschetelec1) {
    if ((newschetelec1?.length ?? 0) <= 255) {
      _schetelec1 = newschetelec1;
    }
  }

  set schetnarab1(String newschetnarab1) {
    if ((newschetnarab1?.length ?? 0) <= 255) {
      _schetnarab1 = newschetnarab1;
    }
  }

  set schetzasch1(String newschetzasch1) {
    if ((newschetzasch1?.length ?? 0) <= 255) {
      _schetzasch1 = newschetzasch1;
    }
  }

//скз2
  set date2(String newdate2) {
    if ((newdate2?.length ?? 0) <= 255) {
      _date2 = newdate2;
    }
  }

  set date1(String newdate1) {
    if ((newdate1?.length ?? 0) <= 255) {
      _date1 = newdate1;
    }
  }

  set object2(String newobject2) {
    if ((newobject2?.length ?? 0) <= 255) {
      _object2 = newobject2;
    }
  }

  set markaskz2(String newmarkaskz2) {
    if ((newmarkaskz2?.length ?? 0) <= 255) {
      _markaskz2 = newmarkaskz2;
    }
  }

  set sostojanieskz2(String newsostojanieskz2) {
    if ((newsostojanieskz2?.length ?? 0) <= 255) {
      _sostojanieskz2 = newsostojanieskz2;
    }
  }

  set fotoskz2(String newfotoskz2) {
    if ((newfotoskz2?.length ?? 0) <= 255) {
      _fotoskz2 = newfotoskz2;
    }
  }

  set zamechskz2(String newzamechskz2) {
    if ((newzamechskz2?.length ?? 0) <= 255) {
      _zamechskz2 = newzamechskz2;
    }
  }

  set potencialskz2(String newpotencialskz2) {
    if ((newpotencialskz2?.length ?? 0) <= 255) {
      _potencialskz2 = newpotencialskz2;
    }
  }

  set naprrabskz2(String newnaprrabskz2) {
    if ((newnaprrabskz2?.length ?? 0) <= 255) {
      _naprrabskz2 = newnaprrabskz2;
    }
  }

  set naprmaxskz2(String newnaprmaxskz2) {
    if ((newnaprmaxskz2?.length ?? 0) <= 255) {
      _naprmaxskz2 = newnaprmaxskz2;
    }
  }

  set tokrabskz2(String newtokrabskz2) {
    if ((newtokrabskz2?.length ?? 0) <= 255) {
      _tokrabskz2 = newtokrabskz2;
    }
  }

  set tokmaxskz2(String newtokmaxskz2) {
    if ((newtokmaxskz2?.length ?? 0) <= 255) {
      _tokmaxskz2 = newtokmaxskz2;
    }
  }

  set zapaspotokuskz2(String newzapaspotokuskz2) {
    if ((newzapaspotokuskz2?.length ?? 0) <= 255) {
      _zapaspotokuskz2 = newzapaspotokuskz2;
    }
  }

  set shunttokskz2(String newshunttokskz2) {
    if ((newshunttokskz2?.length ?? 0) <= 255) {
      _shunttokskz2 = newshunttokskz2;
    }
  }

  set shuntnaprskz2(String newshuntnaprskz2) {
    if ((newshuntnaprskz2?.length ?? 0) <= 255) {
      _shuntnaprskz2 = newshuntnaprskz2;
    }
  }

  set shunttokskz3(String newshunttokskz3) {
    if ((newshunttokskz3?.length ?? 0) <= 255) {
      _shunttokskz3 = newshunttokskz3;
    }
  }

  set shuntnaprskz3(String newshuntnaprskz3) {
    if ((newshuntnaprskz3?.length ?? 0) <= 255) {
      _shuntnaprskz3 = newshuntnaprskz3;
    }
  }

  set shunttokskz4(String newshunttokskz4) {
    if ((newshunttokskz4?.length ?? 0) <= 255) {
      _shunttokskz4 = newshunttokskz4;
    }
  }

  set shuntnaprskz4(String newshuntnaprskz4) {
    if ((newshuntnaprskz4?.length ?? 0) <= 255) {
      _shuntnaprskz4 = newshuntnaprskz4;
    }
  }

  set soprotskz2(String newsoprotskz2) {
    if ((newsoprotskz2?.length ?? 0) <= 255) {
      _soprotskz2 = newsoprotskz2;
    }
  }

  set schetelec2(String newschetelec2) {
    if ((newschetelec2?.length ?? 0) <= 255) {
      _schetelec2 = newschetelec2;
    }
  }

  set schetnarab2(String newschetnarab2) {
    if ((newschetnarab2?.length ?? 0) <= 255) {
      _schetnarab2 = newschetnarab2;
    }
  }

  set schetzasch2(String newschetzasch2) {
    if ((newschetzasch2?.length ?? 0) <= 255) {
      _schetzasch2 = newschetzasch2;
    }
  }

  set kipname1(String newkipname1) {
    if ((newkipname1?.length ?? 0) <= 255) {
      _kipname1 = newkipname1;
    }
  }

  set kipname2(String newkipname2) {
    if ((newkipname2?.length ?? 0) <= 255) {
      _kipname2 = newkipname2;
    }
  }

  set kipname3(String newkipname3) {
    if ((newkipname3?.length ?? 0) <= 255) {
      _kipname3 = newkipname3;
    }
  }

  set kipname4(String newkipname4) {
    if ((newkipname4?.length ?? 0) <= 255) {
      _kipname4 = newkipname4;
    }
  }

  set sostojaniekip1(String newsostojaniekip1) {
    if ((newsostojaniekip1?.length ?? 0) <= 255) {
      _sostojaniekip1 = newsostojaniekip1;
    }
  }

  set sostojaniekip2(String newsostojaniekip2) {
    if ((newsostojaniekip2?.length ?? 0) <= 255) {
      _sostojaniekip2 = newsostojaniekip2;
    }
  }

  set sostojaniekip3(String newsostojaniekip3) {
    if ((newsostojaniekip3?.length ?? 0) <= 255) {
      _sostojaniekip3 = newsostojaniekip3;
    }
  }

  set sostojaniekip4(String newsostojaniekip4) {
    if ((newsostojaniekip4?.length ?? 0) <= 255) {
      _sostojaniekip4 = newsostojaniekip4;
    }
  }

  set fotokip1(String newfotokip1) {
    if ((newfotokip1?.length ?? 0) <= 255) {
      _fotokip1 = newfotokip1;
    }
  }

  set fotokip2(String newfotokip2) {
    if ((newfotokip2?.length ?? 0) <= 255) {
      _fotokip2 = newfotokip2;
    }
  }

  set fotokip3(String newfotokip3) {
    if ((newfotokip3?.length ?? 0) <= 255) {
      _fotokip3 = newfotokip3;
    }
  }

  set fotokip4(String newfotokip4) {
    if ((newfotokip4?.length ?? 0) <= 255) {
      _fotokip4 = newfotokip4;
    }
  }

  set zamechkip1(String newzamechkip1) {
    if ((newzamechkip1?.length ?? 0) <= 255) {
      _zamechkip1 = newzamechkip1;
    }
  }

  set zamechkip2(String newzamechkip2) {
    if ((newzamechkip2?.length ?? 0) <= 255) {
      _zamechkip2 = newzamechkip2;
    }
  }

  set zamechkip3(String newzamechkip3) {
    if ((newzamechkip3?.length ?? 0) <= 255) {
      _zamechkip3 = newzamechkip3;
    }
  }

  set zamechkip4(String newzamechkip4) {
    if ((newzamechkip4?.length ?? 0) <= 255) {
      _zamechkip4 = newzamechkip4;
    }
  }

  set potenctdvklsum1(String newpotenctdvklsum1) {
    if ((newpotenctdvklsum1?.length ?? 0) <= 255) {
      _potenctdvklsum1 = newpotenctdvklsum1;
    }
  }

  set potenctdvklpol1(String newpotenctdvklpol1) {
    if ((newpotenctdvklpol1?.length ?? 0) <= 255) {
      _potenctdvklpol1 = newpotenctdvklpol1;
    }
  }

  set potenctdotklsum1(String newpotenctdotklsum1) {
    if ((newpotenctdotklsum1?.length ?? 0) <= 255) {
      _potenctdotklsum1 = newpotenctdotklsum1;
    }
  }

  set potenctdotklpol1(String newpotenctdotklpol1) {
    if ((newpotenctdotklpol1?.length ?? 0) <= 255) {
      _potenctdotklpol1 = newpotenctdotklpol1;
    }
  }

  set peremsost1(String newperemsost1) {
    if ((newperemsost1?.length ?? 0) <= 255) {
      _peremsost1 = newperemsost1;
    }
  }

  set datchkorr1(String newdatchkorr1) {
    if ((newdatchkorr1?.length ?? 0) <= 255) {
      _datchkorr1 = newdatchkorr1;
    }
  }

  set potenctdvklsum2(String newpotenctdvklsum2) {
    if ((newpotenctdvklsum2?.length ?? 0) <= 255) {
      _potenctdvklsum2 = newpotenctdvklsum2;
    }
  }

  set potenctdvklpol2(String newpotenctdvklpol2) {
    if ((newpotenctdvklpol2?.length ?? 0) <= 255) {
      _potenctdvklpol2 = newpotenctdvklpol2;
    }
  }

  set potenctdotklsum2(String newpotenctdotklsum2) {
    if ((newpotenctdotklsum2?.length ?? 0) <= 255) {
      _potenctdotklsum2 = newpotenctdotklsum2;
    }
  }

  set potenctdotklpol2(String newpotenctdotklpol2) {
    if ((newpotenctdotklpol2?.length ?? 0) <= 255) {
      _potenctdotklpol2 = newpotenctdotklpol2;
    }
  }

  set peremsost2(String newperemsost2) {
    if ((newperemsost2?.length ?? 0) <= 255) {
      _peremsost2 = newperemsost2;
    }
  }

  set datchkorr2(String newdatchkorr2) {
    if ((newdatchkorr2?.length ?? 0) <= 255) {
      _datchkorr2 = newdatchkorr2;
    }
  }

  set potenctdvklsum3(String newpotenctdvklsum3) {
    if ((newpotenctdvklsum3?.length ?? 0) <= 255) {
      _potenctdvklsum3 = newpotenctdvklsum3;
    }
  }

  set potenctdvklpol3(String newpotenctdvklpol3) {
    if ((newpotenctdvklpol3?.length ?? 0) <= 255) {
      _potenctdvklpol3 = newpotenctdvklpol3;
    }
  }

  set potenctdotklsum3(String newpotenctdotklsum3) {
    if ((newpotenctdotklsum3?.length ?? 0) <= 255) {
      _potenctdotklsum3 = newpotenctdotklsum3;
    }
  }

  set potenctdotklpol3(String newpotenctdotklpol3) {
    if ((newpotenctdotklpol3?.length ?? 0) <= 255) {
      _potenctdotklpol3 = newpotenctdotklpol3;
    }
  }

  set peremsost3(String newperemsost3) {
    if ((newperemsost3?.length ?? 0) <= 255) {
      _peremsost3 = newperemsost3;
    }
  }

  set datchkorr3(String newdatchkorr3) {
    if ((newdatchkorr3?.length ?? 0) <= 255) {
      _datchkorr3 = newdatchkorr3;
    }
  }

  set potenctdvklsum4(String newpotenctdvklsum4) {
    if ((newpotenctdvklsum4?.length ?? 0) <= 255) {
      _potenctdvklsum4 = newpotenctdvklsum4;
    }
  }

  set potenctdvklpol4(String newpotenctdvklpol4) {
    if ((newpotenctdvklpol4?.length ?? 0) <= 255) {
      _potenctdvklpol4 = newpotenctdvklpol4;
    }
  }

  set potenctdotklsum4(String newpotenctdotklsum4) {
    if ((newpotenctdotklsum4?.length ?? 0) <= 255) {
      _potenctdotklsum4 = newpotenctdotklsum4;
    }
  }

  set potenctdotklpol4(String newpotenctdotklpol4) {
    if ((newpotenctdotklpol4?.length ?? 0) <= 255) {
      _potenctdotklpol4 = newpotenctdotklpol4;
    }
  }

  set peremsost4(String newperemsost4) {
    if ((newperemsost4?.length ?? 0) <= 255) {
      _peremsost4 = newperemsost4;
    }
  }

  set datchkorr4(String newdatchkorr4) {
    if ((newdatchkorr4?.length ?? 0) <= 255) {
      _datchkorr4 = newdatchkorr4;
    }
  }

  set bdr1(String newbdr1) {
    if ((newbdr1?.length ?? 0) <= 255) {
      _bdr1 = newbdr1;
    }
  }

  set sostojaniebdr1(String newsostojaniebdr1) {
    if ((newsostojaniebdr1?.length ?? 0) <= 255) {
      _sostojaniebdr1 = newsostojaniebdr1;
    }
  }

  set fotobdr1(String newfotobdr1) {
    if ((newfotobdr1?.length ?? 0) <= 255) {
      _fotobdr1 = newfotobdr1;
    }
  }

  set zamechbdr1(String newzamechbdr1) {
    if ((newzamechbdr1?.length ?? 0) <= 255) {
      _zamechbdr1 = newzamechbdr1;
    }
  }

  set tok1bdr1(String newtok1bdr1) {
    if ((newtok1bdr1?.length ?? 0) <= 255) {
      _tok1bdr1 = newtok1bdr1;
    }
  }

  set tok2bdr1(String newtok2bdr1) {
    if ((newtok2bdr1?.length ?? 0) <= 255) {
      _tok2bdr1 = newtok2bdr1;
    }
  }

  set tok3bdr1(String newtok3bdr1) {
    if ((newtok3bdr1?.length ?? 0) <= 255) {
      _tok3bdr1 = newtok3bdr1;
    }
  }

  set tok4bdr1(String newtok4bdr1) {
    if ((newtok4bdr1?.length ?? 0) <= 255) {
      _tok4bdr1 = newtok4bdr1;
    }
  }

  set tok5bdr1(String newtok5bdr1) {
    if ((newtok5bdr1?.length ?? 0) <= 255) {
      _tok5bdr1 = newtok5bdr1;
    }
  }

  set soprot1bdr1(String newsoprot1bdr1) {
    if ((newsoprot1bdr1?.length ?? 0) <= 255) {
      _soprot1bdr1 = newsoprot1bdr1;
    }
  }

  set soprot2bdr1(String newsoprot2bdr1) {
    if ((newsoprot2bdr1?.length ?? 0) <= 255) {
      _soprot2bdr1 = newsoprot2bdr1;
    }
  }

  set soprot3bdr1(String newsoprot3bdr1) {
    if ((newsoprot3bdr1?.length ?? 0) <= 255) {
      _soprot3bdr1 = newsoprot3bdr1;
    }
  }

  set soprot4bdr1(String newsoprot4bdr1) {
    if ((newsoprot4bdr1?.length ?? 0) <= 255) {
      _soprot4bdr1 = newsoprot4bdr1;
    }
  }

  set soprot5bdr1(String newsoprot5bdr1) {
    if ((newsoprot5bdr1?.length ?? 0) <= 255) {
      _soprot5bdr1 = newsoprot5bdr1;
    }
  }

  set bdr2(String newbdr2) {
    if ((newbdr2?.length ?? 0) <= 255) {
      _bdr2 = newbdr2;
    }
  }

  set sostojaniebdr2(String newsostojaniebdr2) {
    if ((newsostojaniebdr2?.length ?? 0) <= 255) {
      _sostojaniebdr2 = newsostojaniebdr2;
    }
  }

  set fotobdr2(String newfotobdr2) {
    if ((newfotobdr2?.length ?? 0) <= 255) {
      _fotobdr2 = newfotobdr2;
    }
  }

  set zamechbdr2(String newzamechbdr2) {
    if ((newzamechbdr2?.length ?? 0) <= 255) {
      _zamechbdr2 = newzamechbdr2;
    }
  }

  set tok1bdr2(String newtok1bdr2) {
    if ((newtok1bdr2?.length ?? 0) <= 255) {
      _tok1bdr2 = newtok1bdr2;
    }
  }

  set tok2bdr2(String newtok2bdr2) {
    if ((newtok2bdr2?.length ?? 0) <= 255) {
      _tok2bdr2 = newtok2bdr2;
    }
  }

  set tok3bdr2(String newtok3bdr2) {
    if ((newtok3bdr2?.length ?? 0) <= 255) {
      _tok3bdr2 = newtok3bdr2;
    }
  }

  set tok4bdr2(String newtok4bdr2) {
    if ((newtok4bdr2?.length ?? 0) <= 255) {
      _tok4bdr2 = newtok4bdr2;
    }
  }

  set tok5bdr2(String newtok5bdr2) {
    if ((newtok5bdr2?.length ?? 0) <= 255) {
      _tok5bdr2 = newtok5bdr2;
    }
  }

  set soprot1bdr2(String newsoprot1bdr2) {
    if ((newsoprot1bdr2?.length ?? 0) <= 255) {
      _soprot1bdr2 = newsoprot1bdr2;
    }
  }

  set soprot2bdr2(String newsoprot2bdr2) {
    if ((newsoprot2bdr2?.length ?? 0) <= 255) {
      _soprot2bdr2 = newsoprot2bdr2;
    }
  }

  set soprot3bdr2(String newsoprot3bdr2) {
    if ((newsoprot3bdr2?.length ?? 0) <= 255) {
      _soprot3bdr2 = newsoprot3bdr2;
    }
  }

  set soprot4bdr2(String newsoprot4bdr2) {
    if ((newsoprot4bdr2?.length ?? 0) <= 255) {
      _soprot4bdr2 = newsoprot4bdr2;
    }
  }

  set soprot5bdr2(String newsoprot5bdr2) {
    if ((newsoprot5bdr2?.length ?? 0) <= 255) {
      _soprot5bdr2 = newsoprot5bdr2;
    }
  }

  set markaaz(String newmarkaaz) {
    if ((newmarkaaz?.length ?? 0) <= 255) {
      _markaaz = newmarkaaz;
    }
  }

  set sostojanieaz(String newsostojanieaz) {
    if ((newsostojanieaz?.length ?? 0) <= 255) {
      _sostojanieaz = newsostojanieaz;
    }
  }

  set fotoaz(String newfotoaz) {
    if ((newfotoaz?.length ?? 0) <= 255) {
      _fotoaz = newfotoaz;
    }
  }

  set zamechaz(String newzamechaz) {
    if ((newzamechaz?.length ?? 0) <= 255) {
      _zamechaz = newzamechaz;
    }
  }

  set tok1az(String newtok1az) {
    if ((newtok1az?.length ?? 0) <= 255) {
      _tok1az = newtok1az;
    }
  }

  set tok2az(String newtok2az) {
    if ((newtok2az?.length ?? 0) <= 255) {
      _tok2az = newtok2az;
    }
  }

  set tok3az(String newtok3az) {
    if ((newtok3az?.length ?? 0) <= 255) {
      _tok3az = newtok3az;
    }
  }

  set tok4az(String newtok4az) {
    if ((newtok4az?.length ?? 0) <= 255) {
      _tok4az = newtok4az;
    }
  }

  set tok5az(String newtok5az) {
    if ((newtok5az?.length ?? 0) <= 255) {
      _tok5az = newtok5az;
    }
  }

  set soprrast1az(String newsoprrast1az) {
    if ((newsoprrast1az?.length ?? 0) <= 255) {
      _soprrast1az = newsoprrast1az;
    }
  }

  set soprrast2az(String newsoprrast2az) {
    if ((newsoprrast2az?.length ?? 0) <= 255) {
      _soprrast2az = newsoprrast2az;
    }
  }

  set soprrast3az(String newsoprrast3az) {
    if ((newsoprrast3az?.length ?? 0) <= 255) {
      _soprrast3az = newsoprrast3az;
    }
  }

  set soprrast4az(String newsoprrast4az) {
    if ((newsoprrast4az?.length ?? 0) <= 255) {
      _soprrast4az = newsoprrast4az;
    }
  }

  set soprrast5az(String newsoprrast5az) {
    if ((newsoprrast5az?.length ?? 0) <= 255) {
      _soprrast5az = newsoprrast5az;
    }
  }

  set sostojaniezz(String newsostojaniezz) {
    if ((newsostojaniezz?.length ?? 0) <= 255) {
      _sostojaniezz = newsostojaniezz;
    }
  }

  set soprrastzz(String newsoprrastzz) {
    if ((newsoprrastzz?.length ?? 0) <= 255) {
      _soprrastzz = newsoprrastzz;
    }
  }

  set fotozz(String newfotozz) {
    if ((newfotozz?.length ?? 0) <= 255) {
      _fotozz = newfotozz;
    }
  }

  set zamechzz(String newzamechzz) {
    if ((newzamechzz?.length ?? 0) <= 255) {
      _zamechzz = newzamechzz;
    }
  }

  set naznachvl1(String newnaznachvl1) {
    if ((newnaznachvl1?.length ?? 0) <= 255) {
      _naznachvl1 = newnaznachvl1;
    }
  }

  set sostojanievl1(String newsostojanievl1) {
    if ((newsostojanievl1?.length ?? 0) <= 255) {
      _sostojanievl1 = newsostojanievl1;
    }
  }

  set fotovl1(String newfotovl1) {
    if ((newfotovl1?.length ?? 0) <= 255) {
      _fotovl1 = newfotovl1;
    }
  }

  set zamechvl1(String newzamechvl1) {
    if ((newzamechvl1?.length ?? 0) <= 255) {
      _zamechvl1 = newzamechvl1;
    }
  }

  set tipoporvl1(String newtipoporvl1) {
    if ((newtipoporvl1?.length ?? 0) <= 255) {
      _tipoporvl1 = newtipoporvl1;
    }
  }

  set kolvooporvl1(String newkolvooporvl1) {
    if ((newkolvooporvl1?.length ?? 0) <= 255) {
      _kolvooporvl1 = newkolvooporvl1;
    }
  }

  set dlinavl1(String newdlinavl1) {
    if ((newdlinavl1?.length ?? 0) <= 255) {
      _dlinavl1 = newdlinavl1;
    }
  }

  set provodvl1(String newprovodvl1) {
    if ((newprovodvl1?.length ?? 0) <= 255) {
      _provodvl1 = newprovodvl1;
    }
  }

  set kolvoizolvl1(String newkolvoizolvl1) {
    if ((newkolvoizolvl1?.length ?? 0) <= 255) {
      _kolvoizolvl1 = newkolvoizolvl1;
    }
  }

  set markaizolvl1(String newmarkaizolvl1) {
    if ((newmarkaizolvl1?.length ?? 0) <= 255) {
      _markaizolvl1 = newmarkaizolvl1;
    }
  }

  set naznachvl2(String newnaznachvl2) {
    if ((newnaznachvl2?.length ?? 0) <= 255) {
      _naznachvl2 = newnaznachvl2;
    }
  }

  set sostojanievl2(String newsostojanievl2) {
    if ((newsostojanievl2?.length ?? 0) <= 255) {
      _sostojanievl2 = newsostojanievl2;
    }
  }

  set fotovl2(String newfotovl2) {
    if ((newfotovl2?.length ?? 0) <= 255) {
      _fotovl2 = newfotovl2;
    }
  }

  set zamechvl2(String newzamechvl2) {
    if ((newzamechvl2?.length ?? 0) <= 255) {
      _zamechvl2 = newzamechvl2;
    }
  }

  set tipoporvl2(String newtipoporvl2) {
    if ((newtipoporvl2?.length ?? 0) <= 255) {
      _tipoporvl2 = newtipoporvl2;
    }
  }

  set kolvooporvl2(String newkolvooporvl2) {
    if ((newkolvooporvl2?.length ?? 0) <= 255) {
      _kolvooporvl2 = newkolvooporvl2;
    }
  }

  set dlinavl2(String newdlinavl2) {
    if ((newdlinavl2?.length ?? 0) <= 255) {
      _dlinavl2 = newdlinavl2;
    }
  }

  set provodvl2(String newprovodvl2) {
    if ((newprovodvl2?.length ?? 0) <= 255) {
      _provodvl2 = newprovodvl2;
    }
  }

  set kolvoizolvl2(String newkolvoizolvl2) {
    if ((newkolvoizolvl2?.length ?? 0) <= 255) {
      _kolvoizolvl2 = newkolvoizolvl2;
    }
  }

  set markaizolvl2(String newmarkaizolvl2) {
    if ((newmarkaizolvl2?.length ?? 0) <= 255) {
      _markaizolvl2 = newmarkaizolvl2;
    }
  }

  set naznachvl3(String newnaznachvl3) {
    if ((newnaznachvl3?.length ?? 0) <= 255) {
      _naznachvl3 = newnaznachvl3;
    }
  }

  set sostojanievl3(String newsostojanievl3) {
    if ((newsostojanievl3?.length ?? 0) <= 255) {
      _sostojanievl3 = newsostojanievl3;
    }
  }

  set fotovl3(String newfotovl3) {
    if ((newfotovl3?.length ?? 0) <= 255) {
      _fotovl3 = newfotovl3;
    }
  }

  set zamechvl3(String newzamechvl3) {
    if ((newzamechvl3?.length ?? 0) <= 255) {
      _zamechvl3 = newzamechvl3;
    }
  }

  set tipoporvl3(String newtipoporvl3) {
    if ((newtipoporvl3?.length ?? 0) <= 255) {
      _tipoporvl3 = newtipoporvl3;
    }
  }

  set kolvooporvl3(String newkolvooporvl3) {
    if ((newkolvooporvl3?.length ?? 0) <= 255) {
      _kolvooporvl3 = newkolvooporvl3;
    }
  }

  set dlinavl3(String newdlinavl3) {
    if ((newdlinavl3?.length ?? 0) <= 255) {
      _dlinavl3 = newdlinavl3;
    }
  }

  set provodvl3(String newprovodvl3) {
    if ((newprovodvl3?.length ?? 0) <= 255) {
      _provodvl3 = newprovodvl3;
    }
  }

  set kolvoizolvl3(String newkolvoizolvl3) {
    if ((newkolvoizolvl3?.length ?? 0) <= 255) {
      _kolvoizolvl3 = newkolvoizolvl3;
    }
  }

  set markaizolvl3(String newmarkaizolvl3) {
    if ((newmarkaizolvl3?.length ?? 0) <= 255) {
      _markaizolvl3 = newmarkaizolvl3;
    }
  }

  set naznachkl1(String newnaznachkl1) {
    if ((newnaznachkl1?.length ?? 0) <= 255) {
      _naznachkl1 = newnaznachkl1;
    }
  }

  set sostojaniekl1(String newsostojaniekl1) {
    if ((newsostojaniekl1?.length ?? 0) <= 255) {
      _sostojaniekl1 = newsostojaniekl1;
    }
  }

  set fotokl1(String newfotokl1) {
    if ((newfotokl1?.length ?? 0) <= 255) {
      _fotokl1 = newfotokl1;
    }
  }

  set zamechkl1(String newzamechkl1) {
    if ((newzamechkl1?.length ?? 0) <= 255) {
      _zamechkl1 = newzamechkl1;
    }
  }

  set markakabelkl1(String newmarkakabelkl1) {
    if ((newmarkakabelkl1?.length ?? 0) <= 255) {
      _markakabelkl1 = newmarkakabelkl1;
    }
  }

  set dlinakl1(String newdlinakl1) {
    if ((newdlinakl1?.length ?? 0) <= 255) {
      _dlinakl1 = newdlinakl1;
    }
  }

  set soprotkl1(String newsoprotkl1) {
    if ((newsoprotkl1?.length ?? 0) <= 255) {
      _soprotkl1 = newsoprotkl1;
    }
  }

  set naznachkl2(String newnaznachkl2) {
    if ((newnaznachkl2?.length ?? 0) <= 255) {
      _naznachkl2 = newnaznachkl2;
    }
  }

  set sostojaniekl2(String newsostojaniekl2) {
    if ((newsostojaniekl2?.length ?? 0) <= 255) {
      _sostojaniekl2 = newsostojaniekl2;
    }
  }

  set fotokl2(String newfotokl2) {
    if ((newfotokl2?.length ?? 0) <= 255) {
      _fotokl2 = newfotokl2;
    }
  }

  set zamechkl2(String newzamechkl2) {
    if ((newzamechkl2?.length ?? 0) <= 255) {
      _zamechkl2 = newzamechkl2;
    }
  }

  set markakabelkl2(String newmarkakabelkl2) {
    if ((newmarkakabelkl2?.length ?? 0) <= 255) {
      _markakabelkl2 = newmarkakabelkl2;
    }
  }

  set dlinakl2(String newdlinakl2) {
    if ((newdlinakl2?.length ?? 0) <= 255) {
      _dlinakl2 = newdlinakl2;
    }
  }

  set soprotkl2(String newsoprotkl2) {
    if ((newsoprotkl2?.length ?? 0) <= 255) {
      _soprotkl2 = newsoprotkl2;
    }
  }

  set naznachkl3(String newnaznachkl3) {
    if ((newnaznachkl3?.length ?? 0) <= 255) {
      _naznachkl3 = newnaznachkl3;
    }
  }

  set sostojaniekl3(String newsostojaniekl3) {
    if ((newsostojaniekl3?.length ?? 0) <= 255) {
      _sostojaniekl3 = newsostojaniekl3;
    }
  }

  set fotokl3(String newfotokl3) {
    if ((newfotokl3?.length ?? 0) <= 255) {
      _fotokl3 = newfotokl3;
    }
  }

  set zamechkl3(String newzamechkl3) {
    if ((newzamechkl3?.length ?? 0) <= 255) {
      _zamechkl3 = newzamechkl3;
    }
  }

  set markakabelkl3(String newmarkakabelkl3) {
    if ((newmarkakabelkl3?.length ?? 0) <= 255) {
      _markakabelkl3 = newmarkakabelkl3;
    }
  }

  set dlinakl3(String newdlinakl3) {
    if ((newdlinakl3?.length ?? 0) <= 255) {
      _dlinakl3 = newdlinakl3;
    }
  }

  set soprotkl3(String newsoprotkl3) {
    if ((newsoprotkl3?.length ?? 0) <= 255) {
      _soprotkl3 = newsoprotkl3;
    }
  }

  set tipktp(String newtipktp) {
    if ((newtipktp?.length ?? 0) <= 255) {
      _tipktp = newtipktp;
    }
  }

  set sostojaniektp(String newsostojaniektp) {
    if ((newsostojaniektp?.length ?? 0) <= 255) {
      _sostojaniektp = newsostojaniektp;
    }
  }

  set fotoktp(String newfotoktp) {
    if ((newfotoktp?.length ?? 0) <= 255) {
      _fotoktp = newfotoktp;
    }
  }

  set markatrr(String newmarkatrr) {
    if ((newmarkatrr?.length ?? 0) <= 255) {
      _markatrr = newmarkatrr;
    }
  }

  set tipshr(String newtipshr) {
    if ((newtipshr?.length ?? 0) <= 255) {
      _tipshr = newtipshr;
    }
  }

  set sostojanieshr(String newsostojanieshr) {
    if ((newsostojanieshr?.length ?? 0) <= 255) {
      _sostojanieshr = newsostojanieshr;
    }
  }

  set sostojanieograzhd(String newsostojanieograzhd) {
    if ((newsostojanieograzhd?.length ?? 0) <= 255) {
      _sostojanieograzhd = newsostojanieograzhd;
    }
  }

  set sostojanieraz(String newsostojanieraz) {
    if ((newsostojanieraz?.length ?? 0) <= 255) {
      _sostojanieraz = newsostojanieraz;
    }
  }

  set tipraz(String newtipraz) {
    if ((newtipraz?.length ?? 0) <= 255) {
      _tipraz = newtipraz;
    }
  }

  set sostojaniezz2(String newsostojaniezz2) {
    if ((newsostojaniezz2?.length ?? 0) <= 255) {
      _sostojaniezz2 = newsostojaniezz2;
    }
  }

  set soprrastzz2(String newsoprrastzz2) {
    if ((newsoprrastzz2?.length ?? 0) <= 255) {
      _soprrastzz2 = newsoprrastzz2;
    }
  }

  set potrmoschnost(String newpotrmoschnost) {
    if ((newpotrmoschnost?.length ?? 0) <= 255) {
      _potrmoschnost = newpotrmoschnost;
    }
  }

  set datato1(String newdatato1) {
    if ((newdatato1?.length ?? 0) <= 255) {
      _datato1 = newdatato1;
    }
  }

  set elekschetchik1(String newelekschetchik1) {
    if ((newelekschetchik1?.length ?? 0) <= 255) {
      _elekschetchik1 = newelekschetchik1;
    }
  }

  set datato2(String newdatato2) {
    if ((newdatato2?.length ?? 0) <= 255) {
      _datato2 = newdatato2;
    }
  }

  set elekschetchik2(String newelekschetchik2) {
    if ((newelekschetchik2?.length ?? 0) <= 255) {
      _elekschetchik2 = newelekschetchik2;
    }
  }

  set prostoi1(String newprostoi1) {
    if ((newprostoi1?.length ?? 0) <= 255) {
      _prostoi1 = newprostoi1;
    }
  }

  set narabschetchik1(String newnarabschetchik1) {
    if ((newnarabschetchik1?.length ?? 0) <= 255) {
      _narabschetchik1 = newnarabschetchik1;
    }
  }

  set narabschetchik2(String newnarabschetchik2) {
    if ((newnarabschetchik2?.length ?? 0) <= 255) {
      _narabschetchik2 = newnarabschetchik2;
    }
  }

  set prostoi2(String newprostoi2) {
    if ((newprostoi2?.length ?? 0) <= 255) {
      _prostoi2 = newprostoi2;
    }
  }

  set todoDate(newtodoDate) {
    _todoDate = newtodoDate;
  }

  set rogruntskz(String newrogruntskz) {
    if ((newrogruntskz?.length ?? 0) <= 255) {
      _rogruntskz = newrogruntskz;
    }
  }

  set rogruntktp(String newrogruntktp) {
    if ((newrogruntktp?.length ?? 0) <= 255) {
      _rogruntktp = newrogruntktp;
    }
  }

  set rogruntraz(String newrogruntraz) {
    if ((newrogruntraz?.length ?? 0) <= 255) {
      _rogruntraz = newrogruntraz;
    }
  }

  set rogruntaz(String newrogruntaz) {
    if ((newrogruntaz?.length ?? 0) <= 255) {
      _rogruntaz = newrogruntaz;
    }
  }

  set soprotzzktp(String newsoprotzzktp) {
    if ((newsoprotzzktp?.length ?? 0) <= 255) {
      _soprotzzktp = newsoprotzzktp;
    }
  }

  set soprotzzraz(String newsoprotzzraz) {
    if ((newsoprotzzraz?.length ?? 0) <= 255) {
      _soprotzzraz = newsoprotzzraz;
    }
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['title'] = _title;
    map['date1'] = _date1;
    map['date'] = _todoDate;

    map['object1'] = _object1;
    map['markaskz1'] = _markaskz1;
    map['sostojanieskz1'] = _sostojanieskz1;
    map['fotoskz1'] = _fotoskz1;
    map['zamechskz1'] = _zamechskz1;
    map['potencialskz1'] = _potencialskz1;
    map['naprrabskz1'] = _naprrabskz1;
    map['naprmaxskz1'] = _naprmaxskz1;
    map['tokrabskz1'] = _tokrabskz1;
    map['tokmaxskz1'] = _tokmaxskz1;
    map['zapaspotokuskz1'] = _zapaspotokuskz1;
    map['shunttokskz1'] = _shunttokskz1;
    map['shuntnaprskz1'] = _shuntnaprskz1;
    map['soprotskz1'] = _soprotskz1;
    map['schetelec1'] = _schetelec1;
    map['schetnarab1'] = _schetnarab1;
    map['schetzasch1'] = _schetzasch1;
//скз2
    map['date2'] = _date2;
    map['object2'] = _object2;
    map['markaskz2'] = _markaskz2;
    map['sostojanieskz2'] = _sostojanieskz2;
    map['fotoskz2'] = _fotoskz2;
    map['zamechskz2'] = _zamechskz2;
    map['potencialskz2'] = _potencialskz2;
    map['naprrabskz2'] = _naprrabskz2;
    map['naprmaxskz2'] = _naprmaxskz2;
    map['tokrabskz2'] = _tokrabskz2;
    map['tokmaxskz2'] = _tokmaxskz2;
    map['zapaspotokuskz2'] = _zapaspotokuskz2;
    map['shunttokskz2'] = _shunttokskz2;
    map['shuntnaprskz2'] = _shuntnaprskz2;
    map['shunttokskz3'] = _shunttokskz3;
    map['shuntnaprskz3'] = _shuntnaprskz3;
    map['shunttokskz4'] = _shunttokskz4;
    map['shuntnaprskz4'] = _shuntnaprskz4;
    map['soprotskz2'] = _soprotskz2;
    map['schetelec2'] = _schetelec2;
    map['schetnarab2'] = _schetnarab2;
    map['schetzasch2'] = _schetzasch2;

    map['kipname1'] = _kipname1;
    map['kipname2'] = _kipname2;
    map['kipname3'] = _kipname3;
    map['kipname4'] = _kipname4;
    map['sostojaniekip1'] = _sostojaniekip1;
    map['sostojaniekip2'] = _sostojaniekip2;
    map['sostojaniekip3'] = _sostojaniekip3;
    map['sostojaniekip4'] = _sostojaniekip4;
    map['fotokip1'] = _fotokip1;
    map['fotokip2'] = _fotokip2;
    map['fotokip3'] = _fotokip3;
    map['fotokip4'] = _fotokip4;
    map['zamechkip1'] = _zamechkip1;
    map['zamechkip2'] = _zamechkip2;
    map['zamechkip3'] = _zamechkip3;
    map['zamechkip4'] = _zamechkip4;
    map['potenctdvklsum1'] = _potenctdvklsum1;
    map['potenctdvklpol1'] = _potenctdvklpol1;
    map['potenctdotklsum1'] = _potenctdotklsum1;
    map['potenctdotklpol1'] = _potenctdotklpol1;
    map['peremsost1'] = _peremsost1;
    map['datchkorr1'] = _datchkorr1;
    map['potenctdvklsum2'] = _potenctdvklsum2;
    map['potenctdvklpol2'] = _potenctdvklpol2;
    map['potenctdotklsum2'] = _potenctdotklsum2;
    map['potenctdotklpol2'] = _potenctdotklpol2;
    map['peremsost2'] = _peremsost2;
    map['datchkorr2'] = _datchkorr2;
    map['potenctdvklsum3'] = _potenctdvklsum3;
    map['potenctdvklpol3'] = _potenctdvklpol3;
    map['potenctdotklsum3'] = _potenctdotklsum3;
    map['potenctdotklpol3'] = _potenctdotklpol3;
    map['peremsost3'] = _peremsost3;
    map['datchkorr3'] = _datchkorr3;
    map['potenctdvklsum4'] = _potenctdvklsum4;
    map['potenctdvklpol4'] = _potenctdvklpol4;
    map['potenctdotklsum4'] = _potenctdotklsum4;
    map['potenctdotklpol4'] = _potenctdotklpol4;
    map['peremsost4'] = _peremsost4;
    map['datchkorr4'] = _datchkorr4;

    map['bdr1'] = _bdr1;
    map['sostojaniebdr1'] = _sostojaniebdr1;
    map['fotobdr1'] = _fotobdr1;
    map['zamechbdr1'] = _zamechbdr1;
    map['tok1bdr1'] = _tok1bdr1;
    map['tok2bdr1'] = _tok2bdr1;
    map['tok3bdr1'] = _tok3bdr1;
    map['tok4bdr1'] = _tok4bdr1;
    map['tok5bdr1'] = _tok5bdr1;
    map['soprot1bdr1'] = _soprot1bdr1;
    map['soprot2bdr1'] = _soprot2bdr1;
    map['soprot3bdr1'] = _soprot3bdr1;
    map['soprot4bdr1'] = _soprot4bdr1;
    map['soprot5bdr1'] = _soprot5bdr1;
    map['bdr2'] = _bdr2;
    map['sostojaniebdr2'] = _sostojaniebdr2;
    map['fotobdr2'] = _fotobdr2;
    map['zamechbdr2'] = _zamechbdr2;
    map['tok1bdr2'] = _tok1bdr2;
    map['tok2bdr2'] = _tok2bdr2;
    map['tok3bdr2'] = _tok3bdr2;
    map['tok4bdr2'] = _tok4bdr2;
    map['tok5bdr2'] = _tok5bdr2;
    map['soprot1bdr2'] = _soprot1bdr2;
    map['soprot2bdr2'] = _soprot2bdr2;
    map['soprot3bdr2'] = _soprot3bdr2;
    map['soprot4bdr2'] = _soprot4bdr2;
    map['soprot5bdr2'] = _soprot5bdr2;

    map['markaaz'] = _markaaz;
    map['sostojanieaz'] = _sostojanieaz;
    map['fotoaz'] = _fotoaz;
    map['zamechaz'] = _zamechaz;
    map['tok1az'] = _tok1az;
    map['tok2az'] = _tok2az;
    map['tok3az'] = _tok3az;
    map['tok4az'] = _tok4az;
    map['tok5az'] = _tok5az;
    map['soprrast1az'] = _soprrast1az;
    map['soprrast2az'] = _soprrast2az;
    map['soprrast3az'] = _soprrast3az;
    map['soprrast4az'] = _soprrast4az;
    map['soprrast5az'] = _soprrast5az;

    map['sostojaniezz'] = _sostojaniezz;
    map['soprrastzz'] = _soprrastzz;
    map['fotozz'] = _fotozz;
    map['zamechzz'] = _zamechzz;

    map['naznachvl1'] = _naznachvl1;
    map['sostojanievl1'] = _sostojanievl1;
    map['fotovl1'] = _fotovl1;
    map['zamechvl1'] = _zamechvl1;
    map['tipoporvl1'] = _tipoporvl1;
    map['kolvooporvl1'] = _kolvooporvl1;
    map['dlinavl1'] = _dlinavl1;
    map['provodvl1'] = _provodvl1;
    map['kolvoizolvl1'] = _kolvoizolvl1;
    map['markaizolvl1'] = _markaizolvl1;
    map['naznachvl2'] = _naznachvl2;
    map['sostojanievl2'] = _sostojanievl2;
    map['fotovl2'] = _fotovl2;
    map['zamechvl2'] = _zamechvl2;
    map['tipoporvl2'] = _tipoporvl2;
    map['kolvooporvl2'] = _kolvooporvl2;
    map['dlinavl2'] = _dlinavl2;
    map['provodvl2'] = _provodvl2;
    map['kolvoizolvl2'] = _kolvoizolvl2;
    map['markaizolvl2'] = _markaizolvl2;
    map['naznachvl3'] = _naznachvl3;
    map['sostojanievl3'] = _sostojanievl3;
    map['fotovl3'] = _fotovl3;
    map['zamechvl3'] = _zamechvl3;
    map['tipoporvl3'] = _tipoporvl3;
    map['kolvooporvl3'] = _kolvooporvl3;
    map['dlinavl3'] = _dlinavl3;
    map['provodvl3'] = _provodvl3;
    map['kolvoizolvl3'] = _kolvoizolvl3;
    map['markaizolvl3'] = _markaizolvl3;

    map['naznachkl1'] = _naznachkl1;
    map['sostojaniekl1'] = _sostojaniekl1;
    map['fotokl1'] = _fotokl1;
    map['zamechkl1'] = _zamechkl1;
    map['markakabelkl1'] = _markakabelkl1;
    map['dlinakl1'] = _dlinakl1;
    map['soprotkl1'] = _soprotkl1;
    map['naznachkl2'] = _naznachkl2;
    map['sostojaniekl2'] = _sostojaniekl2;
    map['fotokl2'] = _fotokl2;
    map['zamechkl2'] = _zamechkl2;
    map['markakabelkl2'] = _markakabelkl2;
    map['dlinakl2'] = _dlinakl2;
    map['soprotkl2'] = _soprotkl2;
    map['naznachkl3'] = _naznachkl3;
    map['sostojaniekl3'] = _sostojaniekl3;
    map['fotokl3'] = _fotokl3;
    map['zamechkl3'] = _zamechkl3;
    map['markakabelkl3'] = _markakabelkl3;
    map['dlinakl3'] = _dlinakl3;
    map['soprotkl3'] = _soprotkl3;

    map['tipktp'] = _tipktp;
    map['sostojaniektp'] = _sostojaniektp;
    map['fotoktp'] = _fotoktp;
    map['markatrr'] = _markatrr;

    map['tipshr'] = _tipshr;
    map['sostojanieshr'] = _sostojanieshr;
    map['sostojanieograzhd'] = _sostojanieograzhd;
    map['sostojaniezz2'] = _sostojaniezz2;
    map['soprrastzz2'] = _soprrastzz2;
    map['sostojanieraz'] = _sostojanieraz;
    map['tipraz'] = _tipraz;

    map['potrmoschnost'] = _potrmoschnost;
    map['datato1'] = _datato1;
    map['elekschetchik1'] = _elekschetchik1;
    map['datato2'] = _datato2;
    map['elekschetchik2'] = _elekschetchik2;
    map['prostoi1'] = _prostoi1;
    map['narabschetchik1'] = _narabschetchik1;
    map['narabschetchik2'] = _narabschetchik2;
    map['prostoi2'] = _prostoi2;

    map['rogruntskz'] = _rogruntskz;
    map['rogruntktp'] = _rogruntktp;
    map['rogruntraz'] = _rogruntraz;
    map['rogruntaz'] = _rogruntaz;
    map['soprotzzktp'] = _soprotzzktp;
    map['soprotzzraz'] = _soprotzzraz;

    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }

  Ukz.fromObject(dynamic o) {
    _id = o['id'];
    _title = o['title'];
    _date1 = o['date1'];
    _todoDate = o['date'];

    _object1 = o['object1'];
    _markaskz1 = o['markaskz1'];
    _sostojanieskz1 = o['sostojanieskz1'];
    _fotoskz1 = o['fotoskz1'];
    _zamechskz1 = o['zamechskz1'];
    _potencialskz1 = o['potencialskz1'];
    _naprrabskz1 = o['naprrabskz1'];
    _naprmaxskz1 = o['naprmaxskz1'];
    _tokrabskz1 = o['tokrabskz1'];
    _tokmaxskz1 = o['tokmaxskz1'];
    _zapaspotokuskz1 = o['zapaspotokuskz1'];
    _shunttokskz1 = o['shunttokskz1'];
    _shuntnaprskz1 = o['shuntnaprskz1'];
    _soprotskz1 = o['soprotskz1'];
    _schetelec1 = o['schetelec1'];
    _schetnarab1 = o['schetnarab1'];
    _schetzasch1 = o['schetzasch1'];

    _date2 = o['date2'];
    _date1 = o['date1'];
    _object2 = o['object2'];
    _markaskz2 = o['markaskz2'];
    _sostojanieskz2 = o['sostojanieskz2'];
    _fotoskz2 = o['fotoskz2'];
    _zamechskz2 = o['zamechskz2'];
    _potencialskz2 = o['potencialskz2'];
    _naprrabskz2 = o['naprrabskz2'];
    _naprmaxskz2 = o['naprmaxskz2'];
    _tokrabskz2 = o['tokrabskz2'];
    _tokmaxskz2 = o['tokmaxskz2'];
    _zapaspotokuskz2 = o['zapaspotokuskz2'];
    _shunttokskz2 = o['shunttokskz2'];
    _shuntnaprskz2 = o['shuntnaprskz2'];
    _shunttokskz3 = o['shunttokskz3'];
    _shuntnaprskz3 = o['shuntnaprskz3'];
    _shunttokskz4 = o['shunttokskz4'];
    _shuntnaprskz4 = o['shuntnaprskz4'];
    _soprotskz2 = o['soprotskz2'];
    _schetelec2 = o['schetelec2'];
    _schetnarab2 = o['schetnarab2'];
    _schetzasch2 = o['schetzasch2'];

    _kipname1 = o['kipname1'];
    _kipname2 = o['kipname2'];
    _kipname3 = o['kipname3'];
    _kipname4 = o['kipname4'];
    _sostojaniekip1 = o['sostojaniekip1'];
    _sostojaniekip2 = o['sostojaniekip2'];
    _sostojaniekip3 = o['sostojaniekip3'];
    _sostojaniekip4 = o['sostojaniekip4'];
    _fotokip1 = o['fotokip1'];
    _fotokip2 = o['fotokip2'];
    _fotokip3 = o['fotokip3'];
    _fotokip4 = o['fotokip4'];
    _zamechkip1 = o['zamechkip1'];
    _zamechkip2 = o['zamechkip2'];
    _zamechkip3 = o['zamechkip3'];
    _zamechkip4 = o['zamechkip4'];
    _potenctdvklsum1 = o['potenctdvklsum1'];
    _potenctdvklpol1 = o['potenctdvklpol1'];
    _potenctdotklsum1 = o['potenctdotklsum1'];
    _potenctdotklpol1 = o['potenctdotklpol1'];
    _peremsost1 = o['peremsost1'];
    _datchkorr1 = o['datchkorr1'];
    _potenctdvklsum2 = o['potenctdvklsum2'];
    _potenctdvklpol2 = o['potenctdvklpol2'];
    _potenctdotklsum2 = o['potenctdotklsum2'];
    _potenctdotklpol2 = o['potenctdotklpol2'];
    _peremsost2 = o['peremsost2'];
    _datchkorr2 = o['datchkorr2'];
    _potenctdvklsum3 = o['potenctdvklsum3'];
    _potenctdvklpol3 = o['potenctdvklpol3'];
    _potenctdotklsum3 = o['potenctdotklsum3'];
    _potenctdotklpol3 = o['potenctdotklpol3'];
    _peremsost3 = o['peremsost3'];
    _datchkorr3 = o['datchkorr3'];
    _potenctdvklsum4 = o['potenctdvklsum4'];
    _potenctdvklpol4 = o['potenctdvklpol4'];
    _potenctdotklsum4 = o['potenctdotklsum4'];
    _potenctdotklpol4 = o['potenctdotklpol4'];
    _peremsost4 = o['peremsost4'];
    _datchkorr4 = o['datchkorr4'];

    _bdr1 = o['bdr1'];
    _sostojaniebdr1 = o['sostojaniebdr1'];
    _fotobdr1 = o['fotobdr1'];
    _zamechbdr1 = o['zamechbdr1'];
    _tok1bdr1 = o['tok1bdr1'];
    _tok2bdr1 = o['tok2bdr1'];
    _tok3bdr1 = o['tok3bdr1'];
    _tok4bdr1 = o['tok4bdr1'];
    _tok5bdr1 = o['tok5bdr1'];
    _soprot1bdr1 = o['soprot1bdr1'];
    _soprot2bdr1 = o['soprot2bdr1'];
    _soprot3bdr1 = o['soprot3bdr1'];
    _soprot4bdr1 = o['soprot4bdr1'];
    _soprot5bdr1 = o['soprot5bdr1'];
    _bdr2 = o['bdr2'];
    _sostojaniebdr2 = o['sostojaniebdr2'];
    _fotobdr2 = o['fotobdr2'];
    _zamechbdr2 = o['zamechbdr2'];
    _tok1bdr2 = o['tok1bdr2'];
    _tok2bdr2 = o['tok2bdr2'];
    _tok3bdr2 = o['tok3bdr2'];
    _tok4bdr2 = o['tok4bdr2'];
    _tok5bdr2 = o['tok5bdr2'];
    _soprot1bdr2 = o['soprot1bdr2'];
    _soprot2bdr2 = o['soprot2bdr2'];
    _soprot3bdr2 = o['soprot3bdr2'];
    _soprot4bdr2 = o['soprot4bdr2'];
    _soprot5bdr2 = o['soprot5bdr2'];

    _markaaz = o['markaaz'];
    _markaaz = o['markaaz'];
    _fotoaz = o['fotoaz'];
    _zamechaz = o['zamechaz'];
    _tok1az = o['tok1az'];
    _tok2az = o['tok2az'];
    _tok3az = o['tok3az'];
    _tok4az = o['tok4az'];
    _soprrast1az = o['soprrast1az'];
    _soprrast2az = o['soprrast2az'];
    _soprrast3az = o['soprrast3az'];
    _soprrast4az = o['soprrast4az'];

    _sostojaniezz = o['sostojaniezz'];
    _soprrastzz = o['soprrastzz'];
    _fotozz = o['fotozz'];
    _zamechzz = o['zamechzz'];

    _naznachvl1 = o['naznachvl1'];
    _sostojanievl1 = o['sostojanievl1'];
    _fotovl1 = o['fotovl1'];
    _zamechvl1 = o['zamechvl1'];
    _tipoporvl1 = o['tipoporvl1'];
    _kolvooporvl1 = o['kolvooporvl1'];
    _dlinavl1 = o['dlinavl1'];
    _provodvl1 = o['provodvl1'];
    _kolvoizolvl1 = o['kolvoizolvl1'];
    _markaizolvl1 = o['markaizolvl1'];
    _naznachvl2 = o['naznachvl2'];
    _sostojanievl2 = o['sostojanievl2'];
    _fotovl2 = o['fotovl2'];
    _zamechvl2 = o['zamechvl2'];
    _tipoporvl2 = o['tipoporvl2'];
    _kolvooporvl2 = o['kolvooporvl2'];
    _dlinavl2 = o['dlinavl2'];
    _provodvl2 = o['provodvl2'];
    _kolvoizolvl2 = o['kolvoizolvl2'];
    _markaizolvl2 = o['markaizolvl2'];
    _naznachvl3 = o['naznachvl3'];
    _sostojanievl3 = o['sostojanievl3'];
    _fotovl3 = o['fotovl3'];
    _zamechvl3 = o['zamechvl3'];
    _tipoporvl3 = o['tipoporvl3'];
    _kolvooporvl3 = o['kolvooporvl3'];
    _dlinavl3 = o['dlinavl3'];
    _provodvl3 = o['provodvl3'];
    _kolvoizolvl3 = o['kolvoizolvl3'];
    _markaizolvl3 = o['markaizolvl3'];

    _naznachkl1 = o['naznachkl1'];
    _sostojaniekl1 = o['sostojaniekl1'];
    _fotokl1 = o['fotokl1'];
    _zamechkl1 = o['zamechkl1'];
    _markakabelkl1 = o['markakabelkl1'];
    _dlinakl1 = o['dlinakl1'];
    _soprotkl1 = o['soprotkl1'];
    _naznachkl2 = o['naznachkl2'];
    _sostojaniekl2 = o['sostojaniekl2'];
    _fotokl2 = o['fotokl2'];
    _zamechkl2 = o['zamechkl2'];
    _markakabelkl2 = o['markakabelkl2'];
    _dlinakl2 = o['dlinakl2'];
    _soprotkl2 = o['soprotkl2'];
    _naznachkl3 = o['naznachkl3'];
    _sostojaniekl3 = o['sostojaniekl3'];
    _fotokl3 = o['fotokl3'];
    _zamechkl3 = o['zamechkl3'];
    _markakabelkl3 = o['markakabelkl3'];
    _dlinakl3 = o['dlinakl3'];
    _soprotkl3 = o['soprotkl3'];

    _tipktp = o['tipktp'];
    _sostojaniektp = o['sostojaniektp'];
    _fotoktp = o['fotoktp'];
    _markatrr = o['markatrr'];

    _tipshr = o['tipshr'];
    _sostojanieshr = o['sostojanieshr'];
    _sostojanieograzhd = o['sostojanieograzhd'];
    _sostojaniezz2 = o['sostojaniezz2'];
    _soprrastzz2 = o['soprrastzz2'];
    _sostojanieraz = o['sostojanieraz'];
    _tipraz = o['tipraz'];

    _potrmoschnost = o['potrmoschnost'];
    _datato1 = o['datato1'];
    _elekschetchik1 = o['elekschetchik1'];
    _datato2 = o['datato2'];
    _elekschetchik2 = o['elekschetchik2'];
    _prostoi1 = o['prostoi1'];
    _narabschetchik1 = o['narabschetchik1'];
    _narabschetchik2 = o['narabschetchik2'];
    _prostoi2 = o['prostoi2'];

    _rogruntskz = o['rogruntskz'];
    _rogruntktp = o['rogruntktp'];
    _rogruntraz = o['rogruntraz'];
    _rogruntaz = o['rogruntaz'];
    _soprotzzktp = o['soprotzzktp'];
    _soprotzzraz = o['soprotzzraz'];
  }
}
