import 'dart:io';
import 'dart:math';

import 'package:ehz1/camera_page_ukz.dart';
import 'package:ehz1/image_screen.dart';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
// import './camera_page_ukz.dart';
// import './img_screen_ip.dart';
import './model_ukz.dart';
import 'object_list_ukz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ObjectDetailUkz extends StatefulWidget {
  const ObjectDetailUkz({Key key, @required this.object});
  final Object object;
  @override
  State<StatefulWidget> createState() => ObjectDetailUkzState(object);
}

class ObjectDetailUkzState extends State<ObjectDetailUkz> {
  Ukz object;
  String locationData = '';

  DateTime dateUkz; // Дата выбранная для date

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
  FocusNode focusNode5 = FocusNode();
  FocusNode focusNode6 = FocusNode();
  FocusNode focusNode7 = FocusNode();
  FocusNode focusNode8 = FocusNode();
  FocusNode focusNode9 = FocusNode();
  FocusNode focusNode10 = FocusNode();
  FocusNode focusNode11 = FocusNode();
  FocusNode focusNode12 = FocusNode();
  FocusNode focusNode13 = FocusNode();
  FocusNode focusNode14 = FocusNode();
  FocusNode focusNode15 = FocusNode();
  FocusNode focusNode16 = FocusNode();
  FocusNode focusNode17 = FocusNode();
  FocusNode focusNode18 = FocusNode();
  FocusNode focusNode19 = FocusNode();
  FocusNode focusNode20 = FocusNode();
  FocusNode focusNode21 = FocusNode(); //free
  FocusNode focusNode22 = FocusNode(); //free
  FocusNode focusNode23 = FocusNode();
  FocusNode focusNode24 = FocusNode();
  FocusNode focusNode25 = FocusNode();
  FocusNode focusNode26 = FocusNode();
  FocusNode focusNode27 = FocusNode();
  FocusNode focusNode28 = FocusNode();
  FocusNode focusNode29 = FocusNode();
  FocusNode focusNode30 = FocusNode();
  FocusNode focusNode31 = FocusNode();
  FocusNode focusNode32 = FocusNode();
  FocusNode focusNode33 = FocusNode();
  FocusNode focusNode34 = FocusNode();
  FocusNode focusNode35 = FocusNode();
  FocusNode focusNode36 = FocusNode();
  FocusNode focusNode37 = FocusNode();
  FocusNode focusNode38 = FocusNode();
  FocusNode focusNode39 = FocusNode();
  FocusNode focusNode40 = FocusNode();
  FocusNode focusNode41 = FocusNode();
  FocusNode focusNode42 = FocusNode();
  FocusNode focusNode43 = FocusNode();
  FocusNode focusNode44 = FocusNode();
  FocusNode focusNode45 = FocusNode();
  FocusNode focusNode46 = FocusNode();
  FocusNode focusNode47 = FocusNode();
  FocusNode focusNode48 = FocusNode();
  FocusNode focusNode49 = FocusNode();
  FocusNode focusNode50 = FocusNode();
  FocusNode focusNode51 = FocusNode();
  FocusNode focusNode52 = FocusNode();
  FocusNode focusNode53 = FocusNode();
  FocusNode focusNode54 = FocusNode();
  FocusNode focusNode55 = FocusNode();
  FocusNode focusNode56 = FocusNode();
  FocusNode focusNode57 = FocusNode();
  FocusNode focusNode58 = FocusNode();
  FocusNode focusNode59 = FocusNode();
  FocusNode focusNode60 = FocusNode();
  FocusNode focusNode61 = FocusNode();
  FocusNode focusNode62 = FocusNode();
  FocusNode focusNode63 = FocusNode();
  FocusNode focusNode64 = FocusNode();
  FocusNode focusNode65 = FocusNode();
  FocusNode focusNode66 = FocusNode();
  FocusNode focusNode67 = FocusNode();
  FocusNode focusNode68 = FocusNode();
  FocusNode focusNode69 = FocusNode();
  FocusNode focusNode70 = FocusNode();
  FocusNode focusNode71 = FocusNode();
  FocusNode focusNode72 = FocusNode();
  FocusNode focusNode73 = FocusNode();
  FocusNode focusNode74 = FocusNode();
  FocusNode focusNode75 = FocusNode();
  FocusNode focusNode76 = FocusNode();
  FocusNode focusNode77 = FocusNode();
  FocusNode focusNode78 = FocusNode();
  FocusNode focusNode79 = FocusNode();
  FocusNode focusNode80 = FocusNode();
  FocusNode focusNode81 = FocusNode();
  FocusNode focusNode82 = FocusNode();
  FocusNode focusNode83 = FocusNode();
  FocusNode focusNode84 = FocusNode();
  FocusNode focusNode85 = FocusNode();
  FocusNode focusNode86 = FocusNode();
  FocusNode focusNode87 = FocusNode();
  FocusNode focusNode88 = FocusNode();
  FocusNode focusNode89 = FocusNode();
  FocusNode focusNode90 = FocusNode();
  FocusNode focusNode91 = FocusNode();
  FocusNode focusNode92 = FocusNode();
  FocusNode focusNode93 = FocusNode();
  FocusNode focusNode94 = FocusNode();
  FocusNode focusNode95 = FocusNode();
  FocusNode focusNode96 = FocusNode();
  FocusNode focusNode97 = FocusNode();
  FocusNode focusNode98 = FocusNode();
  FocusNode focusNode99 = FocusNode();
  FocusNode focusNode100 = FocusNode();
  FocusNode focusNode101 = FocusNode();
  FocusNode focusNode102 = FocusNode();
  FocusNode focusNode103 = FocusNode();
  FocusNode focusNode104 = FocusNode();
  FocusNode focusNode105 = FocusNode();
  FocusNode focusNode106 = FocusNode();
  FocusNode focusNode107 = FocusNode();
  FocusNode focusNode108 = FocusNode();
  FocusNode focusNode109 = FocusNode();
  FocusNode focusNode110 = FocusNode();
  FocusNode focusNode111 = FocusNode();
  FocusNode focusNode112 = FocusNode();
  FocusNode focusNode113 = FocusNode();
  FocusNode focusNode114 = FocusNode();
  FocusNode focusNode115 = FocusNode();
  FocusNode focusNode116 = FocusNode();
  FocusNode focusNode117 = FocusNode();
  FocusNode focusNode118 = FocusNode();
  FocusNode focusNode119 = FocusNode(); //free
  FocusNode focusNode120 = FocusNode(); //free
  FocusNode focusNode121 = FocusNode(); //free
  FocusNode focusNode122 = FocusNode(); //free
  FocusNode focusNode123 = FocusNode(); //free
  FocusNode focusNode124 = FocusNode(); //free
  FocusNode focusNode125 = FocusNode(); //free
  FocusNode focusNode126 = FocusNode(); //free
  FocusNode focusNode127 = FocusNode(); //free
  FocusNode focusNode128 = FocusNode(); //free
  FocusNode focusNode129 = FocusNode(); //free
  FocusNode focusNode130 = FocusNode(); //free
  FocusNode focusNode131 = FocusNode(); //free
  FocusNode focusNode132 = FocusNode(); //free
  FocusNode focusNode133 = FocusNode(); //free
  FocusNode focusNode134 = FocusNode(); //free
  FocusNode focusNode135 = FocusNode(); //free
  FocusNode focusNode136 = FocusNode(); //free
  FocusNode focusNode137 = FocusNode(); //free
  FocusNode focusNode138 = FocusNode(); //free
  FocusNode focusNode139 = FocusNode(); //free
  FocusNode focusNode140 = FocusNode(); //free
  FocusNode focusNode141 = FocusNode(); //free
  FocusNode focusNode142 = FocusNode(); //free
  FocusNode focusNode143 = FocusNode(); //free
  FocusNode focusNode144 = FocusNode(); //free
  FocusNode focusNode145 = FocusNode(); //free
  FocusNode focusNode146 = FocusNode(); //free
  FocusNode focusNode147 = FocusNode(); //free
  FocusNode focusNode148 = FocusNode(); //free
  FocusNode focusNode149 = FocusNode(); //free
  FocusNode focusNode150 = FocusNode(); //free
  FocusNode focusNode151 = FocusNode(); //free

  File _imageskz1;
  File _imageskz2;

  File _imagekip1;
  File _imagekip2;
  File _imagekip3;
  File _imagekip4;

  File _imagebdr1;
  File _imagebdr2;
  File _imageaz;

  Color _cardColor = Colors.white;

  final List<String> _filial = [
    'Арзамасское ЛПУМГ',
    'Владимирское ЛПУМГ',
    'Волжское ЛПУМГ',
    'Вятское ЛПУМГ',
    'Заволжское ЛПУМГ',
    'Ивановское ЛПУМГ',
    'Кировское ЛПУМГ',
    'Моркинское ЛПУМГ',
    'Пензенское ЛПУМГ',
    'Пильнинское ЛПУМГ',
    'Починковское ЛПУМГ',
    'Приокское ЛПУМГ',
    'Семеновское ЛПУМГ',
    'Сеченовское ЛПУМГ',
    'Торбеевское ЛПУМГ',
    'Чебоксарское ЛПУМГ',
    'ИТЦ',
    'УАВР'
  ];
  final List<String> _sostojanieskz1 = [
    'Удовлетворительное',
    'Неудовлетворительное',
    'Неисправен',
    'Требует ремонта',
    'В ремонте',
    'В резерве',
  ];

  TextEditingController idController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController date1Controller = TextEditingController();

  TextEditingController object1Controller = TextEditingController();
  TextEditingController markaskz1Controller = TextEditingController();
  TextEditingController sostojanieskz1Controller = TextEditingController();
  // TextEditingController fotoskz1Controller = TextEditingController();
  TextEditingController zamechskz1Controller = TextEditingController();
  TextEditingController potencialskz1Controller = TextEditingController();
  TextEditingController naprrabskz1Controller = TextEditingController();
  TextEditingController naprmaxskz1Controller = TextEditingController();
  TextEditingController tokrabskz1Controller = TextEditingController();
  TextEditingController tokmaxskz1Controller = TextEditingController();
  TextEditingController zapaspotokuskz1Controller = TextEditingController();
  TextEditingController shunttokskz1Controller = TextEditingController();
  TextEditingController shuntnaprskz1Controller = TextEditingController();
  TextEditingController soprotskz1Controller = TextEditingController();
  TextEditingController schetelec1Controller = TextEditingController();
  TextEditingController schetnarab1Controller = TextEditingController();
  TextEditingController schetzasch1Controller = TextEditingController();

  TextEditingController date2Controller = TextEditingController();
  TextEditingController object2Controller = TextEditingController();
  TextEditingController markaskz2Controller = TextEditingController();
  TextEditingController sostojanieskz2Controller = TextEditingController();
  // TextEditingController fotoskz2Controller = TextEditingController();
  TextEditingController zamechskz2Controller = TextEditingController();
  TextEditingController potencialskz2Controller = TextEditingController();
  TextEditingController naprrabskz2Controller = TextEditingController();
  TextEditingController naprmaxskz2Controller = TextEditingController();
  TextEditingController tokrabskz2Controller = TextEditingController();
  TextEditingController tokmaxskz2Controller = TextEditingController();
  TextEditingController zapaspotokuskz2Controller = TextEditingController();
  TextEditingController shunttokskz2Controller = TextEditingController();
  TextEditingController shuntnaprskz2Controller = TextEditingController();
  TextEditingController shunttokskz3Controller = TextEditingController();
  TextEditingController shuntnaprskz3Controller = TextEditingController();
  TextEditingController shunttokskz4Controller = TextEditingController();
  TextEditingController shuntnaprskz4Controller = TextEditingController();
  TextEditingController soprotskz2Controller = TextEditingController();
  TextEditingController schetelec2Controller = TextEditingController();
  TextEditingController schetnarab2Controller = TextEditingController();
  TextEditingController schetzasch2Controller = TextEditingController();

  TextEditingController kipname1Controller = TextEditingController();
  TextEditingController kipname2Controller = TextEditingController();
  TextEditingController kipname3Controller = TextEditingController();
  TextEditingController kipname4Controller = TextEditingController();
  TextEditingController sostojaniekip1Controller = TextEditingController();
  TextEditingController sostojaniekip2Controller = TextEditingController();
  TextEditingController sostojaniekip3Controller = TextEditingController();
  TextEditingController sostojaniekip4Controller = TextEditingController();
  // TextEditingController fotokip1Controller = TextEditingController();
  // TextEditingController fotokip2Controller = TextEditingController();
  // TextEditingController fotokip3Controller = TextEditingController();
  // TextEditingController fotokip4Controller = TextEditingController();
  TextEditingController zamechkip1Controller = TextEditingController();
  TextEditingController zamechkip2Controller = TextEditingController();
  TextEditingController zamechkip3Controller = TextEditingController();
  TextEditingController zamechkip4Controller = TextEditingController();
  TextEditingController potenctdvklsum1Controller = TextEditingController();
  TextEditingController potenctdvklpol1Controller = TextEditingController();
  TextEditingController potenctdotklsum1Controller = TextEditingController();
  TextEditingController potenctdotklpol1Controller = TextEditingController();
  TextEditingController peremsost1Controller = TextEditingController();
  TextEditingController datchkorr1Controller = TextEditingController();
  TextEditingController potenctdvklsum2Controller = TextEditingController();
  TextEditingController potenctdvklpol2Controller = TextEditingController();
  TextEditingController potenctdotklsum2Controller = TextEditingController();
  TextEditingController potenctdotklpol2Controller = TextEditingController();
  TextEditingController peremsost2Controller = TextEditingController();
  TextEditingController datchkorr2Controller = TextEditingController();
  TextEditingController potenctdvklsum3Controller = TextEditingController();
  TextEditingController potenctdvklpol3Controller = TextEditingController();
  TextEditingController potenctdotklsum3Controller = TextEditingController();
  TextEditingController potenctdotklpol3Controller = TextEditingController();
  TextEditingController peremsost3Controller = TextEditingController();
  TextEditingController datchkorr3Controller = TextEditingController();
  TextEditingController potenctdvklsum4Controller = TextEditingController();
  TextEditingController potenctdvklpol4Controller = TextEditingController();
  TextEditingController potenctdotklsum4Controller = TextEditingController();
  TextEditingController potenctdotklpol4Controller = TextEditingController();
  TextEditingController peremsost4Controller = TextEditingController();
  TextEditingController datchkorr4Controller = TextEditingController();

  TextEditingController bdr1Controller = TextEditingController();
  TextEditingController sostojaniebdr1Controller = TextEditingController();
  // TextEditingController fotobdr1Controller = TextEditingController();
  TextEditingController zamechbdr1Controller = TextEditingController();
  TextEditingController tok1bdr1Controller = TextEditingController();
  TextEditingController tok2bdr1Controller = TextEditingController();
  TextEditingController tok3bdr1Controller = TextEditingController();
  TextEditingController tok4bdr1Controller = TextEditingController();
  TextEditingController tok5bdr1Controller = TextEditingController();
  TextEditingController soprot1bdr1Controller = TextEditingController();
  TextEditingController soprot2bdr1Controller = TextEditingController();
  TextEditingController soprot3bdr1Controller = TextEditingController();
  TextEditingController soprot4bdr1Controller = TextEditingController();
  TextEditingController soprot5bdr1Controller = TextEditingController();
  TextEditingController bdr2Controller = TextEditingController();
  TextEditingController sostojaniebdr2Controller = TextEditingController();
  // TextEditingController fotobdr2Controller = TextEditingController();
  TextEditingController zamechbdr2Controller = TextEditingController();
  TextEditingController tok1bdr2Controller = TextEditingController();
  TextEditingController tok2bdr2Controller = TextEditingController();
  TextEditingController tok3bdr2Controller = TextEditingController();
  TextEditingController tok4bdr2Controller = TextEditingController();
  TextEditingController tok5bdr2Controller = TextEditingController();
  TextEditingController soprot1bdr2Controller = TextEditingController();
  TextEditingController soprot2bdr2Controller = TextEditingController();
  TextEditingController soprot3bdr2Controller = TextEditingController();
  TextEditingController soprot4bdr2Controller = TextEditingController();
  TextEditingController soprot5bdr2Controller = TextEditingController();

  TextEditingController markaazController = TextEditingController();
  TextEditingController sostojanieazController = TextEditingController();
  // TextEditingController fotoazController = TextEditingController();
  TextEditingController zamechazController = TextEditingController();
  TextEditingController tok1azController = TextEditingController();
  TextEditingController tok2azController = TextEditingController();
  TextEditingController tok3azController = TextEditingController();
  TextEditingController tok4azController = TextEditingController();
  TextEditingController tok5azController = TextEditingController();
  TextEditingController soprrast1azController = TextEditingController();
  TextEditingController soprrast2azController = TextEditingController();
  TextEditingController soprrast3azController = TextEditingController();
  TextEditingController soprrast4azController = TextEditingController();
  TextEditingController soprrast5azController = TextEditingController();

  TextEditingController sostojaniezzController = TextEditingController();
  TextEditingController soprrastzzController = TextEditingController();
  // TextEditingController fotozzController = TextEditingController();
  TextEditingController zamechzzController = TextEditingController();

  TextEditingController naznachvl1Controller = TextEditingController();
  TextEditingController sostojanievl1Controller = TextEditingController();
  // TextEditingController fotovl1Controller = TextEditingController();
  TextEditingController zamechvl1Controller = TextEditingController();
  TextEditingController tipoporvl1Controller = TextEditingController();
  TextEditingController kolvooporvl1Controller = TextEditingController();
  TextEditingController dlinavl1Controller = TextEditingController();
  TextEditingController provodvl1Controller = TextEditingController();
  TextEditingController kolvoizolvl1Controller = TextEditingController();
  TextEditingController markaizolvl1Controller = TextEditingController();
  TextEditingController naznachvl2Controller = TextEditingController();
  TextEditingController sostojanievl2Controller = TextEditingController();
  // TextEditingController fotovl2Controller = TextEditingController();
  TextEditingController zamechvl2Controller = TextEditingController();
  TextEditingController tipoporvl2Controller = TextEditingController();
  TextEditingController kolvooporvl2Controller = TextEditingController();
  TextEditingController dlinavl2Controller = TextEditingController();
  TextEditingController provodvl2Controller = TextEditingController();
  TextEditingController kolvoizolvl2Controller = TextEditingController();
  TextEditingController markaizolvl2Controller = TextEditingController();
  TextEditingController naznachvl3Controller = TextEditingController();
  TextEditingController sostojanievl3Controller = TextEditingController();
  // TextEditingController fotovl3Controller = TextEditingController();
  TextEditingController zamechvl3Controller = TextEditingController();
  TextEditingController tipoporvl3Controller = TextEditingController();
  TextEditingController kolvooporvl3Controller = TextEditingController();
  TextEditingController dlinavl3Controller = TextEditingController();
  TextEditingController provodvl3Controller = TextEditingController();
  TextEditingController kolvoizolvl3Controller = TextEditingController();
  TextEditingController markaizolvl3Controller = TextEditingController();

  TextEditingController naznachkl1Controller = TextEditingController();
  TextEditingController sostojaniekl1Controller = TextEditingController();
  // TextEditingController fotokl1Controller = TextEditingController();
  TextEditingController zamechkl1Controller = TextEditingController();
  TextEditingController markakabelkl1Controller = TextEditingController();
  TextEditingController dlinakl1Controller = TextEditingController();
  TextEditingController soprotkl1Controller = TextEditingController();
  TextEditingController naznachkl2Controller = TextEditingController();
  TextEditingController sostojaniekl2Controller = TextEditingController();
  // TextEditingController fotokl2Controller = TextEditingController();
  TextEditingController zamechkl2Controller = TextEditingController();
  TextEditingController markakabelkl2Controller = TextEditingController();
  TextEditingController dlinakl2Controller = TextEditingController();
  TextEditingController soprotkl2Controller = TextEditingController();
  TextEditingController naznachkl3Controller = TextEditingController();
  TextEditingController sostojaniekl3Controller = TextEditingController();
  // TextEditingController fotokl3Controller = TextEditingController();
  TextEditingController zamechkl3Controller = TextEditingController();
  TextEditingController markakabelkl3Controller = TextEditingController();
  TextEditingController dlinakl3Controller = TextEditingController();
  TextEditingController soprotkl3Controller = TextEditingController();

  TextEditingController tipktpController = TextEditingController();
  TextEditingController sostojaniektpController = TextEditingController();
  // TextEditingController fotoktpController = TextEditingController();
  TextEditingController markatrrController = TextEditingController();

  TextEditingController potrmoschnostController = TextEditingController();
  TextEditingController datato1Controller = TextEditingController();
  TextEditingController elekschetchik1Controller = TextEditingController();
  TextEditingController datato2Controller = TextEditingController();
  TextEditingController elekschetchik2Controller = TextEditingController();
  TextEditingController prostoi1Controller = TextEditingController();
  TextEditingController narabschetchik1Controller = TextEditingController();
  TextEditingController narabschetchik2Controller = TextEditingController();
  TextEditingController prostoi2Controller = TextEditingController();

  bool isEdit;
  final GlobalKey<FormState> _1formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _2formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _3formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _4formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _5formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _6formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _7formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _8formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _9formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    isEdit = object.title == '' ? false : true;
    // object.photo == '' ? false : true;
    // object.photometdef1 == '' ? false : true;

    titleController.text = object.title ?? '';
    date1Controller.text = object.date1 ?? '';

    object1Controller.text = object.object1 ?? '';
    markaskz1Controller.text = object.markaskz1 ?? '';
    sostojanieskz1Controller.text = object.sostojanieskz1 ?? '';
    // fotoskz1Controller.text = object.fotoskz1 ?? '';
    zamechskz1Controller.text = object.zamechskz1 ?? '';
    potencialskz1Controller.text = object.potencialskz1 ?? '';
    naprrabskz1Controller.text = object.naprrabskz1 ?? '';
    naprmaxskz1Controller.text = object.naprmaxskz1 ?? '';
    tokrabskz1Controller.text = object.tokrabskz1 ?? '';
    tokmaxskz1Controller.text = object.tokmaxskz1 ?? '';
    zapaspotokuskz1Controller.text = object.zapaspotokuskz1 ?? '';
    shunttokskz1Controller.text = object.shunttokskz1 ?? '';
    shuntnaprskz1Controller.text = object.shuntnaprskz1 ?? '';
    soprotskz1Controller.text = object.soprotskz1 ?? '';
    schetelec1Controller.text = object.schetelec1 ?? '';
    schetnarab1Controller.text = object.schetnarab1 ?? '';
    schetzasch1Controller.text = object.schetzasch1 ?? '';

