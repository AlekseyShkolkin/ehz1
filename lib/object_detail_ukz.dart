import 'dart:io';
import 'dart:math';

import 'package:ehz1/camera_page_ukz.dart';
import 'package:ehz1/image_screen.dart';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;
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
  DateTime datato1; // Дата выбранная для dateObsl1
  DateTime datato2; // Дата выбранная для dateObsl2

  static const _actionTitles = [
    'Удалить запись',
    'Сохранить запись и зкрыть',
    'Сформировать документ'
  ];

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

  File _imageelobor;
  File _imagevl;
  File _imagedrug;

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

  TextEditingController tipshrController = TextEditingController();
  TextEditingController sostojanieshrController = TextEditingController();
  TextEditingController sostojanieograzhdController = TextEditingController();
  TextEditingController sostojaniezz2Controller = TextEditingController();
  TextEditingController soprrastzz2Controller = TextEditingController();
  TextEditingController sostojanierazController = TextEditingController();
  TextEditingController tiprazController = TextEditingController();

  TextEditingController potrmoschnostController = TextEditingController();
  TextEditingController datato1Controller = TextEditingController();
  TextEditingController elekschetchik1Controller = TextEditingController();
  TextEditingController datato2Controller = TextEditingController();
  TextEditingController elekschetchik2Controller = TextEditingController();
  TextEditingController prostoi1Controller = TextEditingController();
  TextEditingController narabschetchik1Controller = TextEditingController();
  TextEditingController narabschetchik2Controller = TextEditingController();
  TextEditingController prostoi2Controller = TextEditingController();

  TextEditingController rogruntskzController = TextEditingController();
  TextEditingController rogruntktpController = TextEditingController();
  TextEditingController rogruntrazController = TextEditingController();
  TextEditingController rogruntazController = TextEditingController();
  TextEditingController soprotzzktpController = TextEditingController();
  TextEditingController soprotzzrazController = TextEditingController();

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

    tipshrController.text = object.tipshr ?? '';
    sostojanieshrController.text = object.sostojanieshr ?? '';
    sostojanieograzhdController.text = object.sostojanieograzhd ?? '';
    sostojaniezz2Controller.text = object.sostojaniezz2 ?? '';
    soprrastzz2Controller.text = object.soprrastzz2 ?? '';
    sostojanierazController.text = object.sostojanieraz ?? '';
    tiprazController.text = object.tipraz ?? '';

    potrmoschnostController.text = object.potrmoschnost ?? '';
    datato1Controller.text = object.datato1 ?? '';
    elekschetchik1Controller.text = object.elekschetchik1 ?? '';
    datato2Controller.text = object.datato2 ?? '';
    elekschetchik2Controller.text = object.elekschetchik2 ?? '';
    prostoi1Controller.text = object.prostoi1 ?? '';
    narabschetchik1Controller.text = object.narabschetchik1 ?? '';
    narabschetchik2Controller.text = object.narabschetchik2 ?? '';
    prostoi2Controller.text = object.prostoi2 ?? '';

    rogruntskzController.text = object.rogruntskz ?? '';
    rogruntktpController.text = object.rogruntktp ?? '';
    rogruntrazController.text = object.rogruntraz ?? '';
    rogruntazController.text = object.rogruntaz ?? '';
    soprotzzktpController.text = object.soprotzzktp ?? '';
    soprotzzrazController.text = object.soprotzzraz ?? '';
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
      length: 8,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: _cardColor,
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
            backgroundColor: Colors.white,
            title: isEdit
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ИЗМЕНИТЬ ЗАПИСЬ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.delete_outline_outlined,
                          color: Theme.of(context).primaryColor,
                          size: 32,
                        ),
                        onPressed: () {
                          debugPrint('Click Floated Back.');
                          confirmDelete();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.save_outlined,
                          color: Theme.of(context).primaryColor,
                          size: 32,
                        ),
                        onPressed: () {
                          if (_1formKey.currentState != null) {
                            _1formKey.currentState.validate();
                            saveForm(_1formKey);
                          } else if (_2formKey.currentState != null) {
                            _2formKey.currentState.validate();
                            saveForm(_2formKey);
                          } else if (_3formKey.currentState != null) {
                            _3formKey.currentState.validate();
                            saveForm(_3formKey);
                          } else if (_4formKey.currentState != null) {
                            _4formKey.currentState.validate();
                            saveForm(_4formKey);
                          } else if (_5formKey.currentState != null) {
                            _5formKey.currentState.validate();
                            saveForm(_5formKey);
                          } else if (_6formKey.currentState != null) {
                            _6formKey.currentState.validate();
                            saveForm(_6formKey);
                          } else if (_7formKey.currentState != null) {
                            _7formKey.currentState.validate();
                            saveForm(_7formKey);
                          } else if (_8formKey.currentState != null) {
                            _8formKey.currentState.validate();
                            saveForm(_8formKey);
                          } else if (_9formKey.currentState != null) {
                            _9formKey.currentState.validate();
                            saveForm(_9formKey);
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
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.save_outlined,
                          color: Theme.of(context).primaryColor,
                          size: 32,
                        ),
                        onPressed: () {
                          List<GlobalKey<FormState>> formKeys = [
                            _1formKey,
                            _2formKey,
                            _3formKey,
                            _4formKey,
                            _5formKey,
                            _6formKey,
                            _7formKey,
                            _8formKey,
                            _9formKey
                          ];
                          for (final formKey in formKeys) {
                            if (formKey.currentState != null &&
                                formKey.currentState.validate()) {
                              saveForm(formKey);
                              Navigator.pop(context, true);
                            }
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
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.battery_4_bar_sharp,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.settings_input_component_sharp,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.tonality_sharp,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.flash_on_sharp,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.cable_rounded,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.device_hub_sharp,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.calculate_sharp,
                  size: 30,
                  color: Theme.of(context).primaryColor,
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
                                      focusNode: focusNode101,
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
                                          color: focusNode101.hasFocus ||
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
                                          focusNode101.requestFocus();
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
                                rogruntazController.clear();
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
                      TextFormField(
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.rogruntaz = value;
                        },
                        controller: rogruntazController,
                        focusNode: focusNode112,
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
                          labelText: 'Ro грунта',
                          hintText: 'Ro грунта',
                          helperText: 'Ом*м',
                          prefixIcon: Icon(
                            Icons.blur_on_sharp,
                            color: focusNode112.hasFocus ||
                                    rogruntazController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
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
                            focusNode112.requestFocus();
                            sumsopraz();
                            object.rogruntaz = value;
                            object.rogruntaz = rogruntazController.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
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
                            'ЭЛЕКТРООБОРУДОВАНИЕ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 5),
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.tipraz = value;
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
                        controller: tiprazController,
                        focusNode: focusNode107,
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
                          labelText: 'Тип разъединителя',
                          hintText: 'Введите наименование',
                          prefixIcon: Icon(
                            Icons.calendar_today_sharp,
                            color: focusNode107.hasFocus ||
                                    tiprazController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              tiprazController.clear();
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
                            focusNode107.requestFocus();
                            object.tipraz = value;
                            object.tipraz = tiprazController.text;
                          });
                        },
                      ),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode106,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojanieraz = value;
                            object.sostojanieraz = sostojanierazController.text;
                          });
                          focusNode106.requestFocus();
                          object.sostojanieraz = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние разъединителя',
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
                            color: (focusNode106.hasFocus ||
                                    sostojanierazController.text.isNotEmpty)
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
                        value: object.sostojanieraz,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.rogruntraz = value;
                              },
                              controller: rogruntrazController,
                              focusNode: focusNode110,
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
                                labelText: 'Ro грунта',
                                hintText: 'Ro грунта',
                                helperText: 'Ом*м',
                                prefixIcon: Icon(
                                  Icons.blur_on_sharp,
                                  color: focusNode110.hasFocus ||
                                          rogruntrazController.text.isNotEmpty
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
                                  focusNode110.requestFocus();
                                  sumsopraz();
                                  object.rogruntraz = value;
                                  object.rogruntraz = rogruntrazController.text;
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
                                object.soprotzzraz = value;
                              },
                              controller: soprotzzrazController,
                              focusNode: focusNode111,
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
                                labelText: 'Rраст ЗЗ',
                                hintText: 'Rраст ЗЗ',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.show_chart_sharp,
                                  color: focusNode111.hasFocus ||
                                          soprotzzrazController.text.isNotEmpty
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
                                  focusNode111.requestFocus();
                                  sumsopraz();
                                  object.soprotzzraz = value;
                                  object.soprotzzraz =
                                      soprotzzrazController.text;
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
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.tipktp = value;
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
                        controller: tipktpController,
                        focusNode: focusNode102,
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
                          labelText: 'Тип КТП',
                          hintText: 'Введите наименование',
                          prefixIcon: Icon(
                            Icons.calendar_today_sharp,
                            color: focusNode102.hasFocus ||
                                    tipktpController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              tipktpController.clear();
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
                            focusNode102.requestFocus();
                            object.tipktp = value;
                            object.tipktp = tipktpController.text;
                          });
                        },
                      ),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode103,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojaniektp = value;
                            object.sostojaniektp = sostojaniektpController.text;
                          });
                          focusNode103.requestFocus();
                          object.sostojaniektp = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние КТП',
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
                            color: (focusNode103.hasFocus ||
                                    sostojaniektpController.text.isNotEmpty)
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
                        value: object.sostojaniektp,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.rogruntktp = value;
                              },
                              controller: rogruntktpController,
                              focusNode: focusNode108,
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
                                labelText: 'Ro грунта',
                                hintText: 'Ro грунта',
                                helperText: 'Ом*м',
                                prefixIcon: Icon(
                                  Icons.blur_on_sharp,
                                  color: focusNode108.hasFocus ||
                                          rogruntktpController.text.isNotEmpty
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
                                  focusNode108.requestFocus();
                                  sumsopraz();
                                  object.rogruntktp = value;
                                  object.rogruntktp = rogruntktpController.text;
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
                                object.soprotzzktp = value;
                              },
                              controller: soprotzzktpController,
                              focusNode: focusNode109,
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
                                labelText: 'Rраст ЗЗ',
                                hintText: 'Rраст ЗЗ',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.show_chart_sharp,
                                  color: focusNode109.hasFocus ||
                                          soprotzzktpController.text.isNotEmpty
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
                                  focusNode109.requestFocus();
                                  sumsopraz();
                                  object.soprotzzktp = value;
                                  object.soprotzzktp =
                                      soprotzzktpController.text;
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
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.tipshr = value;
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
                        controller: tipshrController,
                        focusNode: focusNode104,
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
                          labelText: 'Тип ЩР',
                          hintText: 'Введите наименование',
                          prefixIcon: Icon(
                            Icons.calendar_today_sharp,
                            color: focusNode104.hasFocus ||
                                    tipshrController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              tipshrController.clear();
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
                            focusNode104.requestFocus();
                            object.tipshr = value;
                            object.tipshr = tipshrController.text;
                          });
                        },
                      ),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode105,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojanieshr = value;
                            object.sostojanieshr = sostojanieshrController.text;
                          });
                          focusNode105.requestFocus();
                          object.sostojanieshr = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние ЩР',
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
                            color: (focusNode105.hasFocus ||
                                    sostojanieshrController.text.isNotEmpty)
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
                        value: object.sostojanieshr,
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
                      TextFormField(
                        maxLength: 1000,
                        focusNode: focusNode120,
                        onSaved: (value) {
                          object.zamechkl1 = value;
                        },
                        onChanged: (String value) {
                          setState(() {
                            focusNode120.requestFocus();
                            object.zamechkl1 = value;
                            object.zamechkl1 = zamechkl1Controller.text;
                          });
                        },
                        controller: zamechkl1Controller,
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
                              zamechkl1Controller.clear();
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
                                      _imageelobor = value;
                                      if (_5formKey.currentState.validate()) {
                                        _5formKey.currentState.save();
                                        if (_imageelobor != null) {
                                          final Directory extDir =
                                              await getApplicationDocumentsDirectory();
                                          final String dirPath =
                                              '${extDir.path}/Pictures/flutter';
                                          await Directory(dirPath)
                                              .create(recursive: true);
                                          final String filePath =
                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                          await _imageelobor.copy(filePath);
                                          object.fotokl1 = filePath;
                                          print(
                                              'сделали: ${object.fotokl1.toString()}');
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
                                            imagePath: object.fotokl1)),
                                  );
                                },
                                child: Center(
                                  child: object.fotokl1 != null
                                      ? Image.file(
                                          File(object.fotokl1),
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
                      SizedBox(height: 5),
                      Divider(thickness: 4),
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
                            'ЛЭП',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Питающая линия',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode113,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojanievl1 = value;
                            object.sostojanievl1 = sostojanievl1Controller.text;
                          });
                          focusNode113.requestFocus();
                          object.sostojanievl1 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние питающей ВЛ',
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
                            color: (focusNode113.hasFocus ||
                                    sostojanievl1Controller.text.isNotEmpty)
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
                        value: object.sostojanievl1,
                      ),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode114,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojaniekl1 = value;
                            object.sostojaniekl1 = sostojaniekl1Controller.text;
                          });
                          focusNode114.requestFocus();
                          object.sostojaniekl1 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние питающей КЛ',
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
                            color: (focusNode114.hasFocus ||
                                    sostojaniekl1Controller.text.isNotEmpty)
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
                        value: object.sostojaniekl1,
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Анодная линия',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode115,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojanievl2 = value;
                            object.sostojanievl2 = sostojanievl2Controller.text;
                          });
                          focusNode115.requestFocus();
                          object.sostojanievl2 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние анодной ВЛ',
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
                            color: (focusNode115.hasFocus ||
                                    sostojanievl2Controller.text.isNotEmpty)
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
                        value: object.sostojanievl2,
                      ),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode116,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojaniekl2 = value;
                            object.sostojaniekl2 = sostojaniekl2Controller.text;
                          });
                          focusNode116.requestFocus();
                          object.sostojaniekl2 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние анодной КЛ',
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
                            color: (focusNode116.hasFocus ||
                                    sostojaniekl2Controller.text.isNotEmpty)
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
                        value: object.sostojaniekl2,
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Катодная линия',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode117,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojanievl3 = value;
                            object.sostojanievl3 = sostojanievl3Controller.text;
                          });
                          focusNode117.requestFocus();
                          object.sostojanievl3 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние катодной ВЛ',
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
                            color: (focusNode117.hasFocus ||
                                    sostojanievl3Controller.text.isNotEmpty)
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
                        value: object.sostojanievl3,
                      ),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode118,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojaniekl3 = value;
                            object.sostojaniekl3 = sostojaniekl3Controller.text;
                          });
                          focusNode118.requestFocus();
                          object.sostojaniekl3 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние катодной КЛ',
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
                            color: (focusNode118.hasFocus ||
                                    sostojaniekl3Controller.text.isNotEmpty)
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
                        value: object.sostojaniekl3,
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
                      TextFormField(
                        maxLength: 1000,
                        focusNode: focusNode119,
                        onSaved: (value) {
                          object.zamechvl1 = value;
                        },
                        onChanged: (String value) {
                          setState(() {
                            focusNode119.requestFocus();
                            object.zamechvl1 = value;
                            object.zamechvl1 = zamechvl1Controller.text;
                          });
                        },
                        controller: zamechvl1Controller,
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
                              zamechvl1Controller.clear();
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
                                      _imagevl = value;
                                      if (_6formKey.currentState.validate()) {
                                        _6formKey.currentState.save();
                                        if (_imagevl != null) {
                                          final Directory extDir =
                                              await getApplicationDocumentsDirectory();
                                          final String dirPath =
                                              '${extDir.path}/Pictures/flutter';
                                          await Directory(dirPath)
                                              .create(recursive: true);
                                          final String filePath =
                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                          await _imagevl.copy(filePath);
                                          object.fotovl1 = filePath;
                                          print(
                                              'сделали: ${object.fotovl1.toString()}');
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
                                            imagePath: object.fotovl1)),
                                  );
                                },
                                child: Center(
                                  child: object.fotovl1 != null
                                      ? Image.file(
                                          File(object.fotovl1),
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
                      SizedBox(height: 5),
                      Divider(thickness: 4),
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
                            'ТЕРРИТОРИЯ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode122,
                        onChanged: (String value) {
                          setState(() {
                            object.provodvl1 = value;
                            object.provodvl1 = provodvl1Controller.text;
                          });
                          focusNode122.requestFocus();
                          object.provodvl1 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние территории',
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
                            color: (focusNode122.hasFocus ||
                                    provodvl1Controller.text.isNotEmpty)
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
                        value: object.provodvl1,
                      ),
                      SizedBox(height: 5),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode123,
                        onChanged: (String value) {
                          setState(() {
                            object.provodvl2 = value;
                            object.provodvl2 = provodvl2Controller.text;
                          });
                          focusNode123.requestFocus();
                          object.provodvl2 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние ограждения',
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
                            color: (focusNode123.hasFocus ||
                                    provodvl2Controller.text.isNotEmpty)
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
                        value: object.provodvl2,
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
                      TextFormField(
                        maxLength: 1000,
                        focusNode: focusNode121,
                        onSaved: (value) {
                          object.zamechkl2 = value;
                        },
                        onChanged: (String value) {
                          setState(() {
                            focusNode121.requestFocus();
                            object.zamechkl2 = value;
                            object.zamechkl2 = zamechkl2Controller.text;
                          });
                        },
                        controller: zamechkl2Controller,
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
                              zamechkl2Controller.clear();
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
                                      _imagedrug = value;
                                      if (_7formKey.currentState.validate()) {
                                        _7formKey.currentState.save();
                                        if (_imagedrug != null) {
                                          final Directory extDir =
                                              await getApplicationDocumentsDirectory();
                                          final String dirPath =
                                              '${extDir.path}/Pictures/flutter';
                                          await Directory(dirPath)
                                              .create(recursive: true);
                                          final String filePath =
                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                          await _imagedrug.copy(filePath);
                                          object.fotokl2 = filePath;
                                          print(
                                              'сделали: ${object.fotokl2.toString()}');
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
                                            imagePath: object.fotokl2)),
                                  );
                                },
                                child: Center(
                                  child: object.fotokl2 != null
                                      ? Image.file(
                                          File(object.fotokl2),
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
                            'КАЛЬКУЛЯТОР ПРОСТОЕВ',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Время простоя: ${prostoi1Controller.text} ч',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Дата последнего ТО:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Сегодня:',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            focusNode: focusNode125,
                            onPressed: () async {
                              DateTime selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2015),
                                lastDate: datato1 ?? DateTime(2100),
                                locale: const Locale("ru",
                                    "RU"), // Установите локаль на русский язык
                              );

                              if (selectedDate != null) {
                                setState(() {
                                  // prostoiel();
                                  datato1 = selectedDate;
                                  datato1Controller.text =
                                      DateFormat('dd.MM.yyyy')
                                          .format(selectedDate);
                                  object.datato1 = datato1Controller.text;
                                });
                              }
                            },
                            icon: Icon(
                              Icons.calendar_month_outlined,
                              color: focusNode125.hasFocus ||
                                      datato1Controller.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              datato1Controller.text,
                              style: TextStyle(
                                fontSize: 22,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: IconButton(
                              focusNode: focusNode124,
                              onPressed: () async {
                                DateTime selectedDate = await showDatePicker(
                                  context: context,
                                  initialDate: datato2 ?? DateTime.now(),
                                  firstDate: datato1 ?? DateTime.now(),
                                  lastDate: DateTime(2100),
                                  locale: const Locale("ru",
                                      "RU"), // Установите локаль на русский язык
                                );

                                if (selectedDate != null) {
                                  setState(() {
                                    // prostoiel();
                                    datato2 = selectedDate;
                                    datato2Controller.text =
                                        DateFormat('dd.MM.yyyy')
                                            .format(selectedDate);
                                    object.datato2 = datato2Controller.text;
                                  });
                                }
                              },
                              icon: Icon(
                                Icons.calendar_month_outlined,
                                color: focusNode124.hasFocus ||
                                        datato2Controller.text.isNotEmpty
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                                size: 32,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              datato2Controller.text,
                              style: TextStyle(
                                fontSize: 22,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300,
                              ),
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
                                object.elekschetchik1 = value;
                              },
                              controller: elekschetchik1Controller,
                              focusNode: focusNode126,
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
                                labelText: 'эл.счётч',
                                hintText: 'эл.счётч',
                                helperText: 'кВт*ч',
                                prefixIcon: Icon(
                                  Icons.restore_sharp,
                                  color: focusNode126.hasFocus ||
                                          elekschetchik1Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    elekschetchik1Controller.clear();
                                  },
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Color.fromRGBO(187, 30, 16, 1.0),
                                  ),
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
                                  focusNode126.requestFocus();
                                  prostoiel();
                                  object.elekschetchik1 = value;
                                  object.elekschetchik1 =
                                      elekschetchik1Controller.text;
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
                                object.elekschetchik2 = value;
                              },
                              controller: elekschetchik2Controller,
                              focusNode: focusNode127,
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
                                labelText: 'эл.счётч',
                                hintText: 'эл.счётч',
                                helperText: 'кВт*ч',
                                prefixIcon: Icon(
                                  Icons.update_sharp,
                                  color: focusNode127.hasFocus ||
                                          elekschetchik2Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    elekschetchik2Controller.clear();
                                  },
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Color.fromRGBO(187, 30, 16, 1.0),
                                  ),
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
                                  focusNode127.requestFocus();
                                  prostoiel();
                                  object.elekschetchik2 = value;
                                  object.elekschetchik2 =
                                      elekschetchik2Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.potrmoschnost = value;
                        },
                        controller: potrmoschnostController,
                        focusNode: focusNode128,
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
                          labelText: 'Потребляемая мощность',
                          hintText: 'Введите значение',
                          helperText: 'кВт',
                          prefixIcon: Icon(
                            Icons.info_sharp,
                            color: focusNode128.hasFocus ||
                                    potrmoschnostController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              potrmoschnostController.clear();
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
                            focusNode128.requestFocus();
                            prostoiel();
                            object.potrmoschnost = value;
                            object.potrmoschnost = potrmoschnostController.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: ExpandableFab(
          distance: 112,
          children: [
            ActionButton(
              onPressed: () => confirmDelete(),
              icon: const Icon(Icons.delete_forever_outlined),
            ),
            ActionButton(
              onPressed: () {
                List<GlobalKey<FormState>> formKeys = [
                  _1formKey,
                  _2formKey,
                  _3formKey,
                  _4formKey,
                  _5formKey,
                  _6formKey,
                  _7formKey,
                  _8formKey,
                  _9formKey
                ];
                for (final formKey in formKeys) {
                  if (formKey.currentState != null &&
                      formKey.currentState.validate()) {
                    saveForm(formKey);
                    Navigator.pop(context, true);
                  }
                }
              },
              icon: const Icon(Icons.save_outlined),
            ),
            ActionButton(
              onPressed: () => editExcelFile(),
              icon: const Icon(Icons.assignment_outlined),
            ),
          ],
        ),
      ),
    );
  }

  void _showAction(BuildContext context, int index) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CLOSE'),
            ),
          ],
        );
      },
    );
  }

  void editExcelFile() async {
    try {
      // Получаем путь к файлу Excel в папке assets
      ByteData data = await rootBundle.load('assets/form/TOUKZ.xlsx');
      List<int> bytes = data.buffer.asUint8List();

      // Открываем файл Excel
      var excel = Excel.decodeBytes(bytes);

      // Получаем страницу, на которой нужно вставить данные
      var sheet = excel['TOUKZ'];

      // Вставляем данные в определенные ячейки

      sheet.cell(CellIndex.indexByString("A1")).value =
          'Протокол обслуживания УКЗ № ${object.title}' ?? '-';
      sheet.cell(CellIndex.indexByString("A2")).value =
          'Дата ${object.date1}' ?? '-';

      sheet.cell(CellIndex.indexByString("B4")).value = object.markaskz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B5")).value =
          object.sostojanieskz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B6")).value =
          object.potencialskz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B8")).value =
          object.naprrabskz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B10")).value =
          object.naprmaxskz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B11")).value =
          object.tokrabskz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B13")).value =
          object.tokmaxskz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B14")).value =
          object.zapaspotokuskz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B15")).value =
          '${object.shuntnaprskz1 ?? '-'}-${object.shunttokskz1 ?? '-'}';
      sheet.cell(CellIndex.indexByString("B16")).value =
          object.shuntnaprskz2 ?? '-';
      sheet.cell(CellIndex.indexByString("B17")).value =
          object.soprotskz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B18")).value =
          object.schetelec1 ?? '-';
      sheet.cell(CellIndex.indexByString("B19")).value =
          object.schetnarab1 ?? '-';
      sheet.cell(CellIndex.indexByString("B20")).value =
          object.schetzasch1 ?? '-';

      sheet.cell(CellIndex.indexByString("D4")).value = object.kipname1 ?? '-';
      sheet.cell(CellIndex.indexByString("D5")).value =
          object.sostojaniekip1 ?? '-';
      sheet.cell(CellIndex.indexByString("D6")).value =
          object.peremsost1 ?? '-';
      sheet.cell(CellIndex.indexByString("D7")).value =
          object.potenctdvklsum1 ?? '-';
      sheet.cell(CellIndex.indexByString("D8")).value =
          object.potenctdvklpol1 ?? '-';
      sheet.cell(CellIndex.indexByString("D9")).value =
          object.potenctdotklsum1 ?? '-';
      sheet.cell(CellIndex.indexByString("D10")).value =
          object.potenctdotklpol1 ?? '-';
      sheet.cell(CellIndex.indexByString("D11")).value =
          object.datchkorr1 ?? '-';

      sheet.cell(CellIndex.indexByString("F4")).value = object.kipname2 ?? '-';
      sheet.cell(CellIndex.indexByString("F5")).value =
          object.sostojaniekip2 ?? '-';
      sheet.cell(CellIndex.indexByString("F6")).value =
          object.peremsost2 ?? '-';
      sheet.cell(CellIndex.indexByString("F7")).value =
          object.potenctdvklsum2 ?? '-';
      sheet.cell(CellIndex.indexByString("F8")).value =
          object.potenctdvklpol2 ?? '-';
      sheet.cell(CellIndex.indexByString("F9")).value =
          object.potenctdotklsum2 ?? '-';
      sheet.cell(CellIndex.indexByString("F10")).value =
          object.potenctdotklpol2 ?? '-';
      sheet.cell(CellIndex.indexByString("F11")).value =
          object.datchkorr2 ?? '-';

      sheet.cell(CellIndex.indexByString("D13")).value = object.kipname3 ?? '-';
      sheet.cell(CellIndex.indexByString("D14")).value =
          object.sostojaniekip3 ?? '-';
      sheet.cell(CellIndex.indexByString("D15")).value =
          object.peremsost3 ?? '-';
      sheet.cell(CellIndex.indexByString("D16")).value =
          object.potenctdvklsum3 ?? '-';
      sheet.cell(CellIndex.indexByString("D17")).value =
          object.potenctdvklpol3 ?? '-';
      sheet.cell(CellIndex.indexByString("D18")).value =
          object.potenctdotklsum3 ?? '-';
      sheet.cell(CellIndex.indexByString("D19")).value =
          object.potenctdotklpol3 ?? '-';
      sheet.cell(CellIndex.indexByString("D20")).value =
          object.datchkorr3 ?? '-';

      sheet.cell(CellIndex.indexByString("F13")).value = object.kipname4 ?? '-';
      sheet.cell(CellIndex.indexByString("F14")).value =
          object.sostojaniekip4 ?? '-';
      sheet.cell(CellIndex.indexByString("F15")).value =
          object.peremsost4 ?? '-';
      sheet.cell(CellIndex.indexByString("F16")).value =
          object.potenctdvklsum4 ?? '-';
      sheet.cell(CellIndex.indexByString("F17")).value =
          object.potenctdvklpol4 ?? '-';
      sheet.cell(CellIndex.indexByString("F18")).value =
          object.potenctdotklsum4 ?? '-';
      sheet.cell(CellIndex.indexByString("F19")).value =
          object.potenctdotklpol4 ?? '-';
      sheet.cell(CellIndex.indexByString("F20")).value =
          object.datchkorr4 ?? '-';

      sheet.cell(CellIndex.indexByString("H4")).value = object.bdr1 ?? '-';
      sheet.cell(CellIndex.indexByString("H5")).value =
          object.sostojaniebdr1 ?? '-';
      sheet.cell(CellIndex.indexByString("H6")).value = object.tok1bdr1 ?? '-';
      sheet.cell(CellIndex.indexByString("H7")).value = object.tok2bdr1 ?? '-';
      sheet.cell(CellIndex.indexByString("H8")).value = object.tok3bdr1 ?? '-';
      sheet.cell(CellIndex.indexByString("H9")).value = object.tok4bdr1 ?? '-';

      sheet.cell(CellIndex.indexByString("H13")).value = object.bdr2 ?? '-';
      sheet.cell(CellIndex.indexByString("H14")).value =
          object.sostojaniebdr2 ?? '-';
      sheet.cell(CellIndex.indexByString("H15")).value = object.tok1bdr2 ?? '-';
      sheet.cell(CellIndex.indexByString("H16")).value = object.tok2bdr2 ?? '-';
      sheet.cell(CellIndex.indexByString("H17")).value = object.tok3bdr2 ?? '-';
      sheet.cell(CellIndex.indexByString("H18")).value = object.tok4bdr2 ?? '-';

      sheet.cell(CellIndex.indexByString("J4")).value = object.markaaz ?? '-';
      sheet.cell(CellIndex.indexByString("J5")).value =
          object.sostojanieaz ?? '-';
      sheet.cell(CellIndex.indexByString("J7")).value = object.tok5az ?? '-';
      sheet.cell(CellIndex.indexByString("J8")).value = object.tok1az ?? '-';
      sheet.cell(CellIndex.indexByString("J9")).value = object.tok2az ?? '-';
      sheet.cell(CellIndex.indexByString("J10")).value = object.tok3az ?? '-';
      sheet.cell(CellIndex.indexByString("J11")).value = object.tok3az ?? '-';
      sheet.cell(CellIndex.indexByString("J12")).value =
          object.soprrast5az ?? '-';
      sheet.cell(CellIndex.indexByString("J13")).value =
          object.soprrast1az ?? '-';
      sheet.cell(CellIndex.indexByString("J14")).value =
          object.soprrast2az ?? '-';
      sheet.cell(CellIndex.indexByString("J15")).value =
          object.soprrast3az ?? '-';
      sheet.cell(CellIndex.indexByString("J16")).value =
          object.soprrast4az ?? '-';
      sheet.cell(CellIndex.indexByString("J17")).value =
          object.rogruntaz ?? '-';
      sheet.cell(CellIndex.indexByString("J18")).value =
          object.rogruntktp ?? '-';
      sheet.cell(CellIndex.indexByString("J19")).value =
          object.rogruntraz ?? '-';

      sheet.cell(CellIndex.indexByString("L4")).value =
          object.sostojaniektp ?? '-';
      sheet.cell(CellIndex.indexByString("L5")).value =
          object.sostojanieshr ?? '-';
      sheet.cell(CellIndex.indexByString("L7")).value =
          object.soprotzzktp ?? '-';
      sheet.cell(CellIndex.indexByString("L8")).value =
          object.soprotzzraz ?? '-';

      sheet.cell(CellIndex.indexByString("L10")).value =
          object.sostojanievl1 ?? '-';
      sheet.cell(CellIndex.indexByString("L11")).value =
          object.sostojaniekl1 ?? '-';

      sheet.cell(CellIndex.indexByString("L13")).value =
          object.sostojanievl2 ?? '-';
      sheet.cell(CellIndex.indexByString("L14")).value =
          object.sostojaniekl2 ?? '-';

      sheet.cell(CellIndex.indexByString("L16")).value =
          object.sostojanievl3 ?? '-';
      sheet.cell(CellIndex.indexByString("L17")).value =
          object.sostojaniekl3 ?? '-';

      sheet.cell(CellIndex.indexByString("L19")).value =
          object.provodvl2 ?? '-';
      sheet.cell(CellIndex.indexByString("L20")).value =
          object.provodvl1 ?? '-';

      sheet.cell(CellIndex.indexByString("A22")).value =
          'СКЗ 1:${object.zamechskz1 != null && object.zamechskz1.isNotEmpty ? object.zamechskz1 : 'нет замечаний'}; СКЗ 2:${object.zamechskz2 != null && object.zamechskz2.isNotEmpty ? object.zamechskz2 : 'нет замечаний'};';

      // Получаем путь к папке "Downloads" на внешнем хранилище
      Directory externalStorageDirectory = await getExternalStorageDirectory();
      String downloadsFolderPath = '${externalStorageDirectory.path}';

      // Получаем путь к сохраненному файлу
      var newFile = '${object.title}.xlsx';
      var file = File('$downloadsFolderPath/$newFile');
      var excelBytes = excel.encode();
      await file.writeAsBytes(excelBytes);
      String filePath = '$downloadsFolderPath/$newFile';

      // Открываем новый файл
      await OpenFile.open(filePath);
    } catch (e) {
      print('Ошибка при открытии файла: $e');
    }
  }

  void soprotskz1() {
    double napr = naprrabskz1Controller.text.isNotEmpty &&
            double.tryParse(naprrabskz1Controller.text.replaceAll(',', '.')) !=
                null
        ? double.parse(naprrabskz1Controller.text.replaceAll(',', '.'))
        : 0.0;
    double tok = tokrabskz1Controller.text.isNotEmpty &&
            double.tryParse(tokrabskz1Controller.text.replaceAll(',', '.')) !=
                null
        ? double.parse(tokrabskz1Controller.text.replaceAll(',', '.'))
        : 0.0;

    if (tok != 0) {
      double soprotskz = napr / tok;

      setState(() {
        soprotskz1Controller.text = soprotskz.toStringAsFixed(2);
        object.soprotskz1 = soprotskz1Controller.text;
      });
    } else {
      setState(() {
        soprotskz1Controller.text = '0.00';
        object.soprotskz1 = '0.00';
      });
    }
  }

  void soprotskz2() {
    double napr = naprrabskz2Controller.text.isNotEmpty &&
            double.tryParse(naprrabskz2Controller.text.replaceAll(',', '.')) !=
                null
        ? double.parse(naprrabskz2Controller.text.replaceAll(',', '.'))
        : 0.0;
    double tok = tokrabskz2Controller.text.isNotEmpty &&
            double.tryParse(tokrabskz2Controller.text.replaceAll(',', '.')) !=
                null
        ? double.parse(tokrabskz2Controller.text.replaceAll(',', '.'))
        : 0.0;

    if (tok != 0) {
      double soprotskz = napr / tok;

      setState(() {
        soprotskz2Controller.text = soprotskz.toStringAsFixed(2);
        object.soprotskz2 = soprotskz2Controller.text;
      });
    } else {
      setState(() {
        soprotskz2Controller.text = '0.00';
        object.soprotskz2 = '0.00';
      });
    }
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

  void prostoiel() {
    double e1 = elekschetchik1Controller.text.isNotEmpty
        ? double.parse(elekschetchik1Controller.text.replaceAll(',', '.'))
        : 0.0;

    double e2 = elekschetchik2Controller.text.isNotEmpty
        ? double.parse(elekschetchik2Controller.text.replaceAll(',', '.'))
        : 0.0;

    List<String> dateParts1 = datato1Controller.text.split('.');
    String formattedDate1 =
        '${dateParts1[2]}-${dateParts1[1]}-${dateParts1[0]}T00:00:00.000Z';

    DateTime date1 = DateTime.parse(formattedDate1);

    print('Преобразованная дата 1: $date1');

    List<String> dateParts2 = datato2Controller.text.split('.');
    String formattedDate2 =
        '${dateParts2[2]}-${dateParts2[1]}-${dateParts2[0]}T00:00:00.000Z';

    DateTime date2 = DateTime.parse(formattedDate2);

    print('Преобразованная дата 2: $date2');

    Duration difference = date2.difference(date1);
    int daysDifference = difference.inDays;

    print('Разница между датами в днях: $daysDifference');

    double m1 = potrmoschnostController.text.isNotEmpty
        ? double.parse(potrmoschnostController.text.replaceAll(',', '.'))
        : 0.0;

    double prostoi = (((daysDifference) * 24) * m1) - (e2 + e1);

    setState(() {
      prostoi1Controller.text = prostoi.toStringAsFixed(0);
      object.prostoi1 = prostoi1Controller.text;
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

  void saveForm(GlobalKey<FormState> formKey) {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      object.todoDate = DateFormat.yMMMMd().format(DateTime.now());
      if (object.id != null) {
        helper.updateUkz(object);
      } else {
        helper.insertUkz(object);
      }
    }
  }
}

@immutable
class ExpandableFab extends StatefulWidget {
  const ExpandableFab({
    this.initialOpen,
    @required this.distance,
    @required this.children,
  });

  final bool initialOpen;
  final double distance;
  final List<Widget> children;

  @override
  State<ExpandableFab> createState() => _ExpandableFabState();
}

class _ExpandableFabState extends State<ExpandableFab>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _expandAnimation;
  bool _open = false;

  @override
  void initState() {
    super.initState();
    _open = widget.initialOpen ?? false;
    _controller = AnimationController(
      value: _open ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      curve: Curves.fastOutSlowIn,
      reverseCurve: Curves.easeOutQuad,
      parent: _controller,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _open = !_open;
      if (_open) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        alignment: Alignment.bottomRight,
        clipBehavior: Clip.none,
        children: [
          _buildTapToCloseFab(),
          ..._buildExpandingActionButtons(),
          _buildTapToOpenFab(),
        ],
      ),
    );
  }

  Widget _buildTapToCloseFab() {
    return SizedBox(
      width: 56,
      height: 56,
      child: Center(
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          elevation: 4,
          child: InkWell(
            onTap: _toggle,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.close,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildExpandingActionButtons() {
    final children = <Widget>[];
    final count = widget.children.length;
    final step = 90.0 / (count - 1);
    for (var i = 0, angleInDegrees = 0.0;
        i < count;
        i++, angleInDegrees += step) {
      children.add(
        _ExpandingActionButton(
          directionInDegrees: angleInDegrees,
          maxDistance: widget.distance,
          progress: _expandAnimation,
          child: widget.children[i],
        ),
      );
    }
    return children;
  }

  Widget _buildTapToOpenFab() {
    return IgnorePointer(
      ignoring: _open,
      child: AnimatedContainer(
        transformAlignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
          _open ? 0.7 : 1.0,
          _open ? 0.7 : 1.0,
          1.0,
        ),
        duration: const Duration(milliseconds: 250),
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
        child: AnimatedOpacity(
          opacity: _open ? 0.0 : 1.0,
          curve: const Interval(0.25, 1.0, curve: Curves.easeInOut),
          duration: const Duration(milliseconds: 250),
          child: FloatingActionButton(
            onPressed: _toggle,
            child: const Icon(Icons.dehaze_sharp),
          ),
        ),
      ),
    );
  }
}

@immutable
class _ExpandingActionButton extends StatelessWidget {
  const _ExpandingActionButton({
    @required this.directionInDegrees,
    @required this.maxDistance,
    @required this.progress,
    @required this.child,
  });

  final double directionInDegrees;
  final double maxDistance;
  final Animation<double> progress;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: progress,
      builder: (context, child) {
        final offset = Offset.fromDirection(
          directionInDegrees * (math.pi / 180.0),
          progress.value * maxDistance,
        );
        return Positioned(
          right: 4.0 + offset.dx,
          bottom: 4.0 + offset.dy,
          child: Transform.rotate(
            angle: (1.0 - progress.value) * math.pi / 2,
            child: child,
          ),
        );
      },
      child: FadeTransition(
        opacity: progress,
        child: child,
      ),
    );
  }
}

@immutable
class ActionButton extends StatelessWidget {
  const ActionButton({
    this.onPressed,
    @required this.icon,
  });

  final VoidCallback onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      color: theme.colorScheme.secondary,
      elevation: 4,
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        color: theme.colorScheme.onSecondary,
      ),
    );
  }
}

@immutable
class FakeItem extends StatelessWidget {
  const FakeItem({
    @required this.isBig,
  });

  final bool isBig;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      height: isBig ? 128 : 36,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.grey.shade300,
      ),
    );
  }
}