    date2Controller.text = object.date2 ?? '';
    object2Controller.text = object.object2 ?? '';
    markaskz2Controller.text = object.markaskz2 ?? '';
    sostojanieskz2Controller.text = object.sostojanieskz2 ?? '';
    // fotoskz2Controller.text = object.fotoskz2 ?? '';
    zamechskz2Controller.text = object.zamechskz2 ?? '';
    potencialskz2Controller.text = object.potencialskz2 ?? '';
    naprrabskz2Controller.text = object.naprrabskz2 ?? '';
    naprmaxskz2Controller.text = object.naprmaxskz2 ?? '';
    tokrabskz2Controller.text = object.tokrabskz2 ?? '';
    tokmaxskz2Controller.text = object.tokmaxskz2 ?? '';
    zapaspotokuskz2Controller.text = object.zapaspotokuskz2 ?? '';
    shunttokskz2Controller.text = object.shunttokskz2 ?? '';
    shuntnaprskz2Controller.text = object.shuntnaprskz2 ?? '';
    shunttokskz3Controller.text = object.shunttokskz3 ?? '';
    shuntnaprskz3Controller.text = object.shuntnaprskz3 ?? '';
    shunttokskz4Controller.text = object.shunttokskz4 ?? '';
    shuntnaprskz4Controller.text = object.shuntnaprskz4 ?? '';
    soprotskz2Controller.text = object.soprotskz2 ?? '';
    schetelec2Controller.text = object.schetelec2 ?? '';
    schetnarab2Controller.text = object.schetnarab2 ?? '';
    schetzasch2Controller.text = object.schetzasch2 ?? '';

    kipname1Controller.text = object.kipname1 ?? '';
    kipname2Controller.text = object.kipname2 ?? '';
    kipname3Controller.text = object.kipname3 ?? '';
    kipname4Controller.text = object.kipname4 ?? '';
    sostojaniekip1Controller.text = object.sostojaniekip1 ?? '';
    sostojaniekip2Controller.text = object.sostojaniekip2 ?? '';
    sostojaniekip3Controller.text = object.sostojaniekip3 ?? '';
    sostojaniekip4Controller.text = object.sostojaniekip4 ?? '';
    // fotokip1Controller.text = object.fotokip1 ?? '';
    // fotokip2Controller.text = object.fotokip2 ?? '';
    // fotokip3Controller.text = object.fotokip3 ?? '';
    // fotokip4Controller.text = object.fotokip4 ?? '';
    zamechkip1Controller.text = object.zamechkip1 ?? '';
    zamechkip2Controller.text = object.zamechkip2 ?? '';
    zamechkip3Controller.text = object.zamechkip3 ?? '';
    zamechkip4Controller.text = object.zamechkip4 ?? '';
    potenctdvklsum1Controller.text = object.potenctdvklsum1 ?? '';
    potenctdvklpol1Controller.text = object.potenctdvklpol1 ?? '';
    potenctdotklsum1Controller.text = object.potenctdotklsum1 ?? '';
    potenctdotklpol1Controller.text = object.potenctdotklpol1 ?? '';
    peremsost1Controller.text = object.peremsost1 ?? '';
    datchkorr1Controller.text = object.datchkorr1 ?? '';
    potenctdvklsum2Controller.text = object.potenctdvklsum2 ?? '';
    potenctdvklpol2Controller.text = object.potenctdvklpol2 ?? '';
    potenctdotklsum2Controller.text = object.potenctdotklsum2 ?? '';
    potenctdotklpol2Controller.text = object.potenctdotklpol2 ?? '';
    peremsost2Controller.text = object.peremsost2 ?? '';
    datchkorr2Controller.text = object.datchkorr2 ?? '';
    potenctdvklsum3Controller.text = object.potenctdvklsum3 ?? '';
    potenctdvklpol3Controller.text = object.potenctdvklpol3 ?? '';
    potenctdotklsum3Controller.text = object.potenctdotklsum3 ?? '';
    potenctdotklpol3Controller.text = object.potenctdotklpol3 ?? '';
    peremsost3Controller.text = object.peremsost3 ?? '';
    datchkorr3Controller.text = object.datchkorr3 ?? '';
    potenctdvklsum4Controller.text = object.potenctdvklsum4 ?? '';
    potenctdvklpol4Controller.text = object.potenctdvklpol4 ?? '';
    potenctdotklsum4Controller.text = object.potenctdotklsum4 ?? '';
    potenctdotklpol4Controller.text = object.potenctdotklpol4 ?? '';
    peremsost4Controller.text = object.peremsost4 ?? '';
    datchkorr4Controller.text = object.datchkorr4 ?? '';

    bdr1Controller.text = object.bdr1 ?? '';
    sostojaniebdr1Controller.text = object.sostojaniebdr1 ?? '';
    // fotobdr1Controller.text = object.fotobdr1 ?? '';
    zamechbdr1Controller.text = object.zamechbdr1 ?? '';
    tok1bdr1Controller.text = object.tok1bdr1 ?? '';
    tok2bdr1Controller.text = object.tok2bdr1 ?? '';
    tok3bdr1Controller.text = object.tok3bdr1 ?? '';
    tok4bdr1Controller.text = object.tok4bdr1 ?? '';
    tok5bdr1Controller.text = object.tok5bdr1 ?? '';
    soprot1bdr1Controller.text = object.soprot1bdr1 ?? '';
    soprot2bdr1Controller.text = object.soprot2bdr1 ?? '';
    soprot3bdr1Controller.text = object.soprot3bdr1 ?? '';
    soprot4bdr1Controller.text = object.soprot4bdr1 ?? '';
    soprot5bdr1Controller.text = object.soprot5bdr1 ?? '';
    bdr2Controller.text = object.bdr2 ?? '';
    sostojaniebdr2Controller.text = object.sostojaniebdr2 ?? '';
    // fotobdr2Controller.text = object.fotobdr2 ?? '';
    zamechbdr2Controller.text = object.zamechbdr2 ?? '';
    tok1bdr2Controller.text = object.tok1bdr2 ?? '';
    tok2bdr2Controller.text = object.tok2bdr2 ?? '';
    tok3bdr2Controller.text = object.tok3bdr2 ?? '';
    tok4bdr2Controller.text = object.tok4bdr2 ?? '';
    tok5bdr2Controller.text = object.tok5bdr2 ?? '';
    soprot1bdr2Controller.text = object.soprot1bdr2 ?? '';
    soprot2bdr2Controller.text = object.soprot2bdr2 ?? '';
    soprot3bdr2Controller.text = object.soprot3bdr2 ?? '';
    soprot4bdr2Controller.text = object.soprot4bdr2 ?? '';
    soprot5bdr2Controller.text = object.soprot5bdr2 ?? '';

    sostojanieazController.text = object.sostojanieaz ?? '';
    // fotoazController.text = object.fotoaz ?? '';
    zamechazController.text = object.zamechaz ?? '';
    tok1azController.text = object.tok1az ?? '';
    tok2azController.text = object.tok2az ?? '';
    tok3azController.text = object.tok3az ?? '';
    tok4azController.text = object.tok4az ?? '';
    tok5azController.text = object.tok5az ?? '';
    soprrast1azController.text = object.soprrast1az ?? '';
    soprrast2azController.text = object.soprrast2az ?? '';
    soprrast3azController.text = object.soprrast3az ?? '';
    soprrast4azController.text = object.soprrast4az ?? '';
    soprrast5azController.text = object.soprrast5az ?? '';

    sostojaniezzController.text = object.sostojaniezz ?? '';
    soprrastzzController.text = object.soprrastzz ?? '';
    // fotozzController.text = object.fotozz ?? '';
    zamechzzController.text = object.zamechzz ?? '';

    naznachvl1Controller.text = object.naznachvl1 ?? '';
    sostojanievl1Controller.text = object.sostojanievl1 ?? '';
    // fotovl1Controller.text = object.fotovl1 ?? '';
    zamechvl1Controller.text = object.zamechvl1 ?? '';
    tipoporvl1Controller.text = object.tipoporvl1 ?? '';
    kolvooporvl1Controller.text = object.kolvooporvl1 ?? '';
    dlinavl1Controller.text = object.dlinavl1 ?? '';
    provodvl1Controller.text = object.provodvl1 ?? '';
    kolvoizolvl1Controller.text = object.kolvoizolvl1 ?? '';
    markaizolvl1Controller.text = object.markaizolvl1 ?? '';
    naznachvl2Controller.text = object.naznachvl2 ?? '';
    sostojanievl2Controller.text = object.sostojanievl2 ?? '';
    // fotovl2Controller.text = object.fotovl2 ?? '';
    zamechvl2Controller.text = object.zamechvl2 ?? '';
    tipoporvl2Controller.text = object.tipoporvl2 ?? '';
    kolvooporvl2Controller.text = object.kolvooporvl2 ?? '';
    dlinavl2Controller.text = object.dlinavl2 ?? '';
    provodvl2Controller.text = object.provodvl2 ?? '';
    kolvoizolvl2Controller.text = object.kolvoizolvl2 ?? '';
    markaizolvl2Controller.text = object.markaizolvl2 ?? '';
    naznachvl3Controller.text = object.naznachvl3 ?? '';
    sostojanievl3Controller.text = object.sostojanievl3 ?? '';
    // fotovl3Controller.text = object.fotovl3 ?? '';
    zamechvl3Controller.text = object.zamechvl3 ?? '';
    tipoporvl3Controller.text = object.tipoporvl3 ?? '';
    kolvooporvl3Controller.text = object.kolvooporvl3 ?? '';
    dlinavl3Controller.text = object.dlinavl3 ?? '';
    provodvl3Controller.text = object.provodvl3 ?? '';
    kolvoizolvl3Controller.text = object.kolvoizolvl3 ?? '';
    markaizolvl3Controller.text = object.markaizolvl3 ?? '';

    naznachkl1Controller.text = object.naznachkl1 ?? '';
    sostojaniekl1Controller.text = object.sostojaniekl1 ?? '';
    // fotokl1Controller.text = object.fotokl1 ?? '';
    zamechkl1Controller.text = object.zamechkl1 ?? '';
    markakabelkl1Controller.text = object.markakabelkl1 ?? '';
    dlinakl1Controller.text = object.dlinakl1 ?? '';
    soprotkl1Controller.text = object.soprotkl1 ?? '';
    naznachkl2Controller.text = object.naznachkl2 ?? '';
    sostojaniekl2Controller.text = object.sostojaniekl2 ?? '';
    // fotokl2Controller.text = object.fotokl2 ?? '';
    zamechkl2Controller.text = object.zamechkl2 ?? '';
    markakabelkl2Controller.text = object.markakabelkl2 ?? '';
    dlinakl2Controller.text = object.dlinakl2 ?? '';
    soprotkl2Controller.text = object.soprotkl2 ?? '';
    naznachkl3Controller.text = object.naznachkl3 ?? '';
    sostojaniekl3Controller.text = object.sostojaniekl3 ?? '';
    // fotokl3Controller.text = object.fotokl3 ?? '';
    zamechkl3Controller.text = object.zamechkl3 ?? '';
    markakabelkl3Controller.text = object.markakabelkl3 ?? '';
    dlinakl3Controller.text = object.dlinakl3 ?? '';
    soprotkl3Controller.text = object.soprotkl3 ?? '';

    tipktpController.text = object.tipktp ?? '';
    sostojaniektpController.text = object.sostojaniektp ?? '';
    // fotoktpController.text = object.fotoktp ?? '';
    markatrrController.text = object.markatrr ?? '';

    potrmoschnostController.text = object.potrmoschnost ?? '';
    datato1Controller.text = object.datato1 ?? '';
    elekschetchik1Controller.text = object.elekschetchik1 ?? '';
    datato2Controller.text = object.datato2 ?? '';
    elekschetchik2Controller.text = object.elekschetchik2 ?? '';
    prostoi1Controller.text = object.prostoi1 ?? '';
    narabschetchik1Controller.text = object.narabschetchik1 ?? '';
    narabschetchik2Controller.text = object.narabschetchik2 ?? '';
    prostoi2Controller.text = object.prostoi2 ?? '';
  }

  ObjectDetailUkzState(this.object);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 16.0,
      color: Colors.black54,
      fontWeight: FontWeight.w600,
    );

    return DefaultTabController(
      length: 9,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: _cardColor,
        appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: isEdit
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ИЗМЕНИТЬ ЗАПИСЬ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Color.fromRGBO(187, 30, 16, 1.0),
                          size: 32,
                        ),
                        onPressed: () {
                          debugPrint('Click Floated Back.');
                          confirmDelete();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.save,
                          color: Theme.of(context).accentColor,
                          size: 32,
                        ),
                        onPressed: () {
                          if (_1formKey.currentState != null) {
                            _1formKey.currentState.validate();
                            saveForm12();
                          } else if (_2formKey.currentState != null) {
                            _2formKey.currentState.validate();
                            saveForm22();
                          } else if (_3formKey.currentState != null) {
                            _3formKey.currentState.validate();
                            saveForm32();
                          } else if (_4formKey.currentState != null) {
                            _4formKey.currentState.validate();
                            saveForm42();
                          } else if (_5formKey.currentState != null) {
                            _5formKey.currentState.validate();
                            saveForm52();
                          } else if (_6formKey.currentState != null) {
                            _6formKey.currentState.validate();
                            saveForm62();
                          } else if (_7formKey.currentState != null) {
                            _7formKey.currentState.validate();
                            saveForm72();
                          } else if (_8formKey.currentState != null) {
                            _8formKey.currentState.validate();
                            saveForm82();
                          } else if (_9formKey.currentState != null) {
                            _9formKey.currentState.validate();
                            saveForm92();
                          }
                        },
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ДОБАВИТЬ ЗАПИСЬ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.save,
                          color: Theme.of(context).accentColor,
                          size: 32,
                        ),
                        onPressed: () {
                          if (_1formKey.currentState != null) {
                            _1formKey.currentState.validate();
                            saveForm1();
                          } else if (_2formKey.currentState != null) {
                            _2formKey.currentState.validate();
                            saveForm2();
                          } else if (_3formKey.currentState != null) {
                            _3formKey.currentState.validate();
                            saveForm3();
                          } else if (_4formKey.currentState != null) {
                            _4formKey.currentState.validate();
                            saveForm4();
                          } else if (_5formKey.currentState != null) {
                            _5formKey.currentState.validate();
                            saveForm5();
                          } else if (_6formKey.currentState != null) {
                            _6formKey.currentState.validate();
                            saveForm6();
                          } else if (_7formKey.currentState != null) {
                            _7formKey.currentState.validate();
                            saveForm7();
                          } else if (_8formKey.currentState != null) {
                            _8formKey.currentState.validate();
                            saveForm8();
                          } else if (_9formKey.currentState != null) {
                            _9formKey.currentState.validate();
                            saveForm9();
                          }
                        },
                      ),
                    ],
                  ),
            bottom: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 4,
                  color: Theme.of(context).accentColor,
                ),
              ),
              labelStyle: TextStyle(
                fontSize: 44,
                color: Theme.of(context).accentColor, // цвет выбранной иконки
              ),
              unselectedLabelStyle: TextStyle(
                // fontSize: 32,
                color: Colors.white, // цвет невыбранных иконок
              ),
              isScrollable: true,
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.exposure_sharp,
                  size: 30,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.battery_4_bar_sharp,
                  size: 30,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.settings_input_component_sharp,
                  size: 30,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.tonality_sharp,
                  size: 30,
                )),
                Tab(
                    icon: Icon(
                  Icons.tornado_sharp,
                  size: 30,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.linear_scale_sharp,
                  size: 30,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.cable_rounded,
                  size: 30,
                  // color: Colors.white,
                )),
                Tab(
                    icon: Icon(
                  Icons.flash_on_sharp,
                  size: 30,
                )),
                Tab(
                    icon: Icon(
                  Icons.calculate_sharp,
                  size: 30,
                )),
              ],
            )),
        body: TabBarView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _1formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'СТАНЦИЯ КАТОДНОЙ ЗАЩИТЫ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              // alignment: Alignment.topLeft,
                              child: Text(
                                'Дата обслуживания:',
                                style: TextStyle(
                                  fontFamily: 'ASimplerDnm',
                                  fontSize: 22,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            focusNode: focusNode2,
                            onPressed: () async {
                              DateTime selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2015),
                                lastDate: dateUkz ?? DateTime(2100),
                                locale: const Locale("ru",
                                    "RU"), // Установите локаль на русский язык
                              );

                              if (selectedDate != null) {
                                setState(() {
                                  dateUkz = selectedDate;
                                  date1Controller.text =
                                      DateFormat('dd.MM.yyyy')
                                          .format(selectedDate);
                                  object.date1 = date1Controller.text;
                                });
                              }
                            },
                            icon: Icon(
                              Icons.calendar_month_outlined,
                              color: focusNode2.hasFocus ||
                                      date1Controller.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            // alignment: Alignment.center,
                            child: Text(
                              date1Controller.text,
                              style: TextStyle(
                                fontFamily: 'ASimplerDnm',
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          // setState(() {
                          object.title = value;
                          // titleController.text = object.title ?? '';
                          // });
                        },
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Наименование не введено';
                          } else if (value.length > 50) {
                            return 'Максимальная длина 50';
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        controller: titleController,
                        focusNode: focusNode1,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Наименование объекта *',
                          hintText: 'Как называется объект обслуживания',
                          prefixIcon: Icon(
                            Icons.account_balance_outlined,
                            color: focusNode1.hasFocus ||
                                    titleController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              titleController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        onChanged: (String value) {
                          setState(() {
                            focusNode1.requestFocus();
                            object.title = value;
                            object.title = titleController.text;
                          });
                        },
                      ),
                      Divider(thickness: 4),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 2, 12, 2),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 50,
                                      onFieldSubmitted: (String value) {
                                        object.markaskz1 = value;
                                      },
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return 'введите марку';
                                        } else if (value.length > 50) {
                                          return 'Максимальная длина 50';
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.text,
                                      controller: markaskz1Controller,
                                      focusNode: focusNode3,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Марка станции катодной защиты',
                                        hintText: 'Введите марку выпрямителя',
                                        prefixIcon: Icon(
                                          Icons.exposure,
                                          color: focusNode3.hasFocus ||
                                                  markaskz1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            markaskz1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode3.requestFocus();
                                          object.markaskz1 = value;
                                          object.markaskz1 =
                                              markaskz1Controller.text;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode4,
                                      onChanged: (String value) {
                                        setState(() {
                                          object.sostojanieskz1 = value;
                                          object.sostojanieskz1 =
                                              sostojanieskz1Controller.text;
                                        });
                                        focusNode4.requestFocus();
                                        object.sostojanieskz1 = value;
                                      },
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelText: 'Состояние выпрямителя',
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.check_circle_outline_sharp,
                                          color: (focusNode4.hasFocus ||
                                                  sostojanieskz1Controller
                                                      .text.isNotEmpty)
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      items:
                                          _sostojanieskz1.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.sostojanieskz1,
                                    ),
                                    SizedBox(height: 10),
                                    Divider(thickness: 4),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.potencialskz1 = value;
                                      },
                                      controller: potencialskz1Controller,
                                      focusNode: focusNode5,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Защитный потенциал в СКЗ',
                                        hintText: 'Введите значение',
                                        helperText: 'В',
                                        prefixIcon: Icon(
                                          Icons.exposure,
                                          color: focusNode5.hasFocus ||
                                                  potencialskz1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            potencialskz1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode5.requestFocus();
                                          object.potencialskz1 = value;
                                          object.potencialskz1 =
                                              potencialskz1Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.naprrabskz1 = value;
                                            },
                                            validator: (String value) {
                                              if (value.isEmpty) {
                                                return 'введите значение';
                                              } else if (value.length > 6) {
                                                return 'Максимальная длина 6';
                                              } else {
                                                return null;
                                              }
                                            },
                                            controller: naprrabskz1Controller,
                                            focusNode: focusNode6,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uраб',
                                              hintText: 'Uраб',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.minimize_sharp,
                                                color: focusNode6.hasFocus ||
                                                        naprrabskz1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  naprrabskz1Controller.clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode6.requestFocus();
                                                object.naprrabskz1 = value;
                                                object.naprrabskz1 =
                                                    naprrabskz1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.naprmaxskz1 = value;
                                            },
                                            controller: naprmaxskz1Controller,
                                            focusNode: focusNode7,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Umax',
                                              hintText: 'Umax',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.maximize_sharp,
                                                color: focusNode7.hasFocus ||
                                                        naprmaxskz1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  naprmaxskz1Controller.clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode7.requestFocus();
                                                object.naprmaxskz1 = value;
                                                object.naprmaxskz1 =
                                                    naprmaxskz1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Запас по току: ${zapaspotokuskz1Controller.text}%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tokrabskz1 = value;
                                            },
                                            validator: (String value) {
                                              if (value.isEmpty) {
                                                return 'введите значение';
                                              } else if (value.length > 6) {
                                                return 'Максимальная длина 6';
                                              } else {
                                                return null;
                                              }
                                            },
                                            controller: tokrabskz1Controller,
                                            focusNode: focusNode8,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Iраб',
                                              hintText: 'Iраб',
                                              helperText: 'А',
                                              prefixIcon: Icon(
                                                Icons.minimize_sharp,
                                                color: focusNode8.hasFocus ||
                                                        tokrabskz1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  tokrabskz1Controller.clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode8.requestFocus();
                                                object.tokrabskz1 = value;
                                                object.tokrabskz1 =
                                                    tokrabskz1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tokmaxskz1 = value;
                                            },
                                            controller: tokmaxskz1Controller,
                                            focusNode: focusNode9,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Imax',
                                              hintText: 'Imax',
                                              helperText: 'A',
                                              prefixIcon: Icon(
                                                Icons.maximize_sharp,
                                                color: focusNode9.hasFocus ||
                                                        tokmaxskz1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  tokmaxskz1Controller.clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode9.requestFocus();
                                                zapaspotokuskz1();
                                                object.tokmaxskz1 = value;
                                                object.tokmaxskz1 =
                                                    tokmaxskz1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Расчётный ток: ${shunttokskz2Controller.text} А',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              shuntnaprskz1Controller.clear();
                                              shuntnaprskz2Controller.clear();
                                              shunttokskz1Controller.clear();
                                              shunttokskz2Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.shuntnaprskz1 = value;
                                            },
                                            controller: shuntnaprskz1Controller,
                                            focusNode: focusNode11,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uшунта',
                                              hintText: 'Uшунта',
                                              helperText: 'мВ',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode11.requestFocus();
                                                object.shuntnaprskz1 = value;
                                                object.shuntnaprskz1 =
                                                    shuntnaprskz1Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.shunttokskz1 = value;
                                            },
                                            controller: shunttokskz1Controller,
                                            focusNode: focusNode10,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Iшунта',
                                              hintText: 'Iшунта',
                                              helperText: 'А',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode10.requestFocus();
                                                object.shunttokskz1 = value;
                                                object.shunttokskz1 =
                                                    shunttokskz1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.shuntnaprskz2 = value;
                                            },
                                            controller: shuntnaprskz2Controller,
                                            focusNode: focusNode12,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uизм',
                                              hintText: 'Uизм',
                                              helperText: 'мВ',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode12.requestFocus();
                                                raschtok1();
                                                object.shuntnaprskz2 = value;
                                                object.shuntnaprskz2 =
                                                    shuntnaprskz2Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.soprotskz1 = value;
                                      },
                                      controller: soprotskz1Controller,
                                      focusNode: focusNode13,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Сопротивление цепи СКЗ',
                                        hintText: 'Введите значение',
                                        helperText: 'Ом',
                                        prefixIcon: Icon(
                                          Icons.add_box_sharp,
                                          color: focusNode12.hasFocus ||
                                                  soprotskz1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            soprotskz1();
                                          },
                                          child: Icon(
                                            Icons.calculate_sharp,
                                            color: Colors.green,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode13.requestFocus();
                                          object.soprotskz1 = value;
                                          object.soprotskz1 =
                                              soprotskz1Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      maxLength: 10,
                                      onFieldSubmitted: (String value) {
                                        object.schetelec1 = value;
                                      },
                                      controller: schetelec1Controller,
                                      focusNode: focusNode14,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Показания счётчика эл.энергии',
                                        hintText: 'Введите значение',
                                        helperText: 'кВтч',
                                        prefixIcon: Icon(
                                          Icons.watch_later_sharp,
                                          color: focusNode14.hasFocus ||
                                                  schetelec1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            schetelec1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode14.requestFocus();
                                          object.schetelec1 = value;
                                          object.schetelec1 =
                                              schetelec1Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 10,
                                      onFieldSubmitted: (String value) {
                                        object.schetnarab1 = value;
                                      },
                                      controller: schetnarab1Controller,
                                      focusNode: focusNode15,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Показания счётчика наработки',
                                        hintText: 'Введите значение',
                                        helperText: 'ч',
                                        prefixIcon: Icon(
                                          Icons.access_time_sharp,
                                          color: focusNode15.hasFocus ||
                                                  schetnarab1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            schetnarab1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode15.requestFocus();
                                          object.schetnarab1 = value;
                                          object.schetnarab1 =
                                              schetnarab1Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 10,
                                      onFieldSubmitted: (String value) {
                                        object.schetzasch1 = value;
                                      },
                                      controller: schetzasch1Controller,
                                      focusNode: focusNode16,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Показания счётчика защиты',
                                        hintText: 'Введите значение',
                                        helperText: 'ч',
                                        prefixIcon: Icon(
                                          Icons.timelapse_sharp,
                                          color: focusNode16.hasFocus ||
                                                  schetzasch1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            schetzasch1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode16.requestFocus();
                                          object.schetzasch1 = value;
                                          object.schetzasch1 =
                                              schetzasch1Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 1000,
                                      focusNode: focusNode17,
                                      onSaved: (value) {
                                        object.zamechskz1 = value;
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode17.requestFocus();
                                          object.zamechskz1 = value;
                                          object.zamechskz1 =
                                              zamechskz1Controller.text;
                                        });
                                      },
                                      controller: zamechskz1Controller,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Замечания',
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            zamechskz1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        prefixIcon: GestureDetector(
                                            onTap: () async {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageUkz()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imageskz1 = value;
                                                    if (_1formKey.currentState
                                                        .validate()) {
                                                      _1formKey.currentState
                                                          .save();
                                                      if (_imageskz1 != null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/flutter';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imageskz1
                                                            .copy(filePath);
                                                        object.fotoskz1 =
                                                            filePath;
                                                        print(
                                                            'сделали: ${object.fotoskz1.toString()}');
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(
                                              Icons.camera_alt_sharp,
                                              color: Colors.green,
                                            )),
                                        hintText: 'Дефекты, замечания и другое',
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      maxLines: 10,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1000),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 100,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ImageScreen(
                                                              imagePath: object
                                                                  .fotoskz1)),
                                                );
                                              },
                                              child: Center(
                                                child: object.fotoskz1 != null
                                                    ? Image.file(
                                                        File(object.fotoskz1),
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment.center,
                                                        width: 100,
                                                        height: 100,
                                                      )
                                                    : Text(
                                                        'Изображение отсутствует'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            VerticalDivider(thickness: 4),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 2, 12, 2),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 50,
                                      onFieldSubmitted: (String value) {
                                        object.markaskz2 = value;
                                      },
                                      keyboardType: TextInputType.text,
                                      controller: markaskz2Controller,
                                      focusNode: focusNode18,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Марка станции катодной защиты',
                                        hintText: 'Введите марку выпрямителя',
                                        prefixIcon: Icon(
                                          Icons.exposure,
                                          color: focusNode18.hasFocus ||
                                                  markaskz2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            markaskz2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode18.requestFocus();
                                          object.markaskz2 = value;
                                          object.markaskz2 =
                                              markaskz2Controller.text;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode19,
                                      onChanged: (String value) {
                                        setState(() {
                                          object.sostojanieskz2 = value;
                                          object.sostojanieskz2 =
                                              sostojanieskz2Controller.text;
                                        });
                                        focusNode19.requestFocus();
                                        object.sostojanieskz2 = value;
                                      },
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelText: 'Состояние выпрямителя',
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.check_circle_outline_sharp,
                                          color: (focusNode19.hasFocus ||
                                                  sostojanieskz2Controller
                                                      .text.isNotEmpty)
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      items:
                                          _sostojanieskz1.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.sostojanieskz2,
                                    ),
                                    SizedBox(height: 10),
                                    Divider(thickness: 4),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.potencialskz2 = value;
                                      },
                                      controller: potencialskz2Controller,
                                      focusNode: focusNode20,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Защитный потенциал в СКЗ',
                                        hintText: 'Введите значение',
                                        helperText: 'В',
                                        prefixIcon: Icon(
                                          Icons.exposure,
                                          color: focusNode20.hasFocus ||
                                                  potencialskz2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            potencialskz2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode20.requestFocus();
                                          object.potencialskz2 = value;
                                          object.potencialskz2 =
                                              potencialskz2Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.naprrabskz2 = value;
                                            },
                                            controller: naprrabskz2Controller,
                                            focusNode: focusNode21,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uраб',
                                              hintText: 'Uраб',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.minimize_sharp,
                                                color: focusNode21.hasFocus ||
                                                        naprrabskz2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  naprrabskz2Controller.clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode21.requestFocus();
                                                object.naprrabskz2 = value;
                                                object.naprrabskz2 =
                                                    naprrabskz2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.naprmaxskz2 = value;
                                            },
                                            controller: naprmaxskz2Controller,
                                            focusNode: focusNode22,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Umax',
                                              hintText: 'Umax',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.maximize_sharp,
                                                color: focusNode22.hasFocus ||
                                                        naprmaxskz2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  naprmaxskz2Controller.clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode22.requestFocus();
                                                object.naprmaxskz2 = value;
                                                object.naprmaxskz2 =
                                                    naprmaxskz2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Запас по току: ${zapaspotokuskz2Controller.text}%',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tokrabskz2 = value;
                                            },
                                            controller: tokrabskz2Controller,
                                            focusNode: focusNode23,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Iраб',
                                              hintText: 'Iраб',
                                              helperText: 'А',
                                              prefixIcon: Icon(
                                                Icons.minimize_sharp,
                                                color: focusNode23.hasFocus ||
                                                        tokrabskz2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  tokrabskz2Controller.clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode23.requestFocus();
                                                object.tokrabskz2 = value;
                                                object.tokrabskz2 =
                                                    tokrabskz2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tokmaxskz2 = value;
                                            },
                                            controller: tokmaxskz2Controller,
                                            focusNode: focusNode24,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Imax',
                                              hintText: 'Imax',
                                              helperText: 'A',
                                              prefixIcon: Icon(
                                                Icons.maximize_sharp,
                                                color: focusNode24.hasFocus ||
                                                        tokmaxskz2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  tokmaxskz2Controller.clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode24.requestFocus();
                                                zapaspotokuskz2();
                                                object.tokmaxskz2 = value;
                                                object.tokmaxskz2 =
                                                    tokmaxskz2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Расчётный ток: ${shunttokskz4Controller.text} А',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              shuntnaprskz3Controller.clear();
                                              shuntnaprskz4Controller.clear();
                                              shunttokskz3Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.shuntnaprskz3 = value;
                                            },
                                            controller: shuntnaprskz3Controller,
                                            focusNode: focusNode25,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uшунта',
                                              hintText: 'Uшунта',
                                              helperText: 'мВ',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode25.requestFocus();
                                                object.shuntnaprskz3 = value;
                                                object.shuntnaprskz3 =
                                                    shuntnaprskz3Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.shunttokskz3 = value;
                                            },
                                            controller: shunttokskz3Controller,
                                            focusNode: focusNode26,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Iшунта',
                                              hintText: 'Iшунта',
                                              helperText: 'А',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode26.requestFocus();
                                                object.shunttokskz3 = value;
                                                object.shunttokskz3 =
                                                    shunttokskz3Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.shuntnaprskz4 = value;
                                            },
                                            controller: shuntnaprskz4Controller,
                                            focusNode: focusNode27,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uизм',
                                              hintText: 'Uизм',
                                              helperText: 'мВ',
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode27.requestFocus();
                                                raschtok2();
                                                object.shuntnaprskz4 = value;
                                                object.shuntnaprskz4 =
                                                    shuntnaprskz4Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.soprotskz2 = value;
                                      },
                                      controller: soprotskz2Controller,
                                      focusNode: focusNode28,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Сопротивление цепи СКЗ',
                                        hintText: 'Введите значение',
                                        helperText: 'Ом',
                                        prefixIcon: Icon(
                                          Icons.add_box_sharp,
                                          color: focusNode28.hasFocus ||
                                                  soprotskz2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            soprotskz2();
                                          },
                                          child: Icon(
                                            Icons.calculate_sharp,
                                            color: Colors.green,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode28.requestFocus();
                                          object.soprotskz2 = value;
                                          object.soprotskz2 =
                                              soprotskz2Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      maxLength: 10,
                                      onFieldSubmitted: (String value) {
                                        object.schetelec2 = value;
                                      },
                                      controller: schetelec2Controller,
                                      focusNode: focusNode29,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Показания счётчика эл.энергии',
                                        hintText: 'Введите значение',
                                        helperText: 'кВтч',
                                        prefixIcon: Icon(
                                          Icons.watch_later_sharp,
                                          color: focusNode29.hasFocus ||
                                                  schetelec2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            schetelec2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode29.requestFocus();
                                          object.schetelec2 = value;
                                          object.schetelec2 =
                                              schetelec2Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 10,
                                      onFieldSubmitted: (String value) {
                                        object.schetnarab2 = value;
                                      },
                                      controller: schetnarab2Controller,
                                      focusNode: focusNode30,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Показания счётчика наработки',
                                        hintText: 'Введите значение',
                                        helperText: 'ч',
                                        prefixIcon: Icon(
                                          Icons.access_time_sharp,
                                          color: focusNode30.hasFocus ||
                                                  schetnarab2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            schetnarab2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode30.requestFocus();
                                          object.schetnarab2 = value;
                                          object.schetnarab2 =
                                              schetnarab2Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 10,
                                      onFieldSubmitted: (String value) {
                                        object.schetzasch2 = value;
                                      },
                                      controller: schetzasch2Controller,
                                      focusNode: focusNode31,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Показания счётчика защиты',
                                        hintText: 'Введите значение',
                                        helperText: 'ч',
                                        prefixIcon: Icon(
                                          Icons.timelapse_sharp,
                                          color: focusNode31.hasFocus ||
                                                  schetzasch2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            schetzasch2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode31.requestFocus();
                                          object.schetzasch2 = value;
                                          object.schetzasch2 =
                                              schetzasch2Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 1000,
                                      focusNode: focusNode32,
                                      onSaved: (value) {
                                        object.zamechskz2 = value;
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode32.requestFocus();
                                          object.zamechskz2 = value;
                                          object.zamechskz2 =
                                              zamechskz2Controller.text;
                                        });
                                      },
                                      controller: zamechskz2Controller,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Замечания',
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            zamechskz2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        prefixIcon: GestureDetector(
                                            onTap: () async {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageUkz()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imageskz2 = value;
                                                    if (_1formKey.currentState
                                                        .validate()) {
                                                      _1formKey.currentState
                                                          .save();
                                                      if (_imageskz2 != null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/ehz';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imageskz2
                                                            .copy(filePath);
                                                        object.fotoskz2 =
                                                            filePath;
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(
                                              Icons.camera_alt_sharp,
                                              color: Colors.green,
                                            )),
                                        hintText: 'Дефекты, замечания и другое',
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      maxLines: 10,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1000),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 100,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ImageScreen(
                                                              imagePath: object
                                                                  .fotoskz2)),
                                                );
                                              },
                                              child: Center(
                                                child: object.fotoskz2 != null
                                                    ? Image.file(
                                                        File(object.fotoskz2),
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment.center,
                                                        width: 100,
                                                        height: 100,
                                                      )
                                                    : Text(
                                                        'ИЗОБРАЖЕНИЕ ОТСУТСТВУЕТ',
                                                        style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm1(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _2formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'КОНТРОЛЬНО-ИЗМЕРИТЕЛЬНЫЙ ПУНКТ',
                            style: TextStyle(
                                fontSize: 22,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 2, 12, 2),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 50,
                                      onFieldSubmitted: (String value) {
                                        object.kipname1 = value;
                                      },
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return 'введите название';
                                        } else if (value.length > 50) {
                                          return 'Максимальная длина 50';
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.text,
                                      controller: kipname1Controller,
                                      focusNode: focusNode33,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Наименование (привязка к объекту) КИП №1',
                                        hintText: 'Введите наименование',
                                        prefixIcon: Icon(
                                          Icons.battery_4_bar_sharp,
                                          color: focusNode33.hasFocus ||
                                                  kipname1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            kipname1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode33.requestFocus();
                                          object.kipname1 = value;
                                          object.kipname1 =
                                              kipname1Controller.text;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode34,
                                      onChanged: (String value) {
                                        setState(() {
                                          object.sostojaniekip1 = value;
                                          object.sostojaniekip1 =
                                              sostojaniekip1Controller.text;
                                        });
                                        focusNode34.requestFocus();
                                        object.sostojaniekip1 = value;
                                      },
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelText: 'Состояние КИП №1',
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.check_circle_outline_sharp,
                                          color: (focusNode34.hasFocus ||
                                                  sostojaniekip1Controller
                                                      .text.isNotEmpty)
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      items:
                                          _sostojanieskz1.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.sostojaniekip1,
                                    ),
                                    SizedBox(height: 10),
                                    Divider(thickness: 4),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.peremsost1 = value;
                                      },
                                      controller: peremsost1Controller,
                                      focusNode: focusNode36,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Переменная составляющая в КИП №1',
                                        hintText: 'Введите значение',
                                        helperText: 'В',
                                        prefixIcon: Icon(
                                          Icons.flash_on_sharp,
                                          color: focusNode36.hasFocus ||
                                                  peremsost1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            peremsost1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode36.requestFocus();
                                          object.peremsost1 = value;
                                          object.peremsost1 =
                                              peremsost1Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdvklsum1 = value;
                                            },
                                            controller:
                                                potenctdvklsum1Controller,
                                            focusNode: focusNode35,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uсум(вкл)',
                                              hintText: 'Uсум(вкл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons
                                                    .radio_button_checked_sharp,
                                                color: focusNode35.hasFocus ||
                                                        potenctdvklsum1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdvklsum1Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode35.requestFocus();
                                                object.potenctdvklsum1 = value;
                                                object.potenctdvklsum1 =
                                                    potenctdvklsum1Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdvklpol1 = value;
                                            },
                                            controller:
                                                potenctdvklpol1Controller,
                                            focusNode: focusNode37,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uпол(вкл)',
                                              hintText: 'Uпол(вкл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.trip_origin_sharp,
                                                color: focusNode37.hasFocus ||
                                                        potenctdvklpol1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdvklpol1Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode37.requestFocus();
                                                object.potenctdvklpol1 = value;
                                                object.potenctdvklpol1 =
                                                    potenctdvklpol1Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdotklsum1 = value;
                                            },
                                            controller:
                                                potenctdotklsum1Controller,
                                            focusNode: focusNode41,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uсум(откл)',
                                              hintText: 'Uсум(откл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.adjust_sharp,
                                                color: focusNode41.hasFocus ||
                                                        potenctdotklsum1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdotklsum1Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode41.requestFocus();
                                                object.potenctdotklsum1 = value;
                                                object.potenctdotklsum1 =
                                                    potenctdotklsum1Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdotklpol1 = value;
                                            },
                                            controller:
                                                potenctdotklpol1Controller,
                                            focusNode: focusNode38,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uпол(откл)',
                                              hintText: 'Uпол(откл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.radio_button_off_sharp,
                                                color: focusNode38.hasFocus ||
                                                        potenctdotklpol1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdotklpol1Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode38.requestFocus();
                                                object.potenctdotklpol1 = value;
                                                object.potenctdotklpol1 =
                                                    potenctdotklpol1Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.datchkorr1 = value;
                                      },
                                      controller: datchkorr1Controller,
                                      focusNode: focusNode39,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Датчик коррозии',
                                        hintText: 'Введите значение',
                                        helperText: '',
                                        prefixIcon: Icon(
                                          Icons.gradient_sharp,
                                          color: focusNode39.hasFocus ||
                                                  datchkorr1Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            datchkorr1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode39.requestFocus();
                                          object.datchkorr1 = value;
                                          object.datchkorr1 =
                                              datchkorr1Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 1000,
                                      focusNode: focusNode40,
                                      onSaved: (value) {
                                        object.zamechkip1 = value;
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode40.requestFocus();
                                          object.zamechkip1 = value;
                                          object.zamechkip1 =
                                              zamechkip1Controller.text;
                                        });
                                      },
                                      controller: zamechkip1Controller,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Замечания',
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            zamechkip1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        prefixIcon: GestureDetector(
                                            onTap: () async {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageUkz()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imagekip1 = value;
                                                    if (_2formKey.currentState
                                                        .validate()) {
                                                      _2formKey.currentState
                                                          .save();
                                                      if (_imagekip1 != null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/ehz';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imagekip1
                                                            .copy(filePath);
                                                        object.fotokip1 =
                                                            filePath;
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(
                                              Icons.camera_alt_sharp,
                                              color: Colors.green,
                                            )),
                                        hintText: 'Дефекты, замечания и другое',
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      maxLines: 10,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1000),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 100,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ImageScreen(
                                                              imagePath: object
                                                                  .fotokip1)),
                                                );
                                              },
                                              child: Center(
                                                child: object.fotokip1 != null
                                                    ? Image.file(
                                                        File(object.fotokip1),
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment.center,
                                                        width: 100,
                                                        height: 100,
                                                      )
                                                    : Text(
                                                        'ИЗОБРАЖЕНИЕ ОТСУТСТВУЕТ',
                                                        style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            VerticalDivider(thickness: 4),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 2, 12, 2),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 50,
                                      onFieldSubmitted: (String value) {
                                        object.kipname2 = value;
                                      },
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return 'введите название';
                                        } else if (value.length > 50) {
                                          return 'Максимальная длина 50';
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.text,
                                      controller: kipname2Controller,
                                      focusNode: focusNode42,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Наименование (привязка к объекту) КИП №2',
                                        hintText: 'Введите наименование',
                                        prefixIcon: Icon(
                                          Icons.battery_4_bar_sharp,
                                          color: focusNode42.hasFocus ||
                                                  kipname2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            kipname2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode42.requestFocus();
                                          object.kipname2 = value;
                                          object.kipname2 =
                                              kipname2Controller.text;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode43,
                                      onChanged: (String value) {
                                        setState(() {
                                          object.sostojaniekip2 = value;
                                          object.sostojaniekip2 =
                                              sostojaniekip2Controller.text;
                                        });
                                        focusNode43.requestFocus();
                                        object.sostojaniekip2 = value;
                                      },
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelText: 'Состояние КИП №2',
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.check_circle_outline_sharp,
                                          color: (focusNode43.hasFocus ||
                                                  sostojaniekip2Controller
                                                      .text.isNotEmpty)
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      items:
                                          _sostojanieskz1.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.sostojaniekip2,
                                    ),
                                    SizedBox(height: 10),
                                    Divider(thickness: 4),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.peremsost2 = value;
                                      },
                                      controller: peremsost2Controller,
                                      focusNode: focusNode44,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Переменная составляющая в КИП №2',
                                        hintText: 'Введите значение',
                                        helperText: 'В',
                                        prefixIcon: Icon(
                                          Icons.flash_on_sharp,
                                          color: focusNode44.hasFocus ||
                                                  peremsost2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            peremsost2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode44.requestFocus();
                                          object.peremsost2 = value;
                                          object.peremsost2 =
                                              peremsost2Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdvklsum2 = value;
                                            },
                                            controller:
                                                potenctdvklsum2Controller,
                                            focusNode: focusNode45,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uсум(вкл)',
                                              hintText: 'Uсум(вкл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons
                                                    .radio_button_checked_sharp,
                                                color: focusNode45.hasFocus ||
                                                        potenctdvklsum2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdvklsum2Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode45.requestFocus();
                                                object.potenctdvklsum2 = value;
                                                object.potenctdvklsum2 =
                                                    potenctdvklsum2Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdvklpol2 = value;
                                            },
                                            controller:
                                                potenctdvklpol2Controller,
                                            focusNode: focusNode46,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uпол(вкл)',
                                              hintText: 'Uпол(вкл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.trip_origin_sharp,
                                                color: focusNode46.hasFocus ||
                                                        potenctdvklpol2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdvklpol2Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode46.requestFocus();
                                                object.potenctdvklpol2 = value;
                                                object.potenctdvklpol2 =
                                                    potenctdvklpol2Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdotklsum2 = value;
                                            },
                                            controller:
                                                potenctdotklsum2Controller,
                                            focusNode: focusNode47,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uсум(откл)',
                                              hintText: 'Uсум(откл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.adjust_sharp,
                                                color: focusNode47.hasFocus ||
                                                        potenctdotklsum2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdotklsum2Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode47.requestFocus();
                                                object.potenctdotklsum2 = value;
                                                object.potenctdotklsum2 =
                                                    potenctdotklsum2Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdotklpol2 = value;
                                            },
                                            controller:
                                                potenctdotklpol2Controller,
                                            focusNode: focusNode48,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uпол(откл)',
                                              hintText: 'Uпол(откл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.radio_button_off_sharp,
                                                color: focusNode48.hasFocus ||
                                                        potenctdotklpol2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdotklpol2Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode48.requestFocus();
                                                object.potenctdotklpol2 = value;
                                                object.potenctdotklpol2 =
                                                    potenctdotklpol2Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.datchkorr2 = value;
                                      },
                                      controller: datchkorr2Controller,
                                      focusNode: focusNode49,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Датчик коррозии',
                                        hintText: 'Введите значение',
                                        helperText: '',
                                        prefixIcon: Icon(
                                          Icons.gradient_sharp,
                                          color: focusNode49.hasFocus ||
                                                  datchkorr2Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            datchkorr2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode49.requestFocus();
                                          object.datchkorr2 = value;
                                          object.datchkorr2 =
                                              datchkorr2Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 1000,
                                      focusNode: focusNode50,
                                      onSaved: (value) {
                                        object.zamechkip2 = value;
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode50.requestFocus();
                                          object.zamechkip2 = value;
                                          object.zamechkip2 =
                                              zamechkip2Controller.text;
                                        });
                                      },
                                      controller: zamechkip2Controller,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Замечания',
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            zamechkip2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        prefixIcon: GestureDetector(
                                            onTap: () async {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageUkz()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imagekip2 = value;
                                                    if (_2formKey.currentState
                                                        .validate()) {
                                                      _2formKey.currentState
                                                          .save();
                                                      if (_imagekip2 != null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/ehz';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imagekip2
                                                            .copy(filePath);
                                                        object.fotokip2 =
                                                            filePath;
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(
                                              Icons.camera_alt_sharp,
                                              color: Colors.green,
                                            )),
                                        hintText: 'Дефекты, замечания и другое',
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      maxLines: 10,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1000),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 100,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ImageScreen(
                                                              imagePath: object
                                                                  .fotokip2)),
                                                );
                                              },
                                              child: Center(
                                                child: object.fotokip2 != null
                                                    ? Image.file(
                                                        File(object.fotokip2),
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment.center,
                                                        width: 100,
                                                        height: 100,
                                                      )
                                                    : Text(
                                                        'ИЗОБРАЖЕНИЕ ОТСУТСТВУЕТ',
                                                        style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            VerticalDivider(thickness: 4),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 2, 12, 2),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      maxLength: 50,
                                      onFieldSubmitted: (String value) {
                                        object.kipname3 = value;
                                      },
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return 'введите название';
                                        } else if (value.length > 50) {
                                          return 'Максимальная длина 50';
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.text,
                                      controller: kipname3Controller,
                                      focusNode: focusNode51,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Наименование (привязка к объекту) КИП №3',
                                        hintText: 'Введите наименование',
                                        prefixIcon: Icon(
                                          Icons.battery_4_bar_sharp,
                                          color: focusNode50.hasFocus ||
                                                  kipname3Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            kipname3Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode50.requestFocus();
                                          object.kipname3 = value;
                                          object.kipname3 =
                                              kipname3Controller.text;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode51,
                                      onChanged: (String value) {
                                        setState(() {
                                          object.sostojaniekip3 = value;
                                          object.sostojaniekip3 =
                                              sostojaniekip3Controller.text;
                                        });
                                        focusNode51.requestFocus();
                                        object.sostojaniekip3 = value;
                                      },
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelText: 'Состояние КИП №3',
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.check_circle_outline_sharp,
                                          color: (focusNode51.hasFocus ||
                                                  sostojaniekip3Controller
                                                      .text.isNotEmpty)
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      items:
                                          _sostojanieskz1.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.sostojaniekip3,
                                    ),
                                    SizedBox(height: 10),
                                    Divider(thickness: 4),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.peremsost3 = value;
                                      },
                                      controller: peremsost3Controller,
                                      focusNode: focusNode52,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Переменная составляющая в КИП №3',
                                        hintText: 'Введите значение',
                                        helperText: 'В',
                                        prefixIcon: Icon(
                                          Icons.flash_on_sharp,
                                          color: focusNode52.hasFocus ||
                                                  peremsost3Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            peremsost3Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode52.requestFocus();
                                          object.peremsost3 = value;
                                          object.peremsost3 =
                                              peremsost3Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdvklsum3 = value;
                                            },
                                            controller:
                                                potenctdvklsum3Controller,
                                            focusNode: focusNode53,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uсум(вкл)',
                                              hintText: 'Uсум(вкл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons
                                                    .radio_button_checked_sharp,
                                                color: focusNode53.hasFocus ||
                                                        potenctdvklsum3Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdvklsum3Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode53.requestFocus();
                                                object.potenctdvklsum3 = value;
                                                object.potenctdvklsum3 =
                                                    potenctdvklsum3Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdvklpol3 = value;
                                            },
                                            controller:
                                                potenctdvklpol3Controller,
                                            focusNode: focusNode54,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uпол(вкл)',
                                              hintText: 'Uпол(вкл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.trip_origin_sharp,
                                                color: focusNode54.hasFocus ||
                                                        potenctdvklpol3Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdvklpol3Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode54.requestFocus();
                                                object.potenctdvklpol3 = value;
                                                object.potenctdvklpol3 =
                                                    potenctdvklpol3Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdotklsum3 = value;
                                            },
                                            controller:
                                                potenctdotklsum3Controller,
                                            focusNode: focusNode55,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uсум(откл)',
                                              hintText: 'Uсум(откл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.adjust_sharp,
                                                color: focusNode55.hasFocus ||
                                                        potenctdotklsum3Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdotklsum3Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode55.requestFocus();
                                                object.potenctdotklsum3 = value;
                                                object.potenctdotklsum3 =
                                                    potenctdotklsum3Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdotklpol3 = value;
                                            },
                                            controller:
                                                potenctdotklpol3Controller,
                                            focusNode: focusNode56,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uпол(откл)',
                                              hintText: 'Uпол(откл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.radio_button_off_sharp,
                                                color: focusNode56.hasFocus ||
                                                        potenctdotklpol3Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdotklpol3Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode56.requestFocus();
                                                object.potenctdotklpol3 = value;
                                                object.potenctdotklpol3 =
                                                    potenctdotklpol3Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.datchkorr3 = value;
                                      },
                                      controller: datchkorr3Controller,
                                      focusNode: focusNode57,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Датчик коррозии',
                                        hintText: 'Введите значение',
                                        helperText: '',
                                        prefixIcon: Icon(
                                          Icons.gradient_sharp,
                                          color: focusNode57.hasFocus ||
                                                  datchkorr3Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            datchkorr3Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode57.requestFocus();
                                          object.datchkorr3 = value;
                                          object.datchkorr3 =
                                              datchkorr3Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 1000,
                                      focusNode: focusNode58,
                                      onSaved: (value) {
                                        object.zamechkip3 = value;
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode58.requestFocus();
                                          object.zamechkip3 = value;
                                          object.zamechkip3 =
                                              zamechkip3Controller.text;
                                        });
                                      },
                                      controller: zamechkip3Controller,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Замечания',
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            zamechkip3Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        prefixIcon: GestureDetector(
                                            onTap: () async {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageUkz()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imagekip3 = value;
                                                    if (_2formKey.currentState
                                                        .validate()) {
                                                      _2formKey.currentState
                                                          .save();
                                                      if (_imagekip3 != null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/ehz';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imagekip3
                                                            .copy(filePath);
                                                        object.fotokip3 =
                                                            filePath;
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(
                                              Icons.camera_alt_sharp,
                                              color: Colors.green,
                                            )),
                                        hintText: 'Дефекты, замечания и другое',
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      maxLines: 10,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1000),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 100,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ImageScreen(
                                                              imagePath: object
                                                                  .fotokip3)),
                                                );
                                              },
                                              child: Center(
                                                child: object.fotokip3 != null
                                                    ? Image.file(
                                                        File(object.fotokip3),
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment.center,
                                                        width: 100,
                                                        height: 100,
                                                      )
                                                    : Text(
                                                        'ИЗОБРАЖЕНИЕ ОТСУТСТВУЕТ',
                                                        style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 2, 12, 2),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      maxLength: 50,
                                      onFieldSubmitted: (String value) {
                                        object.kipname4 = value;
                                      },
                                      validator: (String value) {
                                        if (value.isEmpty) {
                                          return 'введите название';
                                        } else if (value.length > 50) {
                                          return 'Максимальная длина 50';
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.text,
                                      controller: kipname4Controller,
                                      focusNode: focusNode59,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Наименование (привязка к объекту) КИП №4',
                                        hintText: 'Введите наименование',
                                        prefixIcon: Icon(
                                          Icons.battery_4_bar_sharp,
                                          color: focusNode59.hasFocus ||
                                                  kipname4Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            kipname4Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode59.requestFocus();
                                          object.kipname4 = value;
                                          object.kipname4 =
                                              kipname4Controller.text;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode60,
                                      onChanged: (String value) {
                                        setState(() {
                                          object.sostojaniekip4 = value;
                                          object.sostojaniekip4 =
                                              sostojaniekip4Controller.text;
                                        });
                                        focusNode60.requestFocus();
                                        object.sostojaniekip4 = value;
                                      },
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelText: 'Состояние КИП №4',
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.check_circle_outline_sharp,
                                          color: (focusNode60.hasFocus ||
                                                  sostojaniekip4Controller
                                                      .text.isNotEmpty)
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      items:
                                          _sostojanieskz1.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.sostojaniekip4,
                                    ),
                                    SizedBox(height: 10),
                                    Divider(thickness: 4),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.peremsost4 = value;
                                      },
                                      controller: peremsost4Controller,
                                      focusNode: focusNode61,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Переменная составляющая в КИП №4',
                                        hintText: 'Введите значение',
                                        helperText: 'В',
                                        prefixIcon: Icon(
                                          Icons.flash_on_sharp,
                                          color: focusNode61.hasFocus ||
                                                  peremsost4Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            peremsost4Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode61.requestFocus();
                                          object.peremsost4 = value;
                                          object.peremsost4 =
                                              peremsost4Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdvklsum4 = value;
                                            },
                                            controller:
                                                potenctdvklsum4Controller,
                                            focusNode: focusNode62,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uсум(вкл)',
                                              hintText: 'Uсум(вкл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons
                                                    .radio_button_checked_sharp,
                                                color: focusNode62.hasFocus ||
                                                        potenctdvklsum4Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdvklsum4Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode62.requestFocus();
                                                object.potenctdvklsum4 = value;
                                                object.potenctdvklsum4 =
                                                    potenctdvklsum4Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdvklpol4 = value;
                                            },
                                            controller:
                                                potenctdvklpol4Controller,
                                            focusNode: focusNode63,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uпол(вкл)',
                                              hintText: 'Uпол(вкл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.trip_origin_sharp,
                                                color: focusNode63.hasFocus ||
                                                        potenctdvklpol4Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdvklpol4Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode63.requestFocus();
                                                object.potenctdvklpol4 = value;
                                                object.potenctdvklpol4 =
                                                    potenctdvklpol4Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdotklsum4 = value;
                                            },
                                            controller:
                                                potenctdotklsum4Controller,
                                            focusNode: focusNode64,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uсум(откл)',
                                              hintText: 'Uсум(откл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.adjust_sharp,
                                                color: focusNode64.hasFocus ||
                                                        potenctdotklsum4Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdotklsum4Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode64.requestFocus();
                                                object.potenctdotklsum4 = value;
                                                object.potenctdotklsum4 =
                                                    potenctdotklsum4Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.potenctdotklpol4 = value;
                                            },
                                            controller:
                                                potenctdotklpol4Controller,
                                            focusNode: focusNode65,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'Uпол(откл)',
                                              hintText: 'Uпол(откл)',
                                              helperText: 'В',
                                              prefixIcon: Icon(
                                                Icons.radio_button_off_sharp,
                                                color: focusNode65.hasFocus ||
                                                        potenctdotklpol4Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  potenctdotklpol4Controller
                                                      .clear();
                                                },
                                                child: Icon(
                                                  Icons.delete_outline,
                                                  color: Color.fromRGBO(
                                                      187, 30, 16, 1.0),
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode65.requestFocus();
                                                object.potenctdotklpol4 = value;
                                                object.potenctdotklpol4 =
                                                    potenctdotklpol4Controller
                                                        .text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 6,
                                      onFieldSubmitted: (String value) {
                                        object.datchkorr4 = value;
                                      },
                                      controller: datchkorr4Controller,
                                      focusNode: focusNode66,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Датчик коррозии',
                                        hintText: 'Введите значение',
                                        helperText: '',
                                        prefixIcon: Icon(
                                          Icons.gradient_sharp,
                                          color: focusNode66.hasFocus ||
                                                  datchkorr4Controller
                                                      .text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            datchkorr4Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode66.requestFocus();
                                          object.datchkorr4 = value;
                                          object.datchkorr4 =
                                              datchkorr4Controller.text;
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                    ),
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 1000,
                                      focusNode: focusNode67,
                                      onSaved: (value) {
                                        object.zamechkip4 = value;
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode67.requestFocus();
                                          object.zamechkip4 = value;
                                          object.zamechkip4 =
                                              zamechkip4Controller.text;
                                        });
                                      },
                                      controller: zamechkip4Controller,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Замечания',
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            zamechkip4Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        prefixIcon: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageUkz()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imagekip4 = value;
                                                    if (_2formKey.currentState
                                                        .validate()) {
                                                      _2formKey.currentState
                                                          .save();
                                                      if (_imagekip4 != null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/ehz';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imagekip4
                                                            .copy(filePath);
                                                        object.fotokip4 =
                                                            filePath;
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(
                                              Icons.camera_alt_sharp,
                                              color: Colors.green,
                                            )),
                                        hintText: 'Дефекты, замечания и другое',
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      maxLines: 10,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1000),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 100,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ImageScreen(
                                                              imagePath: object
                                                                  .fotokip4)),
                                                );
                                              },
                                              child: Center(
                                                child: object.fotokip4 != null
                                                    ? Image.file(
                                                        File(object.fotokip4),
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment.center,
                                                        width: 100,
                                                        height: 100,
                                                      )
                                                    : Text(
                                                        'ИЗОБРАЖЕНИЕ ОТСУТСТВУЕТ',
                                                        style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm2(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _3formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'БЛОК СОВМЕСТНОЙ ЗАЩИТЫ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        //                       ListView(
                        // scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 2, 12, 2),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 50,
                                      onFieldSubmitted: (String value) {
                                        object.bdr1 = value;
                                      },
                                      keyboardType: TextInputType.text,
                                      controller: bdr1Controller,
                                      focusNode: focusNode68,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Наименование (привязка к объекту) БДР №1',
                                        hintText: 'Введите наименование',
                                        prefixIcon: Icon(
                                          Icons.settings_input_composite_sharp,
                                          color: focusNode68.hasFocus ||
                                                  bdr1Controller.text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            bdr1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode68.requestFocus();
                                          object.bdr1 = value;
                                          object.bdr1 = bdr1Controller.text;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode69,
                                      onChanged: (String value) {
                                        setState(() {
                                          object.sostojaniebdr1 = value;
                                          object.sostojaniebdr1 =
                                              sostojaniebdr1Controller.text;
                                        });
                                        focusNode69.requestFocus();
                                        object.sostojaniebdr1 = value;
                                      },
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelText: 'Состояние БДР №1',
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.check_circle_outline_sharp,
                                          color: (focusNode69.hasFocus ||
                                                  sostojaniebdr1Controller
                                                      .text.isNotEmpty)
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      items:
                                          _sostojanieskz1.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.sostojaniebdr1,
                                    ),
                                    SizedBox(height: 10),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Общий ток: ${tok5bdr1Controller.text}А',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              tok1bdr1Controller.clear();
                                              tok2bdr1Controller.clear();
                                              tok3bdr1Controller.clear();
                                              tok4bdr1Controller.clear();
                                              tok5bdr1Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tok1bdr1 = value;
                                            },
                                            controller: tok1bdr1Controller,
                                            focusNode: focusNode70,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'I(1 канала)',
                                              hintText: 'I(1 канала)',
                                              helperText: 'А',
                                              prefixIcon: Icon(
                                                Icons.flash_on_sharp,
                                                color: focusNode70.hasFocus ||
                                                        tok1bdr1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode70.requestFocus();
                                                sumtokbdr1();
                                                object.tok1bdr1 = value;
                                                object.tok1bdr1 =
                                                    tok1bdr1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tok2bdr1 = value;
                                            },
                                            controller: tok2bdr1Controller,
                                            focusNode: focusNode71,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'I(2 канала)',
                                              hintText: 'I(2 канала)',
                                              helperText: 'А',
                                              prefixIcon: Icon(
                                                Icons.flash_on_sharp,
                                                color: focusNode71.hasFocus ||
                                                        tok2bdr1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode71.requestFocus();
                                                sumtokbdr1();
                                                object.tok2bdr1 = value;
                                                object.tok2bdr1 =
                                                    tok2bdr1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tok3bdr1 = value;
                                            },
                                            controller: tok3bdr1Controller,
                                            focusNode: focusNode72,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'I(3 канала)',
                                              hintText: 'I(3 канала)',
                                              helperText: 'А',
                                              prefixIcon: Icon(
                                                Icons.flash_on_sharp,
                                                color: focusNode72.hasFocus ||
                                                        tok3bdr1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode72.requestFocus();
                                                sumtokbdr1();
                                                object.tok3bdr1 = value;
                                                object.tok3bdr1 =
                                                    tok3bdr1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tok4bdr1 = value;
                                            },
                                            controller: tok4bdr1Controller,
                                            focusNode: focusNode73,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'I(4 канала)',
                                              hintText: 'I(4 канала)',
                                              helperText: 'А',
                                              prefixIcon: Icon(
                                                Icons.flash_on_sharp,
                                                color: focusNode73.hasFocus ||
                                                        tok4bdr1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode73.requestFocus();
                                                sumtokbdr1();
                                                object.tok4bdr1 = value;
                                                object.tok4bdr1 =
                                                    tok4bdr1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Сопротивление каналов БДР',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              soprot1bdr1Controller.clear();
                                              soprot2bdr1Controller.clear();
                                              soprot3bdr1Controller.clear();
                                              soprot4bdr1Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.soprot1bdr1 = value;
                                            },
                                            controller: soprot1bdr1Controller,
                                            focusNode: focusNode74,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'R(1 канала)',
                                              hintText: 'R(1 канала)',
                                              helperText: 'Ом',
                                              prefixIcon: Icon(
                                                Icons.view_week_sharp,
                                                color: focusNode74.hasFocus ||
                                                        soprot1bdr1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode74.requestFocus();
                                                object.soprot1bdr1 = value;
                                                object.soprot1bdr1 =
                                                    soprot1bdr1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.soprot2bdr1 = value;
                                            },
                                            controller: soprot2bdr1Controller,
                                            focusNode: focusNode75,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'R(2 канала)',
                                              hintText: 'R(2 канала)',
                                              helperText: 'Ом',
                                              prefixIcon: Icon(
                                                Icons.view_week_sharp,
                                                color: focusNode75.hasFocus ||
                                                        soprot2bdr1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode75.requestFocus();
                                                object.soprot2bdr1 = value;
                                                object.soprot2bdr1 =
                                                    soprot2bdr1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.soprot3bdr1 = value;
                                            },
                                            controller: soprot3bdr1Controller,
                                            focusNode: focusNode76,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'R(3 канала)',
                                              hintText: 'R(3 канала)',
                                              helperText: 'Ом',
                                              prefixIcon: Icon(
                                                Icons.view_week_sharp,
                                                color: focusNode76.hasFocus ||
                                                        soprot3bdr1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode76.requestFocus();
                                                object.soprot3bdr1 = value;
                                                object.soprot3bdr1 =
                                                    soprot3bdr1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.soprot4bdr1 = value;
                                            },
                                            controller: soprot4bdr1Controller,
                                            focusNode: focusNode77,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'R(4 канала)',
                                              hintText: 'R(4 канала)',
                                              helperText: 'Ом',
                                              prefixIcon: Icon(
                                                Icons.view_week_sharp,
                                                color: focusNode77.hasFocus ||
                                                        soprot4bdr1Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode77.requestFocus();
                                                object.soprot4bdr1 = value;
                                                object.soprot4bdr1 =
                                                    soprot4bdr1Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    TextFormField(
                                      maxLength: 1000,
                                      focusNode: focusNode78,
                                      onSaved: (value) {
                                        object.zamechbdr1 = value;
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode78.requestFocus();
                                          object.zamechbdr1 = value;
                                          object.zamechbdr1 =
                                              zamechbdr1Controller.text;
                                        });
                                      },
                                      controller: zamechbdr1Controller,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Замечания',
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            zamechbdr1Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        prefixIcon: GestureDetector(
                                            onTap: () async {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageUkz()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imagebdr1 = value;
                                                    if (_3formKey.currentState
                                                        .validate()) {
                                                      _3formKey.currentState
                                                          .save();
                                                      if (_imagebdr1 != null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/ehz';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imagebdr1
                                                            .copy(filePath);
                                                        object.fotobdr1 =
                                                            filePath;
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(
                                              Icons.camera_alt_sharp,
                                              color: Colors.green,
                                            )),
                                        hintText: 'Дефекты, замечания и другое',
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      maxLines: 10,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1000),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 100,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ImageScreen(
                                                              imagePath: object
                                                                  .fotobdr1)),
                                                );
                                              },
                                              child: Center(
                                                child: object.fotobdr1 != null
                                                    ? Image.file(
                                                        File(object.fotobdr1),
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment.center,
                                                        width: 100,
                                                        height: 100,
                                                      )
                                                    : Text(
                                                        'ИЗОБРАЖЕНИЕ ОТСУТСТВУЕТ',
                                                        style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // VerticalDivider(thickness: 4),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 2, 12, 2),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10),
                                    TextFormField(
                                      maxLength: 50,
                                      onFieldSubmitted: (String value) {
                                        object.bdr2 = value;
                                      },
                                      keyboardType: TextInputType.text,
                                      controller: bdr2Controller,
                                      focusNode: focusNode79,
                                      style: textStyle,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText:
                                            'Наименование (привязка к объекту) БДР №2',
                                        hintText: 'Введите наименование',
                                        prefixIcon: Icon(
                                          Icons.settings_input_composite_sharp,
                                          color: focusNode79.hasFocus ||
                                                  bdr2Controller.text.isNotEmpty
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            bdr2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode79.requestFocus();
                                          object.bdr2 = value;
                                          object.bdr2 = bdr2Controller.text;
                                        });
                                      },
                                    ),
                                    SizedBox(height: 10),
                                    DropdownButtonFormField(
                                      isExpanded: true,
                                      focusNode: focusNode80,
                                      onChanged: (String value) {
                                        setState(() {
                                          object.sostojaniebdr2 = value;
                                          object.sostojaniebdr2 =
                                              sostojaniebdr2Controller.text;
                                        });
                                        focusNode80.requestFocus();
                                        object.sostojaniebdr2 = value;
                                      },
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelText: 'Состояние БДР №2',
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.check_circle_outline_sharp,
                                          color: (focusNode80.hasFocus ||
                                                  sostojaniebdr2Controller
                                                      .text.isNotEmpty)
                                              ? Theme.of(context).primaryColor
                                              : Colors.grey,
                                          size: 32,
                                        ),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      items:
                                          _sostojanieskz1.map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      style: textStyle,
                                      value: object.sostojaniebdr2,
                                    ),
                                    SizedBox(height: 10),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Общий ток: ${tok5bdr2Controller.text}А',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              tok1bdr2Controller.clear();
                                              tok2bdr2Controller.clear();
                                              tok3bdr2Controller.clear();
                                              tok4bdr2Controller.clear();
                                              tok5bdr2Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tok1bdr2 = value;
                                            },
                                            controller: tok1bdr2Controller,
                                            focusNode: focusNode81,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'I(1 канала)',
                                              hintText: 'I(1 канала)',
                                              helperText: 'А',
                                              prefixIcon: Icon(
                                                Icons.flash_on_sharp,
                                                color: focusNode81.hasFocus ||
                                                        tok1bdr2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode81.requestFocus();
                                                sumtokbdr2();
                                                object.tok1bdr2 = value;
                                                object.tok1bdr2 =
                                                    tok1bdr2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tok2bdr2 = value;
                                            },
                                            controller: tok2bdr2Controller,
                                            focusNode: focusNode82,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'I(2 канала)',
                                              hintText: 'I(2 канала)',
                                              helperText: 'А',
                                              prefixIcon: Icon(
                                                Icons.minimize_sharp,
                                                color: focusNode82.hasFocus ||
                                                        tok2bdr2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode82.requestFocus();
                                                sumtokbdr2();
                                                object.tok2bdr2 = value;
                                                object.tok2bdr2 =
                                                    tok2bdr2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tok3bdr2 = value;
                                            },
                                            controller: tok3bdr2Controller,
                                            focusNode: focusNode83,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'I(3 канала)',
                                              hintText: 'I(3 канала)',
                                              helperText: 'А',
                                              prefixIcon: Icon(
                                                Icons.minimize_sharp,
                                                color: focusNode83.hasFocus ||
                                                        tok3bdr2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode83.requestFocus();
                                                sumtokbdr2();
                                                object.tok3bdr2 = value;
                                                object.tok3bdr2 =
                                                    tok3bdr2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.tok4bdr2 = value;
                                            },
                                            controller: tok4bdr2Controller,
                                            focusNode: focusNode84,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'I(4 канала)',
                                              hintText: 'I(4 канала)',
                                              helperText: 'А',
                                              prefixIcon: Icon(
                                                Icons.flash_on_sharp,
                                                color: focusNode84.hasFocus ||
                                                        tok4bdr2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode84.requestFocus();
                                                sumtokbdr2();
                                                object.tok4bdr2 = value;
                                                object.tok4bdr2 =
                                                    tok4bdr2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    SizedBox(height: 5),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Сопротивление каналов БДР',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              soprot1bdr2Controller.clear();
                                              soprot2bdr2Controller.clear();
                                              soprot3bdr2Controller.clear();
                                              soprot4bdr2Controller.clear();
                                            },
                                            child: Icon(
                                              Icons.delete_outline,
                                              color: Color.fromRGBO(
                                                  187, 30, 16, 1.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.soprot1bdr2 = value;
                                            },
                                            controller: soprot1bdr2Controller,
                                            focusNode: focusNode85,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'R(1 канала)',
                                              hintText: 'R(1 канала)',
                                              helperText: 'Ом',
                                              prefixIcon: Icon(
                                                Icons.view_week_sharp,
                                                color: focusNode85.hasFocus ||
                                                        soprot1bdr2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode85.requestFocus();
                                                object.soprot1bdr2 = value;
                                                object.soprot1bdr2 =
                                                    soprot1bdr2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.soprot2bdr2 = value;
                                            },
                                            controller: soprot2bdr2Controller,
                                            focusNode: focusNode86,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'R(2 канала)',
                                              hintText: 'R(2 канала)',
                                              helperText: 'Ом',
                                              prefixIcon: Icon(
                                                Icons.view_week_sharp,
                                                color: focusNode86.hasFocus ||
                                                        soprot2bdr2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode86.requestFocus();
                                                object.soprot2bdr2 = value;
                                                object.soprot2bdr2 =
                                                    soprot2bdr2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.soprot3bdr2 = value;
                                            },
                                            controller: soprot3bdr2Controller,
                                            focusNode: focusNode87,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'R(3 канала)',
                                              hintText: 'R(3 канала)',
                                              helperText: 'Ом',
                                              prefixIcon: Icon(
                                                Icons.view_week_sharp,
                                                color: focusNode87.hasFocus ||
                                                        soprot3bdr2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode87.requestFocus();
                                                object.soprot3bdr2 = value;
                                                object.soprot3bdr2 =
                                                    soprot3bdr2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextFormField(
                                            maxLength: 6,
                                            onFieldSubmitted: (String value) {
                                              object.soprot4bdr2 = value;
                                            },
                                            controller: soprot4bdr2Controller,
                                            focusNode: focusNode88,
                                            style: textStyle,
                                            decoration: InputDecoration(
                                              focusColor: Theme.of(context)
                                                  .primaryColor,
                                              labelStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              hintStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w300,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              labelText: 'R(4 канала)',
                                              hintText: 'R(4 канала)',
                                              helperText: 'Ом',
                                              prefixIcon: Icon(
                                                Icons.view_week_sharp,
                                                color: focusNode88.hasFocus ||
                                                        soprot4bdr2Controller
                                                            .text.isNotEmpty
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : Colors.grey,
                                                size: 32,
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                borderSide: BorderSide(
                                                    color: Colors.grey,
                                                    width: 2),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                borderSide: BorderSide(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 2),
                                              ),
                                            ),
                                            onChanged: (String value) {
                                              setState(() {
                                                focusNode88.requestFocus();
                                                object.soprot4bdr2 = value;
                                                object.soprot4bdr2 =
                                                    soprot4bdr2Controller.text;
                                              });
                                            },
                                            keyboardType: TextInputType.number,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Divider(thickness: 4),
                                    TextFormField(
                                      maxLength: 1000,
                                      focusNode: focusNode89,
                                      onSaved: (value) {
                                        object.zamechbdr2 = value;
                                      },
                                      onChanged: (String value) {
                                        setState(() {
                                          focusNode89.requestFocus();
                                          object.zamechbdr2 = value;
                                          object.zamechbdr2 =
                                              zamechbdr2Controller.text;
                                        });
                                      },
                                      controller: zamechbdr2Controller,
                                      decoration: InputDecoration(
                                        focusColor:
                                            Theme.of(context).primaryColor,
                                        labelStyle: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        labelText: 'Замечания',
                                        suffixIcon: GestureDetector(
                                          onTap: () {
                                            zamechbdr2Controller.clear();
                                          },
                                          child: Icon(
                                            Icons.delete_outline,
                                            color: Color.fromRGBO(
                                                187, 30, 16, 1.0),
                                          ),
                                        ),
                                        prefixIcon: GestureDetector(
                                            onTap: () async {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CameraPageUkz()),
                                              ).then((value) {
                                                setState(() async {
                                                  if (value != null) {
                                                    _imagebdr2 = value;
                                                    if (_3formKey.currentState
                                                        .validate()) {
                                                      _3formKey.currentState
                                                          .save();
                                                      if (_imagebdr2 != null) {
                                                        final Directory extDir =
                                                            await getApplicationDocumentsDirectory();
                                                        final String dirPath =
                                                            '${extDir.path}/Pictures/ehz';
                                                        await Directory(dirPath)
                                                            .create(
                                                                recursive:
                                                                    true);
                                                        final String filePath =
                                                            '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                                        await _imagebdr2
                                                            .copy(filePath);
                                                        object.fotobdr2 =
                                                            filePath;
                                                      }
                                                    }
                                                  }
                                                });
                                              });
                                            },
                                            child: Icon(
                                              Icons.camera_alt_sharp,
                                              color: Colors.green,
                                            )),
                                        hintText: 'Дефекты, замечания и другое',
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 2),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          borderSide: BorderSide(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              width: 2),
                                        ),
                                      ),
                                      maxLines: 10,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(1000),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 100,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ImageScreen(
                                                              imagePath: object
                                                                  .fotobdr2)),
                                                );
                                              },
                                              child: Center(
                                                child: object.fotobdr2 != null
                                                    ? Image.file(
                                                        File(object.fotobdr2),
                                                        fit: BoxFit.cover,
                                                        alignment:
                                                            Alignment.center,
                                                        width: 100,
                                                        height: 100,
                                                      )
                                                    : Text(
                                                        'ИЗОБРАЖЕНИЕ ОТСУТСТВУЕТ',
                                                        style: TextStyle(
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm3(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _4formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'АНОДНОЕ ЗАЗЕМЛЕНИЕ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.markaaz = value;
                        },
                        keyboardType: TextInputType.text,
                        controller: markaazController,
                        focusNode: focusNode90,
                        style: textStyle,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Тип АЗ',
                          hintText: 'Введите данные',
                          prefixIcon: Icon(
                            Icons.settings_input_composite_sharp,
                            color: focusNode90.hasFocus ||
                                    markaazController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              markaazController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        onChanged: (String value) {
                          setState(() {
                            focusNode90.requestFocus();
                            object.markaaz = value;
                            object.markaaz = markaazController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode91,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojanieaz = value;
                            object.sostojanieaz = sostojanieazController.text;
                          });
                          focusNode91.requestFocus();
                          object.sostojanieaz = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние АЗ',
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          prefixIcon: Icon(
                            Icons.check_circle_outline_sharp,
                            color: (focusNode91.hasFocus ||
                                    sostojanieazController.text.isNotEmpty)
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        items: _sostojanieskz1.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.sostojanieaz,
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 5),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Общий ток: ${tok5azController.text}А',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              onTap: () {
                                tok1azController.clear();
                                tok2azController.clear();
                                tok3azController.clear();
                                tok4azController.clear();
                                tok5azController.clear();
                              },
                              child: Icon(
                                Icons.delete_outline,
                                color: Color.fromRGBO(187, 30, 16, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.tok1az = value;
                              },
                              controller: tok1azController,
                              focusNode: focusNode92,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'I(1 канала)',
                                hintText: 'I(1 канала)',
                                helperText: 'А',
                                prefixIcon: Icon(
                                  Icons.flash_on_sharp,
                                  color: focusNode92.hasFocus ||
                                          tok1azController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              onChanged: (String value) {
                                setState(() {
                                  focusNode92.requestFocus();
                                  sumtokaz();
                                  object.tok1az = value;
                                  object.tok1az = tok1azController.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.tok2az = value;
                              },
                              controller: tok2azController,
                              focusNode: focusNode93,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'I(2 канала)',
                                hintText: 'I(2 канала)',
                                helperText: 'А',
                                prefixIcon: Icon(
                                  Icons.flash_on_sharp,
                                  color: focusNode93.hasFocus ||
                                          tok2azController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              onChanged: (String value) {
                                setState(() {
                                  focusNode93.requestFocus();
                                  sumtokaz();
                                  object.tok2az = value;
                                  object.tok2az = tok2azController.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.tok3az = value;
                              },
                              controller: tok3azController,
                              focusNode: focusNode94,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'I(3 канала)',
                                hintText: 'I(3 канала)',
                                helperText: 'А',
                                prefixIcon: Icon(
                                  Icons.flash_on_sharp,
                                  color: focusNode94.hasFocus ||
                                          tok3azController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              onChanged: (String value) {
                                setState(() {
                                  focusNode94.requestFocus();
                                  sumtokaz();
                                  object.tok3az = value;
                                  object.tok3az = tok3azController.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.tok4az = value;
                              },
                              controller: tok4azController,
                              focusNode: focusNode95,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'I(4 канала)',
                                hintText: 'I(4 канала)',
                                helperText: 'А',
                                prefixIcon: Icon(
                                  Icons.flash_on_sharp,
                                  color: focusNode95.hasFocus ||
                                          tok4azController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              onChanged: (String value) {
                                setState(() {
                                  focusNode95.requestFocus();
                                  sumtokaz();
                                  object.tok4az = value;
                                  object.tok4az = tok4azController.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
                      SizedBox(height: 5),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Сопротивление растеканию: ${soprrast5azController.text}Ом',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              onTap: () {
                                soprrast1azController.clear();
                                soprrast2azController.clear();
                                soprrast3azController.clear();
                                soprrast4azController.clear();
                                soprrast5azController.clear();
                              },
                              child: Icon(
                                Icons.delete_outline,
                                color: Color.fromRGBO(187, 30, 16, 1.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.soprrast1az = value;
                              },
                              controller: soprrast1azController,
                              focusNode: focusNode96,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'R(1 канала)',
                                hintText: 'R(1 канала)',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.view_week_sharp,
                                  color: focusNode96.hasFocus ||
                                          soprrast1azController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              onChanged: (String value) {
                                setState(() {
                                  focusNode96.requestFocus();
                                  sumsopraz();
                                  object.soprrast1az = value;
                                  object.soprrast1az =
                                      soprrast1azController.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.soprrast2az = value;
                              },
                              controller: soprrast2azController,
                              focusNode: focusNode97,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'R(2 канала)',
                                hintText: 'R(2 канала)',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.view_week_sharp,
                                  color: focusNode97.hasFocus ||
                                          soprrast2azController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              onChanged: (String value) {
                                setState(() {
                                  focusNode97.requestFocus();
                                  sumsopraz();
                                  object.soprrast2az = value;
                                  object.soprrast2az =
                                      soprrast2azController.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.soprrast3az = value;
                              },
                              controller: soprrast3azController,
                              focusNode: focusNode98,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'R(3 канала)',
                                hintText: 'R(3 канала)',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.view_week_sharp,
                                  color: focusNode98.hasFocus ||
                                          soprrast3azController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              onChanged: (String value) {
                                setState(() {
                                  focusNode98.requestFocus();
                                  sumsopraz();
                                  object.soprrast3az = value;
                                  object.soprrast3az =
                                      soprrast3azController.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.soprrast4az = value;
                              },
                              controller: soprrast4azController,
                              focusNode: focusNode99,
                              style: textStyle,
                              decoration: InputDecoration(
                                focusColor: Theme.of(context).primaryColor,
                                labelStyle: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'R(4 канала)',
                                hintText: 'R(4 канала)',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.view_week_sharp,
                                  color: focusNode99.hasFocus ||
                                          soprrast4azController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 2),
                                ),
                              ),
                              onChanged: (String value) {
                                setState(() {
                                  focusNode99.requestFocus();
                                  sumsopraz();
                                  object.soprrast4az = value;
                                  object.soprrast4az =
                                      soprrast4azController.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
                      TextFormField(
                        maxLength: 1000,
                        focusNode: focusNode100,
                        onSaved: (value) {
                          object.zamechaz = value;
                        },
                        onChanged: (String value) {
                          setState(() {
                            focusNode100.requestFocus();
                            object.zamechaz = value;
                            object.zamechaz = zamechazController.text;
                          });
                        },
                        controller: zamechazController,
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Замечания',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              zamechazController.clear();
                            },
                            child: Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(187, 30, 16, 1.0),
                            ),
                          ),
                          prefixIcon: GestureDetector(
                              onTap: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CameraPageUkz()),
                                ).then((value) {
                                  setState(() async {
                                    if (value != null) {
                                      _imageaz = value;
                                      if (_4formKey.currentState.validate()) {
                                        _4formKey.currentState.save();
                                        if (_imageaz != null) {
                                          final Directory extDir =
                                              await getApplicationDocumentsDirectory();
                                          final String dirPath =
                                              '${extDir.path}/Pictures/ehz';
                                          await Directory(dirPath)
                                              .create(recursive: true);
                                          final String filePath =
                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                          await _imageaz.copy(filePath);
                                          object.fotoaz = filePath;
                                        }
                                      }
                                    }
                                  });
                                });
                              },
                              child: Icon(
                                Icons.camera_alt_sharp,
                                color: Colors.green,
                              )),
                          hintText: 'Дефекты, замечания и другое',
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                        ),
                        maxLines: 10,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1000),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 100,
                        child: Column(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ImageScreen(
                                            imagePath: object.fotoaz)),
                                  );
                                },
                                child: Center(
                                  child: object.fotoaz != null
                                      ? Image.file(
                                          File(object.fotoaz),
                                          fit: BoxFit.cover,
                                          alignment: Alignment.center,
                                          width: 100,
                                          height: 100,
                                        )
                                      : Text(
                                          'ИЗОБРАЖЕНИЕ ОТСУТСТВУЕТ',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300,
                                            color:
                                                Theme.of(context).primaryColor,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm4(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _5formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'ЗАЩИТНОЕ ЗАЗЕМЛЕНИЕ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      Divider(thickness: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm5(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _6formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'ВОЗДУШНЫЕ ЛИНИИ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      Divider(thickness: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm6(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _7formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'КАБЕЛЬНЫЕ ЛИНИИ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      Divider(thickness: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm7(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _8formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'КТП (РУ)',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      Divider(thickness: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm8(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _9formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'КАЛЬКУЛЯТОР ПРОСТОЕВ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 20),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary:
                                Theme.of(context).accentColor, // background
                            onPrimary: Colors.white,
                            elevation: 2,
                            padding: const EdgeInsets.all(13.0),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(10.0)) // foreground
                            ),
                        onPressed: () => saveForm9(),
                        child: Text(
                          isEdit
                              ? 'Редактировать и закрыть'
                              : 'Добавить и закрыть',
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void editExcelFile(String buttonName) async {
  //   try {
  //     if (buttonName == 'AO') {
  //       // Получаем путь к файлу Excel в папке assets
  //       ByteData data = await rootBundle.load('assets/form/IP/AO.xlsx');
  //       List<int> bytes = data.buffer.asUint8List();

  //       // Открываем файл Excel
  //       var excel = Excel.decodeBytes(bytes);

  //       // Получаем страницу, на которой нужно вставить данные
  //       var sheet = excel['AO'];
  //       var filial = 'Филиал';

  //       // Вставляем данные в определенные ячейки
  //       if (object.filial == 'Арзамасское ЛПУМГ') {
  //         filial = 'Арзамасского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Владимирское ЛПУМГ') {
  //         filial = 'Владимирского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Волжское ЛПУМГ') {
  //         filial = 'Волжского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Вятское ЛПУМГ') {
  //         filial = 'Вятского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Заволжское ЛПУМГ') {
  //         filial = 'Заволжского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Ивановское ЛПУМГ') {
  //         filial = 'Ивановского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Кировское ЛПУМГ') {
  //         filial = 'Кировского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Моркинское ЛПУМГ') {
  //         filial = 'Моркинского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Пензенское ЛПУМГ') {
  //         filial = 'Пензенского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Пильнинское ЛПУМГ') {
  //         filial = 'Пильнинского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Починковское ЛПУМГ') {
  //         filial = 'Починковского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Приокское ЛПУМГ') {
  //         filial = 'Приокского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Семеновское ЛПУМГ') {
  //         filial = 'Семеновского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Сеченовское ЛПУМГ') {
  //         filial = 'Сеченовского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Торбеевское ЛПУМГ') {
  //         filial = 'Торбеевского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Чебоксарское ЛПУМГ') {
  //         filial = 'Чебоксарского ЛПУМГ-филиала';
  //       } else if (object.filial == 'ИТЦ ЛПУМГ') {
  //         filial = 'ИТЦ-филиала';
  //       } else if (object.filial == 'УАВР') {
  //         filial = 'УАВР-филиала';
  //       }
  //       sheet.cell(CellIndex.indexByString("E4")).value =
  //           object.dolzhnpredskom ?? '-';
  //       sheet.cell(CellIndex.indexByString("E5")).value = object.filial ?? '-';
  //       sheet.cell(CellIndex.indexByString("I7")).value =
  //           object.fiopredskom ?? '-';
  //       sheet.cell(CellIndex.indexByString("I8")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("F11")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("G14")).value = object.title ?? '-';
  //       sheet.cell(CellIndex.indexByString("G15")).value = object.davl ?? '-';
  //       sheet.cell(CellIndex.indexByString("G16")).value =
  //           object.diameter.toString() ??
  //               '-' + "x" + object.thickpipe.toString() ??
  //               '-';
  //       sheet.cell(CellIndex.indexByString("G17")).value =
  //           object.gradesteel ?? '-';
  //       sheet.cell(CellIndex.indexByString("G18")).value =
  //           object.typeinsul ?? '-';
  //       sheet.cell(CellIndex.indexByString("F19")).value =
  //           object.osnovanie ?? '-';
  //       sheet.cell(CellIndex.indexByString("A25")).value =
  //           object.piketkm ?? '-';
  //       sheet.cell(CellIndex.indexByString("C25")).value =
  //           object.distvtd ?? '-';
  //       sheet.cell(CellIndex.indexByString("E25")).value =
  //           object.location ?? '-';
  //       sheet.cell(CellIndex.indexByString("H25")).value =
  //           object.privmest ?? '-';
  //       sheet.cell(CellIndex.indexByString("J25")).value =
  //           object.depthpit ?? '-';
  //       sheet.cell(CellIndex.indexByString("A34")).value = object.mesto ?? '-';
  //       sheet.cell(CellIndex.indexByString("C34")).value =
  //           object.tipgrunta ?? '-';
  //       sheet.cell(CellIndex.indexByString("E34")).value =
  //           object.vlaggrunt ?? '-';
  //       sheet.cell(CellIndex.indexByString("G34")).value =
  //           object.lengthpit ?? '-';
  //       sheet.cell(CellIndex.indexByString("H34")).value =
  //           object.soprgrunt ?? '-';
  //       sheet.cell(CellIndex.indexByString("I34")).value = object.ph ?? '-';
  //       sheet.cell(CellIndex.indexByString("J34")).value =
  //           object.potencial ?? '-';
  //       sheet.cell(CellIndex.indexByString("K34")).value =
  //           object.tempsurf ?? '-';
  //       sheet.cell(CellIndex.indexByString("G38")).value = object.vlaga ?? '-';

  //       sheet.cell(CellIndex.indexByString("D49")).value =
  //           object.thickinsul1 ?? '-';
  //       sheet.cell(CellIndex.indexByString("F49")).value =
  //           object.thickinsul2 ?? '-';
  //       sheet.cell(CellIndex.indexByString("H49")).value =
  //           object.thickinsul3 ?? '-';
  //       sheet.cell(CellIndex.indexByString("J49")).value =
  //           object.thickinsul4 ?? '-';

  //       sheet.cell(CellIndex.indexByString("A63")).value =
  //           object.charmetdamage1 ?? '-';
  //       sheet.cell(CellIndex.indexByString("C63")).value =
  //           object.lochourmetdamage1 ?? '-';
  //       sheet.cell(CellIndex.indexByString("G63")).value =
  //           object.sizedepthmetdamage1 ?? '-';
  //       sheet.cell(CellIndex.indexByString("I63")).value =
  //           object.thickpipe ?? '-';

  //       sheet.cell(CellIndex.indexByString("D68")).value =
  //           object.thickpipe1 ?? '-';
  //       sheet.cell(CellIndex.indexByString("F68")).value =
  //           object.thickpipe2 ?? '-';
  //       sheet.cell(CellIndex.indexByString("H68")).value =
  //           object.thickpipe3 ?? '-';
  //       sheet.cell(CellIndex.indexByString("J68")).value =
  //           object.thickpipe4 ?? '-';

  //       sheet.cell(CellIndex.indexByString("H68")).value =
  //           object.thickpipe ?? '-';

  //       sheet.cell(CellIndex.indexByString("E63")).value =
  //           object.sizelengthmetdamage1.toString() ??
  //               '-' + "x" + object.sizewidthmetdamage1.toString() ??
  //               '-';

  //       sheet.cell(CellIndex.indexByString("A64")).value =
  //           object.charmetdamage2 ?? '-';
  //       sheet.cell(CellIndex.indexByString("C64")).value =
  //           object.lochourmetdamage2 ?? '-';
  //       sheet.cell(CellIndex.indexByString("G64")).value =
  //           object.sizedepthmetdamage1 ?? '-';
  //       sheet.cell(CellIndex.indexByString("I64")).value =
  //           object.thickpipe ?? '-';

  //       sheet.cell(CellIndex.indexByString("E64")).value =
  //           object.sizelengthmetdamage2.toString() ??
  //               '-' + "x" + object.sizewidthmetdamage2.toString() ??
  //               '-';

  //       sheet.cell(CellIndex.indexByString("A65")).value =
  //           object.charmetdamage3 ?? '-';
  //       sheet.cell(CellIndex.indexByString("C65")).value =
  //           object.lochourmetdamage3 ?? '-';
  //       sheet.cell(CellIndex.indexByString("G65")).value =
  //           object.sizedepthmetdamage1 ?? '-';
  //       sheet.cell(CellIndex.indexByString("I65")).value =
  //           object.thickpipe ?? '-';

  //       sheet.cell(CellIndex.indexByString("E65")).value =
  //           object.sizelengthmetdamage3.toString() ??
  //               '-' + "x" + object.sizewidthmetdamage3.toString() ??
  //               '-';

  //       sheet.cell(CellIndex.indexByString("F57")).value =
  //           object.insulcondit ?? '-';

  //       // sheet.cell(CellIndex.indexByString("F69")).value =
  //       //     object.metalldamage ?? '-' == 'Да'
  //       //         ? 'Неудовлетворительное'
  //       //         : 'Удовлетворительное';

  //       sheet.cell(CellIndex.indexByString("B73")).value =
  //           object.tickinsulmeter ?? '-';
  //       sheet.cell(CellIndex.indexByString("F73")).value =
  //           object.tickinsulmeternumb ?? '-';
  //       sheet.cell(CellIndex.indexByString("I73")).value =
  //           object.tickinsulmeterdate ?? '-';

  //       sheet.cell(CellIndex.indexByString("B74")).value =
  //           object.tickmetallmeter ?? '-';
  //       sheet.cell(CellIndex.indexByString("F74")).value =
  //           object.tickmetallmeternumb ?? '-';
  //       sheet.cell(CellIndex.indexByString("I74")).value =
  //           object.tickmetallmeterdate ?? '-';

  //       sheet.cell(CellIndex.indexByString("B75")).value =
  //           object.adhesmeter ?? '-';
  //       sheet.cell(CellIndex.indexByString("F75")).value =
  //           object.adhesmeternumb ?? '-';
  //       sheet.cell(CellIndex.indexByString("I75")).value =
  //           object.adhesmeterdate ?? '-';

  //       sheet.cell(CellIndex.indexByString("B76")).value =
  //           object.multimeter ?? '-';
  //       sheet.cell(CellIndex.indexByString("F76")).value =
  //           object.multimeternumb ?? '-';
  //       sheet.cell(CellIndex.indexByString("I76")).value =
  //           object.multimeterdate ?? '-';

  //       sheet.cell(CellIndex.indexByString("B77")).value = object.setvik ?? '-';
  //       sheet.cell(CellIndex.indexByString("F77")).value =
  //           object.setviknumb ?? '-';
  //       sheet.cell(CellIndex.indexByString("I77")).value =
  //           object.setvikdate ?? '-';

  //       sheet.cell(CellIndex.indexByString("E78")).value = object.zakl ?? '-';

  //       sheet.cell(CellIndex.indexByString("E80")).value =
  //           object.fiopredstzakazch ?? '-';
  //       sheet.cell(CellIndex.indexByString("J80")).value =
  //           object.dateObsl ?? '-';

  //       sheet.cell(CellIndex.indexByString("A82")).value =
  //           object.dolzhnproizvrab ?? '-';
  //       sheet.cell(CellIndex.indexByString("E82")).value =
  //           object.fioproizvrab ?? '-';
  //       sheet.cell(CellIndex.indexByString("J82")).value =
  //           object.dateObsl ?? '-';

  //       sheet.cell(CellIndex.indexByString("A84")).value =
  //           object.dolzhnnachuchastka ?? '-';
  //       sheet.cell(CellIndex.indexByString("E84")).value =
  //           object.fionachuchastka ?? '-';
  //       sheet.cell(CellIndex.indexByString("J84")).value =
  //           object.dateObsl ?? '-';

  //       sheet.cell(CellIndex.indexByString("A86")).value =
  //           object.dolzhnpredstzakazchSK ?? '-';
  //       sheet.cell(CellIndex.indexByString("E86")).value =
  //           object.fiopredstzakazchSK ?? '-';
  //       sheet.cell(CellIndex.indexByString("J86")).value =
  //           object.dateObsl ?? '-';

  //       sheet.cell(CellIndex.indexByString("F54")).value =
  //           object.insuladhes1 ?? '-';
  //       sheet.cell(CellIndex.indexByString("H54")).value =
  //           object.insulcharadhes1 ?? '-';

  //       String result1 = "";

  //       if (object.insuladhes1 != null && object.insulcharadhes1 != null) {
  //         double insuladhes1Value =
  //             double.tryParse(object.insuladhes1.replaceAll(',', '.'));

  //         if (insuladhes1Value != null) {
  //           if (insuladhes1Value >= 20) {
  //             result1 = 'Соответствует';
  //           } else {
  //             result1 = 'Не соответствует';
  //           }
  //         } else {
  //           result1 = '-';
  //         }
  //       } else {
  //         result1 = '-';
  //       }

  //       sheet.cell(CellIndex.indexByString("J54")).value = result1;

  //       sheet.cell(CellIndex.indexByString("H55")).value =
  //           object.insulcharadhes2 ?? '-';

  //       sheet.cell(CellIndex.indexByString("F55")).value =
  //           object.insuladhes2 ?? '-';

  //       String result2 = "";

  //       if (object.insuladhes2 != null && object.insulcharadhes2 != null) {
  //         double insuladhes2Value =
  //             double.tryParse(object.insuladhes2.replaceAll(',', '.'));

  //         if (insuladhes2Value != null) {
  //           if (insuladhes2Value >= 20) {
  //             result2 = 'Соответствует';
  //           } else {
  //             result2 = 'Не соответствует';
  //           }
  //         } else {
  //           result2 = '-';
  //         }
  //       } else {
  //         result2 = '-';
  //       }

  //       sheet.cell(CellIndex.indexByString("J55")).value = result2;

  //       sheet.cell(CellIndex.indexByString("H56")).value =
  //           object.insulcharadhes3 ?? '-';
  //       sheet.cell(CellIndex.indexByString("F56")).value =
  //           object.insuladhes3 ?? '-';
  //       String result3 = "";

  //       if (object.insuladhes3 != null && object.insulcharadhes3 != null) {
  //         double insuladhes3Value =
  //             double.tryParse(object.insuladhes3.replaceAll(',', '.'));

  //         if (insuladhes3Value != null) {
  //           if (insuladhes3Value >= 20) {
  //             result3 = 'Соответствует';
  //           } else {
  //             result3 = 'Не соответствует';
  //           }
  //         } else {
  //           result3 = '-';
  //         }
  //       } else {
  //         result3 = '-';
  //       }

  //       sheet.cell(CellIndex.indexByString("J56")).value = result3;

  //       sheet.cell(CellIndex.indexByString("A44")).value =
  //           object.charinsuldamage1 ?? '-';

  //       sheet.cell(CellIndex.indexByString("C44")).value =
  //           object.lochourinsuldamage1 ?? '-';

  //       sheet.cell(CellIndex.indexByString("E44")).value =
  //           object.sizelengthinsuldamage1.toString() ??
  //               '-' + "x" + object.sizewidthinsuldamage1.toString() ??
  //               '-';

  //       double sizelength1 = double.tryParse(
  //           sizelengthinsuldamageController1.text?.replaceAll(',', '.'));
  //       double sizewidth1 = double.tryParse(
  //           sizewidthinsuldamageController1.text?.replaceAll(',', '.'));

  //       sheet.cell(CellIndex.indexByString("H44")).value =
  //           (sizelength1 == null || sizewidth1 == null)
  //               ? '-'
  //               : sizelength1 * sizewidth1 / 100;

  //       sheet.cell(CellIndex.indexByString("A45")).value =
  //           object.charinsuldamage2 ?? '-';
  //       sheet.cell(CellIndex.indexByString("C45")).value =
  //           object.lochourinsuldamage2 ?? '-';

  //       sheet.cell(CellIndex.indexByString("E45")).value =
  //           object.sizelengthinsuldamage2.toString() ??
  //               '-' + "x" + object.sizewidthinsuldamage2.toString() ??
  //               '-';

  //       double sizelength2 = double.tryParse(
  //           sizelengthinsuldamageController2.text?.replaceAll(',', '.'));
  //       double sizewidth2 = double.tryParse(
  //           sizewidthinsuldamageController2.text?.replaceAll(',', '.'));

  //       sheet.cell(CellIndex.indexByString("H45")).value =
  //           (sizelength2 == null || sizewidth2 == null)
  //               ? '-'
  //               : sizelength2 * sizewidth2 / 100;

  //       sheet.cell(CellIndex.indexByString("A46")).value =
  //           object.charinsuldamage3 ?? '-';
  //       sheet.cell(CellIndex.indexByString("C46")).value =
  //           object.lochourinsuldamage3 ?? '-';

  //       sheet.cell(CellIndex.indexByString("E46")).value =
  //           object.sizelengthinsuldamage3.toString() ??
  //               '-' + "x" + object.sizewidthinsuldamage3.toString() ??
  //               '-';

  //       double sizelength3 = double.tryParse(
  //           sizelengthinsuldamageController3.text?.replaceAll(',', '.'));
  //       double sizewidth3 = double.tryParse(
  //           sizewidthinsuldamageController3.text?.replaceAll(',', '.'));

  //       sheet.cell(CellIndex.indexByString("H46")).value =
  //           (sizelength3 == null || sizewidth3 == null)
  //               ? '-'
  //               : sizelength3 * sizewidth3 / 100;

  //       // Получаем путь к папке "Downloads" на внешнем хранилище
  //       Directory externalStorageDirectory =
  //           await getExternalStorageDirectory();
  //       String downloadsFolderPath = '${externalStorageDirectory.path}';

  //       // Получаем путь к сохраненному файлу
  //       var newFile = '${object.title}.xlsx';
  //       var file = File('$downloadsFolderPath/$newFile');
  //       var excelBytes = excel.encode();
  //       await file.writeAsBytes(excelBytes);
  //       String filePath = '$downloadsFolderPath/$newFile';

  //       // Открываем новый файл
  //       await OpenFile.open(filePath);
  //     } else if (buttonName == 'APUZT') {
  //       // Получаем путь к файлу Excel в папке assets
  //       ByteData data = await rootBundle.load('assets/form/IP/APUZT.xlsx');
  //       List<int> bytes = data.buffer.asUint8List();

  //       // Открываем файл Excel
  //       var excel = Excel.decodeBytes(bytes);

  //       // Получаем страницу, на которой нужно вставить данные
  //       var sheet = excel['APUZT'];
  //       var filial = 'Филиал';

  //       // Вставляем данные в определенные ячейки
  //       if (object.filial == 'Арзамасское ЛПУМГ') {
  //         filial = 'Арзамасского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Владимирское ЛПУМГ') {
  //         filial = 'Владимирского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Волжское ЛПУМГ') {
  //         filial = 'Волжского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Вятское ЛПУМГ') {
  //         filial = 'Вятского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Заволжское ЛПУМГ') {
  //         filial = 'Заволжского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Ивановское ЛПУМГ') {
  //         filial = 'Ивановского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Кировское ЛПУМГ') {
  //         filial = 'Кировского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Моркинское ЛПУМГ') {
  //         filial = 'Моркинского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Пензенское ЛПУМГ') {
  //         filial = 'Пензенского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Пильнинское ЛПУМГ') {
  //         filial = 'Пильнинского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Починковское ЛПУМГ') {
  //         filial = 'Починковского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Приокское ЛПУМГ') {
  //         filial = 'Приокского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Семеновское ЛПУМГ') {
  //         filial = 'Семеновского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Сеченовское ЛПУМГ') {
  //         filial = 'Сеченовского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Торбеевское ЛПУМГ') {
  //         filial = 'Торбеевского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Чебоксарское ЛПУМГ') {
  //         filial = 'Чебоксарского ЛПУМГ-филиала';
  //       } else if (object.filial == 'ИТЦ ЛПУМГ') {
  //         filial = 'ИТЦ-филиала';
  //       } else if (object.filial == 'УАВР') {
  //         filial = 'УАВР-филиала';
  //       }
  //       sheet.cell(CellIndex.indexByString("E5")).value =
  //           object.dolzhnpredskom ?? '-';
  //       sheet.cell(CellIndex.indexByString("E6")).value = object.filial ?? '-';
  //       sheet.cell(CellIndex.indexByString("I8")).value =
  //           object.fiopredskom ?? '-';
  //       sheet.cell(CellIndex.indexByString("I9")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("F13")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("F16")).value =
  //           object.dolzhnpredstzakazch.toString() ??
  //               '-' + " " + object.fiopredstzakazch.toString() ??
  //               '-' + " " + object.fiodruglic.toString() ??
  //               '-';

  //       sheet.cell(CellIndex.indexByString("F18")).value =
  //           object.dolzhnproizvrab.toString() ??
  //               '-' + " " + object.fioproizvrab.toString() ??
  //               '-';
  //       sheet.cell(CellIndex.indexByString("F20")).value =
  //           object.dolzhnnachuchastka.toString() ??
  //               '-' + " " + object.fionachuchastka.toString() ??
  //               '-';

  //       sheet.cell(CellIndex.indexByString("F24")).value = object.title ?? '-';
  //       sheet.cell(CellIndex.indexByString("C27")).value =
  //           object.piketkm ?? '-';

  //       sheet
  //           .cell(CellIndex.indexByString("G27"))
  //           .value = (double.tryParse(object.piketkm?.replaceAll(',', '.')) ==
  //                   null ||
  //               double.tryParse(object.lengthpit?.replaceAll(',', '.')) == null)
  //           ? '-'
  //           : double.tryParse(object.piketkm?.replaceAll(',', '.')) +
  //               double.tryParse(object.lengthpit?.replaceAll(',', '.')) / 1000;
  //       sheet.cell(CellIndex.indexByString("D29")).value =
  //           object.metrrest ?? '-';
  //       sheet.cell(CellIndex.indexByString("H36")).value =
  //           (object.typeinsulrest == null || object.diameter == null)
  //               ? '-'
  //               : object.typeinsulrest ??
  //                       '-' == 'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
  //                           (double.tryParse(
  //                                       object.diameter.replaceAll(',', '.') ??
  //                                           '-') ??
  //                                   0) >=
  //                               820
  //                   ? 'Усиленного'
  //                   : 'Нормального';
  //       sheet.cell(CellIndex.indexByString("F37")).value =
  //           object.typeinsulrest ?? '-';
  //       sheet.cell(CellIndex.indexByString("D39")).value =
  //           object.thickinsulrest ?? '-';

  //       sheet.cell(CellIndex.indexByString("D42")).value =
  //           object.typeinsulrest == null
  //               ? '-'
  //               : object.typeinsulrest ==
  //                           'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
  //                       object.typeinsulrest ==
  //                           'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //                   ? 'СТО Газпром 9.1-016-2012'
  //                   : 'СТО Газпром 9.1-017-2012';

  //       sheet.cell(CellIndex.indexByString("F52")).value =
  //           (object.tickinsulmeter == null || object.tickinsulmeternumb == null)
  //               ? '-'
  //               : object.tickinsulmeter + ' №' + object.tickinsulmeternumb;
  //       sheet.cell(CellIndex.indexByString("F56")).value =
  //           (object.adhesmeter == null || object.adhesmeternumb == null)
  //               ? '-'
  //               : object.adhesmeter + ' №' + object.adhesmeternumb;
  //       sheet.cell(CellIndex.indexByString("H59")).value =
  //           (object.continmeter == null || object.continmeternumb == null)
  //               ? '-'
  //               : object.continmeter + ' №' + object.continmeternumb;
  //       sheet.cell(CellIndex.indexByString("C61")).value =
  //           object.contininsulrest ?? '-';

  //       sheet.cell(CellIndex.indexByString("D64")).value = object
  //                   .typeinsulrest ==
  //               'Грунтовка + РАМ 2 слоя + Литкор НК Газ'
  //           ? '4.6'
  //           : object.typeinsulrest == 'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //               ? '3.1'
  //               : object.typeinsulrest == 'БИУРС'
  //                   ? '0.7'
  //                   : object.typeinsulrest == 'Термоусаживающаяся манжета'
  //                       ? '1.5'
  //                       : '-';
  //       sheet.cell(CellIndex.indexByString("G64")).value =
  //           object.thickinsulrest ?? '-';

  //       sheet.cell(CellIndex.indexByString("J64")).value =
  //           (object.thickinsulrest == null)
  //               ? '-'
  //               : double.tryParse(object.thickinsulrest.replaceAll(',', '.') ??
  //                               '-') !=
  //                           null &&
  //                       double.tryParse(sheet
  //                               .cell(CellIndex.indexByString("D64"))
  //                               .value
  //                               .toString()
  //                               .replaceAll(',', '.')) !=
  //                           null &&
  //                       double.tryParse(
  //                               object.thickinsulrest.replaceAll(',', '.')) >=
  //                           double.tryParse(sheet
  //                               .cell(CellIndex.indexByString("D64"))
  //                               .value
  //                               .toString()
  //                               .replaceAll(',', '.'))
  //                   ? 'Соответствует'
  //                   : 'Не соответствует';

  //       sheet.cell(CellIndex.indexByString("D65")).value = object
  //                   .typeinsulrest ==
  //               'Грунтовка + РАМ 2 слоя + Литкор НК Газ'
  //           ? '0,2'
  //           : object.typeinsulrest == 'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //               ? '0,2'
  //               : object.typeinsulrest == 'БИУРС'
  //                   ? '0,3'
  //                   : object.typeinsulrest == 'Термоусаживающаяся манжета'
  //                       ? '0,3'
  //                       : '-';
  //       sheet.cell(CellIndex.indexByString("G65")).value =
  //           object.insuladhesrest ?? '-';

  //       sheet.cell(CellIndex.indexByString("J65")).value = (object
  //                   .insuladhesrest ==
  //               null)
  //           ? '-'
  //           : double.tryParse(object.insuladhesrest.replaceAll(',', '.') ??
  //                           '-') !=
  //                       null &&
  //                   double.tryParse(sheet
  //                           .cell(CellIndex.indexByString("D65"))
  //                           .value
  //                           .toString()
  //                           .replaceAll(',', '.')) !=
  //                       null &&
  //                   double.tryParse(object.insuladhesrest.replaceAll(',', '.') ?? '-') >=
  //                       double.tryParse(sheet
  //                           .cell(CellIndex.indexByString("D65"))
  //                           .value
  //                           .toString()
  //                           .replaceAll(',', '.'))
  //               ? 'Соответствует'
  //               : 'Не соответствует';

  //       sheet.cell(CellIndex.indexByString("D66")).value = object
  //                   .typeinsulrest ==
  //               null
  //           ? '-'
  //           : object.typeinsulrest == 'Грунтовка + РАМ 2 слоя + Литкор НК Газ'
  //               ? '5кВ на 1мм толщины'
  //               : object.typeinsulrest ==
  //                       'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //                   ? '5кВ на 1мм толщины'
  //                   : object.typeinsulrest == 'БИУРС'
  //                       ? '3кВ на 1мм толщины'
  //                       : object.typeinsulrest == 'Термоусаживающаяся манжета'
  //                           ? '5кВ на 1мм толщины + 5кВ'
  //                           : '-';
  //       sheet.cell(CellIndex.indexByString("G66")).value =
  //           object.contininsulrest == null
  //               ? '-'
  //               : 'отсутствие пробоя при ' + object.contininsulrest + 'кВ';

  //       sheet.cell(CellIndex.indexByString("E86")).value =
  //           object.fiopredstzakazch ?? '-';
  //       sheet.cell(CellIndex.indexByString("J86")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("E88")).value =
  //           object.fioproizvrab ?? '-';
  //       sheet.cell(CellIndex.indexByString("J88")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("E90")).value =
  //           object.fionachuchastka ?? '-';
  //       sheet.cell(CellIndex.indexByString("J90")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("A92")).value =
  //           object.dolzhnpredstzakazchSK ?? '-';
  //       sheet.cell(CellIndex.indexByString("E92")).value =
  //           object.fiopredstzakazchSK ?? '-';
  //       sheet.cell(CellIndex.indexByString("J92")).value =
  //           object.dateObsl ?? '-';

  //       sheet.cell(CellIndex.indexByString("J66")).value = double.tryParse(
  //                       object.contininsulrest.replaceAll(',', '.')) !=
  //                   null &&
  //               double.tryParse(object.typeinsulrest.replaceAll(',', '.')) !=
  //                   null &&
  //               double.tryParse(object.contininsulrest.replaceAll(',', '.')) >=
  //                   double.tryParse(object.typeinsulrest.replaceAll(',', '.'))
  //           ? (object.typeinsulrest == 'Грунтовка + РАМ 2 слоя + Литкор НК Газ'
  //               ? 5.0 *
  //                   double.tryParse(object.thickinsulrest.replaceAll(',', '.'))
  //               : object.typeinsulrest ==
  //                       'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //                   ? 5.0 *
  //                       double.tryParse(
  //                           object.thickinsulrest.replaceAll(',', '.'))
  //                   : object.typeinsulrest == 'БИУРС'
  //                       ? 3.0 *
  //                           double.tryParse(
  //                               object.thickinsulrest.replaceAll(',', '.'))
  //                       : object.typeinsulrest == 'Термоусаживающаяся манжета'
  //                           ? 5.0 *
  //                                   double.tryParse(object.thickinsulrest
  //                                       .replaceAll(',', '.')) +
  //                               5
  //                           : 'Соответствует')
  //           : 'Не соответствует';

  //       // Получаем путь к папке "Downloads" на внешнем хранилище
  //       Directory externalStorageDirectory =
  //           await getExternalStorageDirectory();
  //       String downloadsFolderPath = '${externalStorageDirectory.path}';

  //       // Получаем путь к сохраненному файлу
  //       var newFile = '${object.title}.xlsx';
  //       var file = File('$downloadsFolderPath/$newFile');
  //       var excelBytes = excel.encode();
  //       await file.writeAsBytes(excelBytes);
  //       String filePath = '$downloadsFolderPath/$newFile';

  //       // Открываем новый файл
  //       await OpenFile.open(filePath);
  //     } else if (buttonName == 'RAZR') {
  //       // Получаем путь к файлу Excel в папке assets
  //       ByteData data = await rootBundle.load('assets/form/IP/RAZR.xlsx');
  //       List<int> bytes = data.buffer.asUint8List();

  //       // Открываем файл Excel
  //       var excel = Excel.decodeBytes(bytes);

  //       // Получаем страницу, на которой нужно вставить данные
  //       var sheet = excel['RAZR'];
  //       var filial = 'Филиал';

  //       // Вставляем данные в определенные ячейки
  //       if (object.filial == 'Арзамасское ЛПУМГ') {
  //         filial = 'Арзамасского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Владимирское ЛПУМГ') {
  //         filial = 'Владимирского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Волжское ЛПУМГ') {
  //         filial = 'Волжского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Вятское ЛПУМГ') {
  //         filial = 'Вятского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Заволжское ЛПУМГ') {
  //         filial = 'Заволжского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Ивановское ЛПУМГ') {
  //         filial = 'Ивановского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Кировское ЛПУМГ') {
  //         filial = 'Кировского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Моркинское ЛПУМГ') {
  //         filial = 'Моркинского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Пензенское ЛПУМГ') {
  //         filial = 'Пензенского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Пильнинское ЛПУМГ') {
  //         filial = 'Пильнинского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Починковское ЛПУМГ') {
  //         filial = 'Починковского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Приокское ЛПУМГ') {
  //         filial = 'Приокского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Семеновское ЛПУМГ') {
  //         filial = 'Семеновского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Сеченовское ЛПУМГ') {
  //         filial = 'Сеченовского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Торбеевское ЛПУМГ') {
  //         filial = 'Торбеевского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Чебоксарское ЛПУМГ') {
  //         filial = 'Чебоксарского ЛПУМГ-филиала';
  //       } else if (object.filial == 'ИТЦ ЛПУМГ') {
  //         filial = 'ИТЦ-филиала';
  //       } else if (object.filial == 'УАВР') {
  //         filial = 'УАВР-филиала';
  //       }

  //       sheet.cell(CellIndex.indexByString("E5")).value =
  //           object.dolzhnpredskom ?? '-';
  //       sheet.cell(CellIndex.indexByString("E6")).value = object.filial ?? '-';
  //       sheet.cell(CellIndex.indexByString("I8")).value =
  //           object.fiopredskom ?? '-';
  //       sheet.cell(CellIndex.indexByString("I9")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("E16")).value =
  //           object.dateObsl ?? '-';

  //       sheet.cell(CellIndex.indexByString("F18")).value =
  //           object.dolzhnpredstzakazch.toString() ??
  //               '-' + ' ' + object.fiopredstzakazch.toString() ??
  //               '-';
  //       sheet.cell(CellIndex.indexByString("F20")).value =
  //           object.dolzhnnachuchastka.toString() ??
  //               '-' + ' ' + object.fionachuchastka.toString() ??
  //               '-';
  //       sheet.cell(CellIndex.indexByString("F22")).value =
  //           object.dolzhnpredstzakazchSK.toString() ??
  //               '-' + ' ' + object.fiopredstzakazchSK.toString() ??
  //               '-';

  //       sheet.cell(CellIndex.indexByString("F25")).value = object.title ?? '-';
  //       sheet.cell(CellIndex.indexByString("B11")).value = object.title ?? '-';

  //       sheet.cell(CellIndex.indexByString("B28")).value =
  //           object.piketkm ?? '-';

  //       sheet
  //           .cell(CellIndex.indexByString("F28"))
  //           .value = (double.tryParse(object.piketkm?.replaceAll(',', '.')) ==
  //                   null ||
  //               double.tryParse(object.lengthpit?.replaceAll(',', '.')) == null)
  //           ? '-'
  //           : double.tryParse(object.piketkm?.replaceAll(',', '.')) +
  //               double.tryParse(object.lengthpit?.replaceAll(',', '.')) / 1000;

  //       sheet.cell(CellIndex.indexByString("D31")).value =
  //           object.metrrest ?? '-';

  //       sheet.cell(CellIndex.indexByString("E41")).value =
  //           object.fiopredstzakazch ?? '-';
  //       sheet.cell(CellIndex.indexByString("J41")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("E43")).value =
  //           object.fionachuchastka ?? '-';
  //       sheet.cell(CellIndex.indexByString("J43")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("E45")).value =
  //           object.fiopredstzakazchSK ?? '-';
  //       sheet.cell(CellIndex.indexByString("J45")).value =
  //           object.dateObsl ?? '-';

  //       // Получаем путь к папке "Downloads" на внешнем хранилище
  //       Directory externalStorageDirectory =
  //           await getExternalStorageDirectory();
  //       String downloadsFolderPath = '${externalStorageDirectory.path}';

  //       // Получаем путь к сохраненному файлу
  //       var newFile = '${object.title}.xlsx';
  //       var file = File('$downloadsFolderPath/$newFile');
  //       var excelBytes = excel.encode();
  //       await file.writeAsBytes(excelBytes);
  //       String filePath = '$downloadsFolderPath/$newFile';

  //       // Открываем новый файл
  //       await OpenFile.open(filePath);
  //     } else if (buttonName == 'AKSZT') {
  //       // Получаем путь к файлу Excel в папке assets
  //       ByteData data = await rootBundle.load('assets/form/IP/AKSZT.xlsx');
  //       List<int> bytes = data.buffer.asUint8List();

  //       // Открываем файл Excel
  //       var excel = Excel.decodeBytes(bytes);

  //       // Получаем страницу, на которой нужно вставить данные
  //       var sheet = excel['AKSZT'];
  //       var filial = 'Филиал';

  //       // Вставляем данные в определенные ячейки
  //       if (object.filial == 'Арзамасское ЛПУМГ') {
  //         filial = 'Арзамасского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Владимирское ЛПУМГ') {
  //         filial = 'Владимирского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Волжское ЛПУМГ') {
  //         filial = 'Волжского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Вятское ЛПУМГ') {
  //         filial = 'Вятского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Заволжское ЛПУМГ') {
  //         filial = 'Заволжского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Ивановское ЛПУМГ') {
  //         filial = 'Ивановского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Кировское ЛПУМГ') {
  //         filial = 'Кировского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Моркинское ЛПУМГ') {
  //         filial = 'Моркинского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Пензенское ЛПУМГ') {
  //         filial = 'Пензенского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Пильнинское ЛПУМГ') {
  //         filial = 'Пильнинского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Починковское ЛПУМГ') {
  //         filial = 'Починковского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Приокское ЛПУМГ') {
  //         filial = 'Приокского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Семеновское ЛПУМГ') {
  //         filial = 'Семеновского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Сеченовское ЛПУМГ') {
  //         filial = 'Сеченовского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Торбеевское ЛПУМГ') {
  //         filial = 'Торбеевского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Чебоксарское ЛПУМГ') {
  //         filial = 'Чебоксарского ЛПУМГ-филиала';
  //       } else if (object.filial == 'ИТЦ ЛПУМГ') {
  //         filial = 'ИТЦ-филиала';
  //       } else if (object.filial == 'УАВР') {
  //         filial = 'УАВР-филиала';
  //       }
  //       sheet.cell(CellIndex.indexByString("E6")).value = object.filial ?? '-';
  //       sheet.cell(CellIndex.indexByString("E5")).value =
  //           object.dolzhnpredskom ?? '-';
  //       sheet.cell(CellIndex.indexByString("I8")).value =
  //           object.fiopredskom ?? '-';
  //       sheet.cell(CellIndex.indexByString("I9")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("B10")).value = object.title ?? '-';
  //       sheet.cell(CellIndex.indexByString("E13")).value =
  //           object.dateObsl ?? '-';

  //       sheet.cell(CellIndex.indexByString("E15")).value =
  //           object.dolzhnpredstzakazch.toString() ??
  //               '-' + " " + object.fiopredstzakazch.toString() ??
  //               '-' + " " + object.fiodruglic.toString() ??
  //               '-';
  //       sheet.cell(CellIndex.indexByString("E17")).value =
  //           object.dolzhnproizvrab.toString() ??
  //               '-' + " " + object.fioproizvrab.toString() ??
  //               '-';
  //       sheet.cell(CellIndex.indexByString("E19")).value =
  //           object.dolzhnpredststroit.toString() ??
  //               '-' + " " + object.fiopredststroit.toString() ??
  //               '-';

  //       sheet.cell(CellIndex.indexByString("J21")).value =
  //           object.lengthpit ?? '-';
  //       sheet.cell(CellIndex.indexByString("B22")).value =
  //           object.piketkm ?? '-';
  //       sheet
  //           .cell(CellIndex.indexByString("F22"))
  //           .value = (double.tryParse(object.piketkm?.replaceAll(',', '.')) ==
  //                   null ||
  //               double.tryParse(object.lengthpit?.replaceAll(',', '.')) == null)
  //           ? '-'
  //           : double.tryParse(object.piketkm?.replaceAll(',', '.')) +
  //               double.tryParse(object.lengthpit?.replaceAll(',', '.')) / 1000;

  //       sheet.cell(CellIndex.indexByString("I26")).value =
  //           (object.typeinsulrest == null || object.diameter == null)
  //               ? '-'
  //               : object.typeinsulrest ==
  //                           'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
  //                       double.tryParse(object.diameter.replaceAll(',', '.')) >=
  //                           820
  //                   ? 'Усиленного'
  //                   : 'Нормального';
  //       sheet.cell(CellIndex.indexByString("A26")).value =
  //           object.typeinsulrest == null
  //               ? '-'
  //               : object.typeinsulrest ==
  //                       'Грунтовка + РАМ 2 слоя + Литкор НК Газ'
  //                   ? 'Грунтовка + РАМ 2 слоя'
  //                   : object.typeinsulrest ==
  //                           'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //                       ? 'Грунтовка + РАМ 1 слой'
  //                       : object.typeinsulrest;

  //       sheet.cell(CellIndex.indexByString("C28")).value =
  //           object.thickinsulrest ?? '-';
  //       sheet.cell(CellIndex.indexByString("F28")).value =
  //           object.typeinsulrest == 'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
  //                   object.typeinsulrest ==
  //                       'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //               ? 'Литкор НК Газ'
  //               : '-';
  //       sheet.cell(CellIndex.indexByString("J28")).value =
  //           object.typeinsulrest == null
  //               ? '-'
  //               : object.typeinsulrest ==
  //                           'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
  //                       object.typeinsulrest ==
  //                           'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //                   ? '1'
  //                   : '-';

  //       sheet.cell(CellIndex.indexByString("E40")).value =
  //           object.fiopredstzakazch ?? '-';
  //       sheet.cell(CellIndex.indexByString("J40")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("E42")).value =
  //           object.fioproizvrab ?? '-';
  //       sheet.cell(CellIndex.indexByString("J42")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("E44")).value =
  //           object.fiopredststroit ?? '-';
  //       sheet.cell(CellIndex.indexByString("J44")).value =
  //           object.dateObsl ?? '-';

  //       // Получаем путь к папке "Downloads" на внешнем хранилище
  //       Directory externalStorageDirectory =
  //           await getExternalStorageDirectory();
  //       String downloadsFolderPath = '${externalStorageDirectory.path}';

  //       // Получаем путь к сохраненному файлу
  //       var newFile = '${object.title}.xlsx';
  //       var file = File('$downloadsFolderPath/$newFile');
  //       var excelBytes = excel.encode();
  //       await file.writeAsBytes(excelBytes);
  //       String filePath = '$downloadsFolderPath/$newFile';

  //       // Открываем новый файл
  //       await OpenFile.open(filePath);
  //     } else if (buttonName == 'ZHIUR') {
  //       // Получаем путь к файлу Excel в папке assets
  //       ByteData data = await rootBundle.load('assets/form/IP/ZHIUR.xlsx');
  //       List<int> bytes = data.buffer.asUint8List();

  //       // Открываем файл Excel
  //       var excel = Excel.decodeBytes(bytes);

  //       // Получаем страницу, на которой нужно вставить данные
  //       var sheet = excel['ZHIUR'];
  //       var filial = 'Филиал';

  //       // Вставляем данные в определенные ячейки
  //       if (object.filial == 'Арзамасское ЛПУМГ') {
  //         filial = 'Арзамасского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Владимирское ЛПУМГ') {
  //         filial = 'Владимирского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Волжское ЛПУМГ') {
  //         filial = 'Волжского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Вятское ЛПУМГ') {
  //         filial = 'Вятского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Заволжское ЛПУМГ') {
  //         filial = 'Заволжского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Ивановское ЛПУМГ') {
  //         filial = 'Ивановского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Кировское ЛПУМГ') {
  //         filial = 'Кировского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Моркинское ЛПУМГ') {
  //         filial = 'Моркинского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Пензенское ЛПУМГ') {
  //         filial = 'Пензенского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Пильнинское ЛПУМГ') {
  //         filial = 'Пильнинского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Починковское ЛПУМГ') {
  //         filial = 'Починковского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Приокское ЛПУМГ') {
  //         filial = 'Приокского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Семеновское ЛПУМГ') {
  //         filial = 'Семеновского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Сеченовское ЛПУМГ') {
  //         filial = 'Сеченовского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Торбеевское ЛПУМГ') {
  //         filial = 'Торбеевского ЛПУМГ-филиала';
  //       } else if (object.filial == 'Чебоксарское ЛПУМГ') {
  //         filial = 'Чебоксарского ЛПУМГ-филиала';
  //       } else if (object.filial == 'ИТЦ ЛПУМГ') {
  //         filial = 'ИТЦ-филиала';
  //       } else if (object.filial == 'УАВР') {
  //         filial = 'УАВР-филиала';
  //       }
  //       sheet.cell(CellIndex.indexByString("U5")).value = object.title ?? '-';
  //       sheet.cell(CellIndex.indexByString("J7")).value = object.piketkm ?? '-';
  //       sheet
  //           .cell(CellIndex.indexByString("J8"))
  //           .value = (double.tryParse(object.piketkm?.replaceAll(',', '.')) ==
  //                   null ||
  //               double.tryParse(object.lengthpit?.replaceAll(',', '.')) == null)
  //           ? '-'
  //           : double.tryParse(object.piketkm?.replaceAll(',', '.')) +
  //               double.tryParse(object.lengthpit?.replaceAll(',', '.')) / 1000;
  //       sheet.cell(CellIndex.indexByString("V11")).value =
  //           object.dateObsl ?? '-';
  //       sheet.cell(CellIndex.indexByString("V12")).value =
  //           object.dateObsl ?? '-';

  //       sheet.cell(CellIndex.indexByString("A18")).value =
  //           object.dateObsl ?? '-';
  //       sheet
  //           .cell(CellIndex.indexByString("F28"))
  //           .value = (double.tryParse(object.piketkm?.replaceAll(',', '.')) ==
  //                   null ||
  //               double.tryParse(object.lengthpit?.replaceAll(',', '.')) == null)
  //           ? '-'
  //           : double.tryParse(object.piketkm?.replaceAll(',', '.')) +
  //               double.tryParse(object.lengthpit?.replaceAll(',', '.')) / 1000;
  //       sheet.cell(CellIndex.indexByString("C18")).value =
  //           object.tempair ?? '-';
  //       sheet.cell(CellIndex.indexByString("D18")).value =
  //           (object.typeinsulrest == null || object.diameter == null)
  //               ? '-'
  //               : object.typeinsulrest ==
  //                           'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
  //                       double.tryParse(object.diameter.replaceAll(',', '.')) >=
  //                           820
  //                   ? 'Усиленный, ' + 'РАМ 2 слоя + Литкор НК Газ'
  //                   : 'Нормальный, ' + object.typeinsulrest ==
  //                           'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //                       ? 'РАМ 1 слой + Литкор НК Газ'
  //                       : 'Нормальный, ' + object.typeinsulrest;

  //       sheet.cell(CellIndex.indexByString("E18")).value =
  //           object.typeinsulrest == null
  //               ? '-'
  //               : object.typeinsulrest ==
  //                           'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
  //                       object.typeinsulrest ==
  //                           'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //                   ? 'Грунтовка Транскор-Газ'
  //                   : 'Праймер-клей';

  //       sheet.cell(CellIndex.indexByString("F18")).value =
  //           object.typeinsulrest == null
  //               ? '-'
  //               : object.typeinsulrest ==
  //                           'Грунтовка + РАМ 2 слоя + Литкор НК Газ' ||
  //                       object.typeinsulrest ==
  //                           'Грунтовка + РАМ 1 слой + Литкор НК Газ'
  //                   ? 'Литкор НК Газ'
  //                   : '-';

  //       sheet.cell(CellIndex.indexByString("H18")).value =
  //           object.fiopredstzakazch ?? '-';
  //       sheet.cell(CellIndex.indexByString("J18")).value =
  //           object.fiopredstzakazch ?? '-';
  //       sheet.cell(CellIndex.indexByString("I18")).value =
  //           object.fiopredststroit ?? '-';

  //       // Получаем путь к папке "Downloads" на внешнем хранилище
  //       Directory externalStorageDirectory =
  //           await getExternalStorageDirectory();
  //       String downloadsFolderPath = '${externalStorageDirectory.path}';

  //       // Получаем путь к сохраненному файлу
  //       var newFile = '${object.title}.xlsx';
  //       var file = File('$downloadsFolderPath/$newFile');
  //       var excelBytes = excel.encode();
  //       await file.writeAsBytes(excelBytes);
  //       String filePath = '$downloadsFolderPath/$newFile';

  //       // Открываем новый файл
  //       await OpenFile.open(filePath);
  //     }
  //   } catch (e) {
  //     print('Ошибка при открытии файла: $e');
  //   }
  // }

  // void sostinsul() {
  //   double parsadh1 =
  //       double.tryParse(insuladhesController1.text.replaceAll(',', '.'));
  //   if (parsadh1 >= 20) {
  //     insulconditController.text = 'Удовлетворительная';
  //   } else if (parsadh1 < 20) {
  //     insulconditController.text = 'Неудовлетворительная';
  //   } else {
  //     insulconditController.text = 'Неудовлетворительная';
  //   }
  // }

  // Calculate the minimum value
  // void minipipe() {
  //   double minValue = double.infinity;
  //   if (double.tryParse(thickpipeController1.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value1 =
  //         double.parse(thickpipeController1.text.replaceAll(',', '.'));
  //     minValue = value1;
  //   }

  //   if (double.tryParse(thickpipeController2.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value2 =
  //         double.parse(thickpipeController2.text.replaceAll(',', '.'));
  //     minValue = value2 < minValue ? value2 : minValue;
  //   }

  //   if (double.tryParse(thickpipeController3.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value3 =
  //         double.parse(thickpipeController3.text.replaceAll(',', '.'));
  //     minValue = value3 < minValue ? value3 : minValue;
  //   }

  //   if (double.tryParse(thickpipeController4.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value4 =
  //         double.parse(thickpipeController4.text.replaceAll(',', '.'));
  //     minValue = value4 < minValue ? value4 : minValue;
  //   }
  //   setState(() {
  //     thickpipeController.text = minValue.toString();
  //     object.thickpipe = thickpipeController.text;
  //   });
  // }

  // void sredadg() {
  //   double a1 = insuladhesController1.text.isNotEmpty
  //       ? double.parse(insuladhesController1.text.replaceAll(',', '.'))
  //       : 0.0;
  //   double a2 = insuladhesController2.text.isNotEmpty
  //       ? double.parse(insuladhesController2.text.replaceAll(',', '.'))
  //       : 0.0;
  //   double a3 = insuladhesController3.text.isNotEmpty
  //       ? double.parse(insuladhesController3.text.replaceAll(',', '.'))
  //       : 0.0;
  //   double a4 = insuladhesController4.text.isNotEmpty
  //       ? double.parse(insuladhesController4.text.replaceAll(',', '.'))
  //       : 0.0;

  //   double average = (a3 + a2 + a1) / 3;

  //   setState(() {
  //     insuladhesController4.text = average.toStringAsFixed(1);
  //     object.insuladhes4 = insuladhesController4.text;
  //   });
  // }

  // void sredadgrest() {
  //   double a1 = insuladhesrestController1.text.isNotEmpty
  //       ? double.parse(insuladhesrestController1.text)
  //       : 0.0;
  //   double a2 = insuladhesrestController2.text.isNotEmpty
  //       ? double.parse(insuladhesrestController2.text)
  //       : 0.0;
  //   double a3 = insuladhesrestController3.text.isNotEmpty
  //       ? double.parse(insuladhesrestController3.text)
  //       : 0.0;

  //   double average = (a3 + a2 + a1) / 3;

  //   setState(() {
  //     insuladhesrestController.text = average.toStringAsFixed(1);
  //     object.insuladhesrest = insuladhesrestController.text;
  //   });
  // }

  // void minithickinsul() {
  //   double minValue = double.infinity;
  //   if (double.tryParse(thickinsulController1.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value1 =
  //         double.parse(thickinsulController1.text.replaceAll(',', '.'));
  //     minValue = value1;
  //   }

  //   if (double.tryParse(thickinsulController2.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value2 =
  //         double.parse(thickinsulController2.text.replaceAll(',', '.'));
  //     minValue = value2 < minValue ? value2 : minValue;
  //   }

  //   if (double.tryParse(thickinsulController3.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value3 =
  //         double.parse(thickinsulController3.text.replaceAll(',', '.'));
  //     minValue = value3 < minValue ? value3 : minValue;
  //   }

  //   if (double.tryParse(thickinsulController4.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value4 =
  //         double.parse(thickinsulController4.text.replaceAll(',', '.'));
  //     minValue = value4 < minValue ? value4 : minValue;
  //   }
  //   if (double.tryParse(thickinsulController5.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value5 =
  //         double.parse(thickinsulController5.text.replaceAll(',', '.'));
  //     minValue = value5 < minValue ? value5 : minValue;
  //   }
  //   if (double.tryParse(thickinsulController6.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value6 =
  //         double.parse(thickinsulController6.text.replaceAll(',', '.'));
  //     minValue = value6 < minValue ? value6 : minValue;
  //   }
  //   if (double.tryParse(thickinsulController7.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value7 =
  //         double.parse(thickinsulController7.text.replaceAll(',', '.'));
  //     minValue = value7 < minValue ? value7 : minValue;
  //   }
  //   if (double.tryParse(thickinsulController8.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value8 =
  //         double.parse(thickinsulController8.text.replaceAll(',', '.'));
  //     minValue = value8 < minValue ? value8 : minValue;
  //   }
  //   if (double.tryParse(thickinsulController9.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value9 =
  //         double.parse(thickinsulController9.text.replaceAll(',', '.'));
  //     minValue = value9 < minValue ? value9 : minValue;
  //   }
  //   if (double.tryParse(thickinsulController10.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value10 =
  //         double.parse(thickinsulController10.text.replaceAll(',', '.'));
  //     minValue = value10 < minValue ? value10 : minValue;
  //   }
  //   if (double.tryParse(thickinsulController11.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value11 =
  //         double.parse(thickinsulController11.text.replaceAll(',', '.'));
  //     minValue = value11 < minValue ? value11 : minValue;
  //   }
  //   if (double.tryParse(thickinsulController12.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value12 =
  //         double.parse(thickinsulController12.text.replaceAll(',', '.'));
  //     minValue = value12 < minValue ? value12 : minValue;
  //   }
  //   setState(() {
  //     thickinsulController.text = minValue.toString();
  //     object.thickinsul = thickinsulController.text;
  //   });
  // }

  // void minithickinsulrest() {
  //   double minValue = double.infinity;
  //   if (double.tryParse(thickinsulrestController1.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value1 =
  //         double.parse(thickinsulrestController1.text.replaceAll(',', '.'));
  //     minValue = value1;
  //   }

  //   if (double.tryParse(thickinsulrestController2.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value2 =
  //         double.parse(thickinsulrestController2.text.replaceAll(',', '.'));
  //     minValue = value2 < minValue ? value2 : minValue;
  //   }

  //   if (double.tryParse(thickinsulrestController3.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value3 =
  //         double.parse(thickinsulrestController3.text.replaceAll(',', '.'));
  //     minValue = value3 < minValue ? value3 : minValue;
  //   }

  //   if (double.tryParse(thickinsulrestController4.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value4 =
  //         double.parse(thickinsulrestController4.text.replaceAll(',', '.'));
  //     minValue = value4 < minValue ? value4 : minValue;
  //   }
  //   if (double.tryParse(thickinsulrestController5.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value5 =
  //         double.parse(thickinsulrestController5.text.replaceAll(',', '.'));
  //     minValue = value5 < minValue ? value5 : minValue;
  //   }
  //   if (double.tryParse(thickinsulrestController6.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value6 =
  //         double.parse(thickinsulrestController6.text.replaceAll(',', '.'));
  //     minValue = value6 < minValue ? value6 : minValue;
  //   }
  //   if (double.tryParse(thickinsulrestController7.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value7 =
  //         double.parse(thickinsulrestController7.text.replaceAll(',', '.'));
  //     minValue = value7 < minValue ? value7 : minValue;
  //   }
  //   if (double.tryParse(thickinsulrestController8.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value8 =
  //         double.parse(thickinsulrestController8.text.replaceAll(',', '.'));
  //     minValue = value8 < minValue ? value8 : minValue;
  //   }
  //   if (double.tryParse(thickinsulrestController9.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value9 =
  //         double.parse(thickinsulrestController9.text.replaceAll(',', '.'));
  //     minValue = value9 < minValue ? value9 : minValue;
  //   }
  //   if (double.tryParse(thickinsulrestController10.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value10 =
  //         double.parse(thickinsulrestController10.text.replaceAll(',', '.'));
  //     minValue = value10 < minValue ? value10 : minValue;
  //   }
  //   if (double.tryParse(thickinsulrestController11.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value11 =
  //         double.parse(thickinsulrestController11.text.replaceAll(',', '.'));
  //     minValue = value11 < minValue ? value11 : minValue;
  //   }
  //   if (double.tryParse(thickinsulrestController12.text.replaceAll(',', '.')) !=
  //       null) {
  //     double value12 =
  //         double.parse(thickinsulrestController12.text.replaceAll(',', '.'));
  //     minValue = value12 < minValue ? value12 : minValue;
  //   }
  //   setState(() {
  //     thickinsulrestController.text = minValue.toString();
  //     object.thickinsulrest = thickinsulrestController.text;
  //   });
  // }

  void soprotskz1() {
    double napr = naprrabskz1Controller.text.isNotEmpty
        ? double.parse(naprrabskz1Controller.text.replaceAll(',', '.'))
        : 0.0;
    double tok = tokrabskz1Controller.text.isNotEmpty
        ? double.parse(tokrabskz1Controller.text.replaceAll(',', '.'))
        : 0.0;

    double soprotskz = napr / tok;

    setState(() {
      soprotskz1Controller.text = soprotskz.toStringAsFixed(2);
      object.soprotskz1 = soprotskz1Controller.text;
    });
  }

  void soprotskz2() {
    double napr = naprrabskz2Controller.text.isNotEmpty
        ? double.parse(naprrabskz2Controller.text.replaceAll(',', '.'))
        : 0.0;
    double tok = tokrabskz2Controller.text.isNotEmpty
        ? double.parse(tokrabskz2Controller.text.replaceAll(',', '.'))
        : 0.0;

    double soprotskz = napr / tok;

    setState(() {
      soprotskz2Controller.text = soprotskz.toStringAsFixed(2);
      object.soprotskz2 = soprotskz2Controller.text;
    });
  }

  void raschtok1() {
    double tokshunta = shunttokskz1Controller.text.isNotEmpty
        ? double.parse(shunttokskz1Controller.text.replaceAll(',', '.'))
        : 0.0;
    double naprshunta = shuntnaprskz1Controller.text.isNotEmpty
        ? double.parse(shuntnaprskz1Controller.text.replaceAll(',', '.'))
        : 0.0;
    double naprizmer = shuntnaprskz2Controller.text.isNotEmpty
        ? double.parse(shuntnaprskz2Controller.text.replaceAll(',', '.'))
        : 0.0;

    double raschtok = (naprizmer * tokshunta) / naprshunta;

    setState(() {
      shunttokskz2Controller.text = raschtok.toStringAsFixed(2);
      object.shunttokskz2 = shunttokskz2Controller.text;
    });
  }

  void raschtok2() {
    double tokshunta = shunttokskz3Controller.text.isNotEmpty
        ? double.parse(shunttokskz3Controller.text.replaceAll(',', '.'))
        : 0.0;
    double naprshunta = shuntnaprskz3Controller.text.isNotEmpty
        ? double.parse(shuntnaprskz3Controller.text.replaceAll(',', '.'))
        : 0.0;
    double naprizmer = shuntnaprskz4Controller.text.isNotEmpty
        ? double.parse(shuntnaprskz4Controller.text.replaceAll(',', '.'))
        : 0.0;

    double raschtok = (naprizmer * tokshunta) / naprshunta;

    setState(() {
      shunttokskz4Controller.text = raschtok.toStringAsFixed(2);
      object.shunttokskz4 = shunttokskz4Controller.text;
    });
  }

  void zapaspotokuskz2() {
    double t1 = tokrabskz2Controller.text.isNotEmpty
        ? double.parse(tokrabskz2Controller.text.replaceAll(',', '.'))
        : 0.0;
    double t2 = tokmaxskz2Controller.text.isNotEmpty
        ? double.parse(tokmaxskz2Controller.text.replaceAll(',', '.'))
        : 0.0;

    double zapas = 100 - ((t1 * 100) / t2);

    setState(() {
      zapaspotokuskz2Controller.text = zapas.toStringAsFixed(1);
      object.zapaspotokuskz2 = zapaspotokuskz2Controller.text;
    });
  }

  void zapaspotokuskz1() {
    double t1 = tokrabskz1Controller.text.isNotEmpty
        ? double.parse(tokrabskz1Controller.text.replaceAll(',', '.'))
        : 0.0;
    double t2 = tokmaxskz1Controller.text.isNotEmpty
        ? double.parse(tokmaxskz1Controller.text.replaceAll(',', '.'))
        : 0.0;

    double zapas = 100 - ((t1 * 100) / t2);

    setState(() {
      zapaspotokuskz1Controller.text = zapas.toStringAsFixed(1);
      object.zapaspotokuskz1 = zapaspotokuskz1Controller.text;
    });
  }

  void sumtokbdr1() {
    double t1 = tok1bdr1Controller.text.isNotEmpty
        ? double.parse(tok1bdr1Controller.text.replaceAll(',', '.'))
        : 0.0;
    double t2 = tok2bdr1Controller.text.isNotEmpty
        ? double.parse(tok2bdr1Controller.text.replaceAll(',', '.'))
        : 0.0;

    double t3 = tok3bdr1Controller.text.isNotEmpty
        ? double.parse(tok3bdr1Controller.text.replaceAll(',', '.'))
        : 0.0;

    double t4 = tok4bdr1Controller.text.isNotEmpty
        ? double.parse(tok4bdr1Controller.text.replaceAll(',', '.'))
        : 0.0;

    double summa = t1 + t2 + t3 + t4;

    setState(() {
      tok5bdr1Controller.text = summa.toStringAsFixed(1);
      object.tok5bdr1 = tok5bdr1Controller.text;
    });
  }

  void sumtokbdr2() {
    double t1 = tok1bdr2Controller.text.isNotEmpty
        ? double.parse(tok1bdr1Controller.text.replaceAll(',', '.'))
        : 0.0;
    double t2 = tok2bdr2Controller.text.isNotEmpty
        ? double.parse(tok2bdr2Controller.text.replaceAll(',', '.'))
        : 0.0;

    double t3 = tok3bdr2Controller.text.isNotEmpty
        ? double.parse(tok3bdr2Controller.text.replaceAll(',', '.'))
        : 0.0;

    double t4 = tok4bdr2Controller.text.isNotEmpty
        ? double.parse(tok4bdr2Controller.text.replaceAll(',', '.'))
        : 0.0;

    double summa = t1 + t2 + t3 + t4;

    setState(() {
      tok5bdr2Controller.text = summa.toStringAsFixed(1);
      object.tok5bdr2 = tok5bdr2Controller.text;
    });
  }

  void sumtokaz() {
    double t1 = tok1azController.text.isNotEmpty
        ? double.parse(tok1azController.text.replaceAll(',', '.'))
        : 0.0;
    double t2 = tok2azController.text.isNotEmpty
        ? double.parse(tok2azController.text.replaceAll(',', '.'))
        : 0.0;
    double t3 = tok3azController.text.isNotEmpty
        ? double.parse(tok3azController.text.replaceAll(',', '.'))
        : 0.0;
    double t4 = tok4azController.text.isNotEmpty
        ? double.parse(tok4azController.text.replaceAll(',', '.'))
        : 0.0;

    double summa = t1 + t2 + t3 + t4;

    setState(() {
      tok5azController.text = summa.toStringAsFixed(1);
      object.tok5az = tok5azController.text;
    });
  }

  void sumsopraz() {
    double s1 = soprrast1azController.text.isNotEmpty
        ? double.parse(soprrast1azController.text.replaceAll(',', '.'))
        : 0.0;
    double s2 = soprrast2azController.text.isNotEmpty
        ? double.parse(soprrast2azController.text.replaceAll(',', '.'))
        : 0.0;
    double s3 = soprrast3azController.text.isNotEmpty
        ? double.parse(soprrast3azController.text.replaceAll(',', '.'))
        : 0.0;
    double s4 = soprrast4azController.text.isNotEmpty
        ? double.parse(soprrast4azController.text.replaceAll(',', '.'))
        : 0.0;

    double summa = s1 + s2 + s3 + s4;

    setState(() {
      soprrast5azController.text = summa.toStringAsFixed(1);
      object.soprrast5az = soprrast5azController.text;
    });
  }

  // void napr() {
  //   double napr = 0.0;
  //   double ram = 5.0;
  //   double tum = 5.0;
  //   double biurs = 3.0;
  //   double thick =
  //       double.tryParse(thickinsulrestController.text.replaceAll(',', '.'));

  //   if (typeinsulrestController.text != null &&
  //       (typeinsulrestController.text ==
  //               'Грунтовка + РАМ 1 слой + Литкор НК Газ' ||
  //           typeinsulrestController.text ==
  //               'Грунтовка + РАМ 2 слоя + Литкор НК Газ')) {
  //     napr = ram * thick;
  //     contininsulrestController.text = napr.toStringAsFixed(2);
  //   } else if (typeinsulrestController.text != null &&
  //       typeinsulrestController.text == 'БИУРС') {
  //     napr = biurs * thick;
  //     contininsulrestController.text = napr.toStringAsFixed(2);
  //   } else if (typeinsulrestController.text != null &&
  //       typeinsulrestController.text == 'Термоусаживающаяся манжета') {
  //     napr = tum * thick + 5;
  //     contininsulrestController.text = napr.toStringAsFixed(2);
  //   } else {
  //     contininsulrestController.text =
  //         ""; // Сбросить значение, если условие не выполнено
  //   }
  // }

  // void calcdewpoint() {
  //   double a = 17.27;
  //   double b = 237.7;
  //   double temperature =
  //       double.tryParse(tempairController.text.replaceAll(',', '.'));
  //   double relativeHumidity = 1.0;
  //   if (relathumidController.text != null) {
  //     double parsedValue =
  //         double.tryParse(relathumidController.text.replaceAll(',', '.'));
  //     if (parsedValue != null) {
  //       relativeHumidity = parsedValue;
  //     }
  //   }
  //   double dewpoint = (b *
  //           (((a * temperature) / (b + temperature)) +
  //               log(relativeHumidity / 100))) /
  //       (a -
  //           (((a * temperature) / (b + temperature)) +
  //               log(relativeHumidity / 100)));
  //   object.dewpoint = dewpoint.toStringAsFixed(2);
  //   dewpointController.text = object.dewpoint;
  //   print('Темп: $temperature');
  //   print('влажность: $relativeHumidity');
  //   print('ТОЧКА РОСЫ: $dewpoint');
  // }

  // void calcdewpoint() {
  //   double a = 17.27;
  //   double b = 237.7;
  //   double temperature =
  //       double.tryParse(tempairController.text.replaceAll(',', '.')) ?? 0.0;
  //   double relativeHumidity = 1.0;

  //   if (relathumidController.text != null) {
  //     double parsedValue =
  //         double.tryParse(relathumidController.text.replaceAll(',', '.')) ??
  //             0.0;
  //     if (parsedValue != null) {
  //       relativeHumidity = parsedValue;
  //     }
  //   }

  //   double dewpoint = (b *
  //           (((a * temperature) / (b + temperature)) +
  //               log(relativeHumidity / 100))) /
  //       (a -
  //           (((a * temperature) / (b + temperature)) +
  //               log(relativeHumidity / 100)));

  //   object.dewpoint = dewpoint.toStringAsFixed(2);
  //   dewpointController.text = object.dewpoint;

  //   print('Темп: $temperature');
  //   print('влажность: $relativeHumidity');
  //   print('ТОЧКА РОСЫ: $dewpoint');
  // }

  void confirmDelete() {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Вы действительно хотите удалить запись?',
            style: TextStyle(fontSize: 15.0)),
        actions: <Widget>[
          TextButton(
              child: const Text('Закрыть'),
              onPressed: () => Navigator.of(context).pop()),
          TextButton(
              child: const Text(
                'Удалить',
                style: TextStyle(
                    color: Color.fromRGBO(187, 30, 16, 1.0),
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                helper.deleteUkz(object.id);
                Navigator.of(context).pop();
                Navigator.pop(context, true);
              })
        ],
      ),
    );
  }

  // void getLocation() async {
  //   Position position = await Geolocator.getCurrentPosition(
  //     desiredAccuracy: LocationAccuracy.high,
  //   );

  //   setState(() {
  //     locationData = '${position.latitude} / ${position.longitude}';
  //     locationController.text = locationData;
  //     object.location = locationData;
  //   });
  // }

  void saveForm1() {
    final form = _1formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm12() {
    final form = _1formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm2() {
    final form = _2formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm22() {
    final form = _2formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm3() {
    final form = _3formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm32() {
    final form = _3formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm4() {
    final form = _4formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm42() {
    final form = _4formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm5() {
    final form = _5formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm52() {
    final form = _5formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm6() {
    final form = _6formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm62() {
    final form = _6formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm7() {
    final form = _7formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm72() {
    final form = _7formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm8() {
    final form = _8formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm82() {
    final form = _8formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      // Navigator.pop(context, true);
    }
  }

  void saveForm9() {
    final form = _9formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      Navigator.pop(context, true);
    }
  }

  void saveForm92() {
    final form = _9formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
      // Navigator.pop(context, true);
    }
  }

  // void updateTitle() {
  //   setState(() {
  //     object.title == titleController.text;
  //   });
  // }

  // void updatePiketkm() {
  //   setState(() {
  //     object.piketkm = piketkmController.text;
  //   });
  // }

  // void updateCoordinate() {
  //   setState(() {
  //     object.coordinate = coordinateController.text;
  //   });
  // }

  // void updateLengthpit() {
  //   setState(() {
  //     object.lengthpit = lengthpitController.text;
  //   });
  // }

  // void updateDepthpit() {
  //   setState(() {
  //     object.depthpit = depthpitController.text;
  //   });
  // }

  // void updateOsnovanie() {
  //   setState(() {
  //     object.osnovanie = osnovanieController.text;
  //   });
  // }

  // void updateDescription() {
  //   setState(() {
  //     object.description = descriptionController.text;
  //   });
  // }

  // void updateDiameter() {
  //   setState(() {
  //     object.diameter = diameterController.text;
  //   });
  // }

  // void updateThickpipe() {
  //   setState(() {
  //     object.thickpipe = thickpipeController.text;
  //   });
  // }

  // void updateGradesteele() {
  //   setState(() {
  //     object.gradesteel = gradesteelController.text;
  //   });
  // }

  // void updateMetalldamage() {
  //   setState(() {
  //     object.metalldamage = metalldamageController.text;
  //   });
  // }

  // void updateCharmetdamage1() {
  //   setState(() {
  //     object.charmetdamage1 = charmetdamageController1.text;
  //   });
  // }

  // void updateLocmetdamage1() {
  //   setState(() {
  //     object.locmetdamage1 = locmetdamageController1.text;
  //   });
  // }

  // void updateSizemetdamage1() {
  //   setState(() {
  //     object.sizemetdamage1 = sizemetdamageController1.text;
  //   });
  // }

  // void updateTypeinsul() {
  //   setState(() {
  //     object.typeinsul = typeinsulController.text;
  //   });
  // }

  // void updateInsuladhes() {
  //   setState(() {
  //     object.insuladhes = insuladhesController.text;
  //   });
  // }

  // void updateInsulcharadhes() {
  //   setState(() {
  //     object.insulcharadhes = insulcharadhesController.text;
  //   });
  // }

  // void updateInsulcondit() {
  //   setState(() {
  //     object.insulcondit = insulconditController.text;
  //   });
  // }

  // void updateThickinsul() {
  //   setState(() {
  //     object.thickinsul = thickinsulController.text;
  //   });
  // }

  // void updateInsuldamage() {
  //   setState(() {
  //     object.insuldamage = insuldamageController.text;
  //   });
  // }

  // void updateCharinsuldamage1() {
  //   setState(() {
  //     object.charinsuldamage1 = charinsuldamageController1.text;
  //   });
  // }

  // void updateLocinsuldamage1() {
  //   setState(() {
  //     object.locinsuldamage1 = locinsuldamageController1.text;
  //   });
  // }

  // void updateSizeinsuldamage1() {
  //   setState(() {
  //     object.sizeinsuldamage1 = sizeinsuldamageController1.text;
  //   });
  // }

  // void updateTypeinsulrest() {
  //   setState(() {
  //     object.typeinsulrest = typeinsulrestController.text;
  //   });
  // }

  // void updateInsuladhesrest() {
  //   setState(() {
  //     object.insuladhesrest = insuladhesrestController.text;
  //   });
  // }

  // void updateThickinsulrest() {
  //   setState(() {
  //     object.thickinsulrest = thickinsulrestController.text;
  //   });
  // }

  // void updateContininsulrest() {
  //   setState(() {
  //     object.contininsulrest = contininsulrestController.text;
  //   });
  // }

  // void updateTickinsulmeter() {
  //   setState(() {
  //     object.tickinsulmeter = tickinsulmeterController.text;
  //   });
  // }

  // void updateTickmetallmeter() {
  //   setState(() {
  //     object.tickmetallmeter = tickmetallmeterController.text;
  //   });
  // }

  // void updateAdhesmeter() {
  //   setState(() {
  //     object.adhesmeter = adhesmeterController.text;
  //   });
  // }

  // void updateContinmeter() {
  //   setState(() {
  //     object.continmeter = continmeterController.text;
  //   });
  // }

  // void updateSetvik() {
  //   setState(() {
  //     object.setvik = setvikController.text;
  //   });
  // }

  // void updatedateObsl() {
  //   setState(() {
  //     object.dateObsl = dateObslController.text;
  //   });
  // }
}
