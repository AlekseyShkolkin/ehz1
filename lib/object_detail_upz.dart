import 'dart:io';
import 'dart:math';

import './camera_page_ukz.dart';
import './image_screen.dart';
import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import './model_upz.dart';
import './object_list_upz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ObjectDetailUpz extends StatefulWidget {
  const ObjectDetailUpz({Key key, @required this.object});
  final Object object;
  @override
  State<StatefulWidget> createState() => ObjectDetailUpzState(object);
}

class ObjectDetailUpzState extends State<ObjectDetailUpz> {
  Upz object;
  String locationData = '';

  DateTime dateUpz; // Дата выбранная для date
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

  File _imageupz;

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

  final List<String> _tipkontrol = [
    'КИП',
    'БСЗ',
    'Ковер',
    'Неизвестно',
  ];

  TextEditingController idController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  TextEditingController kontrolController = TextEditingController();
  TextEditingController kolvoprotvgruppeController = TextEditingController();
  TextEditingController kolvoprotvgruppe1Controller = TextEditingController();
  TextEditingController kolvoprotvgruppe2Controller = TextEditingController();
  TextEditingController zamechupzController = TextEditingController();
  TextEditingController sostojanieupzController = TextEditingController();
  TextEditingController peremsostController = TextEditingController();
  TextEditingController potencialvklsummController = TextEditingController();
  TextEditingController potencialvklpolyarController = TextEditingController();
  TextEditingController potencialprotController = TextEditingController();
  TextEditingController edsupzController = TextEditingController();
  TextEditingController tokupzController = TextEditingController();
  TextEditingController soprrastController = TextEditingController();
  TextEditingController udsoprgruntaController = TextEditingController();
  TextEditingController potencialvklsumm1Controller = TextEditingController();
  TextEditingController potencialvklpolyar1Controller = TextEditingController();
  TextEditingController potencialprot1Controller = TextEditingController();
  TextEditingController edsupz1Controller = TextEditingController();
  TextEditingController tokupz1Controller = TextEditingController();
  TextEditingController soprrast1Controller = TextEditingController();
  TextEditingController udsoprgrunta1Controller = TextEditingController();
  TextEditingController potencialvklsumm2Controller = TextEditingController();
  TextEditingController potencialvklpolyar2Controller = TextEditingController();
  TextEditingController potencialprot2Controller = TextEditingController();
  TextEditingController edsupz2Controller = TextEditingController();
  TextEditingController tokupz2Controller = TextEditingController();
  TextEditingController soprrast2Controller = TextEditingController();
  TextEditingController udsoprgrunta2Controller = TextEditingController();
  TextEditingController soprcepiupzController = TextEditingController();
  TextEditingController soprcepiupz1Controller = TextEditingController();
  TextEditingController soprcepiupz2Controller = TextEditingController();

  bool isEdit;
  final GlobalKey<FormState> _1formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _2formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _3formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    isEdit = object.title == '' ? false : true;
    titleController.text = object.title ?? '';
    dateController.text = object.date1 ?? '';

    kontrolController.text = object.kontrol ?? '';
    kolvoprotvgruppeController.text = object.kolvoprotvgruppe ?? '';
    kolvoprotvgruppe1Controller.text = object.kolvoprotvgruppe1 ?? '';
    kolvoprotvgruppe2Controller.text = object.kolvoprotvgruppe2 ?? '';
    dateController.text = object.date1 ?? '';
    zamechupzController.text = object.zamechupz ?? '';
    sostojanieupzController.text = object.sostojanieupz ?? '';
    peremsostController.text = object.peremsost ?? '';
    potencialvklsummController.text = object.potencialvklsumm ?? '';
    potencialvklpolyarController.text = object.potencialvklpolyar ?? '';
    potencialprotController.text = object.potencialprot ?? '';
    edsupzController.text = object.edsupz ?? '';
    tokupzController.text = object.tokupz ?? '';
    soprrastController.text = object.soprrast ?? '';
    udsoprgruntaController.text = object.udsoprgrunta ?? '';
    potencialvklsumm1Controller.text = object.potencialvklsumm1 ?? '';
    potencialvklpolyar1Controller.text = object.potencialvklpolyar1 ?? '';
    potencialprot1Controller.text = object.potencialprot1 ?? '';
    edsupz1Controller.text = object.edsupz1 ?? '';
    tokupz1Controller.text = object.tokupz1 ?? '';
    soprrast1Controller.text = object.soprrast1 ?? '';
    udsoprgrunta1Controller.text = object.udsoprgrunta1 ?? '';
    potencialvklsumm2Controller.text = object.potencialvklsumm2 ?? '';
    potencialvklpolyar2Controller.text = object.potencialvklpolyar2 ?? '';
    potencialprot2Controller.text = object.potencialprot2 ?? '';
    edsupz2Controller.text = object.edsupz2 ?? '';
    tokupz2Controller.text = object.tokupz2 ?? '';
    soprrast2Controller.text = object.soprrast2 ?? '';
    udsoprgrunta2Controller.text = object.udsoprgrunta2 ?? '';
    soprcepiupzController.text = object.soprcepiupz ?? '';
    soprcepiupz1Controller.text = object.soprcepiupz1 ?? '';
    soprcepiupz2Controller.text = object.soprcepiupz2 ?? '';
  }

  ObjectDetailUpzState(this.object);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 16.0,
      color: Colors.black54,
      fontWeight: FontWeight.w600,
    );

    return DefaultTabController(
      length: 3,
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
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.delete_outline_outlined,
                          color: Theme.of(context).primaryColor,
                          // color: Color.fromRGBO(187, 30, 16, 1.0),
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
                          // color: Theme.of(context).colorScheme.secondary,
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
                          // color: Theme.of(context).colorScheme.secondary,
                          size: 32,
                        ),
                        onPressed: () {
                          List<GlobalKey<FormState>> formKeys = [
                            _1formKey,
                            _2formKey,
                            _3formKey,
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
                  Icons.linear_scale_rounded,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.filter_1_outlined,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.filter_2_outlined,
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
                            'УСТАНОВКА ПРОТЕКТОРНОЙ ЗАЩИТЫ',
                            style: TextStyle(
                                fontSize: 16,
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
                                lastDate: dateUpz ?? DateTime(2100),
                                locale: const Locale("ru",
                                    "RU"), // Установите локаль на русский язык
                              );

                              if (selectedDate != null) {
                                setState(() {
                                  dateUpz = selectedDate;
                                  dateController.text = DateFormat('dd.MM.yyyy')
                                      .format(selectedDate);
                                  object.date1 = dateController.text;
                                });
                              }
                            },
                            icon: Icon(
                              Icons.calendar_month_outlined,
                              color: focusNode2.hasFocus ||
                                      dateController.text.isNotEmpty
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              size: 32,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            // alignment: Alignment.center,
                            child: Text(
                              dateController.text,
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
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode5,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojanieupz = value;
                            object.sostojanieupz = sostojanieupzController.text;
                          });
                          focusNode5.requestFocus();
                          object.sostojanieupz = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние УПЗ',
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
                            color: (focusNode5.hasFocus ||
                                    sostojanieupzController.text.isNotEmpty)
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
                        value: object.sostojanieupz,
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode3,
                        onChanged: (String value) {
                          setState(() {
                            object.kontrol = value;
                            object.kontrol = kontrolController.text;
                          });
                          focusNode3.requestFocus();
                          object.kontrol = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Тип контроля',
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
                            color: (focusNode3.hasFocus ||
                                    kontrolController.text.isNotEmpty)
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
                        items: _tipkontrol.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.kontrol,
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.kolvoprotvgruppe = value;
                        },
                        controller: kolvoprotvgruppeController,
                        focusNode: focusNode4,
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
                          labelText: 'Количество протекторов УПЗ',
                          hintText: 'Введите или рассчитайте значение',
                          helperText: 'шт',
                          prefixIcon: Icon(
                            Icons.add_box_sharp,
                            color: focusNode4.hasFocus ||
                                    kolvoprotvgruppeController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              kolvoprotrash();
                            },
                            child: Icon(
                              Icons.calculate_sharp,
                              color: Colors.green,
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
                            focusNode4.requestFocus();
                            object.kolvoprotvgruppe = value;
                            object.kolvoprotvgruppe =
                                kolvoprotvgruppeController.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.peremsost = value;
                              },
                              controller: peremsostController,
                              focusNode: focusNode6,
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
                                labelText: 'Uперем',
                                hintText: 'Uперем',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.flash_on,
                                  color: focusNode6.hasFocus ||
                                          peremsostController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    peremsostController.clear();
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
                                  focusNode6.requestFocus();
                                  object.peremsost = value;
                                  object.peremsost = peremsostController.text;
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
                                object.tokupz = value;
                              },
                              controller: tokupzController,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Наименование не введено';
                                } else if (value.length > 6) {
                                  return 'Максимальная длина 6';
                                } else {
                                  return null;
                                }
                              },
                              focusNode: focusNode13,
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
                                labelText: 'Ток УПЗ',
                                hintText: 'Введите значение',
                                helperText: 'мА',
                                prefixIcon: Icon(
                                  Icons.maximize_sharp,
                                  color: focusNode13.hasFocus ||
                                          tokupzController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    tokupzController.clear();
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
                                  focusNode13.requestFocus();
                                  object.tokupz = value;
                                  object.tokupz = tokupzController.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.potencialvklsumm = value;
                              },
                              controller: potencialvklsummController,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Наименование не введено';
                                } else if (value.length > 6) {
                                  return 'Максимальная длина 6';
                                } else {
                                  return null;
                                }
                              },
                              focusNode: focusNode7,
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
                                labelText: 'Uсум',
                                hintText: 'Uсум',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.radio_button_checked_sharp,
                                  color: focusNode7.hasFocus ||
                                          potencialvklsummController
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencialvklsummController.clear();
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
                                  focusNode7.requestFocus();
                                  object.potencialvklsumm = value;
                                  object.potencialvklsumm =
                                      potencialvklsummController.text;
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
                                object.potencialvklpolyar = value;
                              },
                              controller: potencialvklpolyarController,
                              focusNode: focusNode8,
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
                                labelText: 'Uпол',
                                hintText: 'Uпол',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.trip_origin_sharp,
                                  color: focusNode8.hasFocus ||
                                          potencialvklpolyarController
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencialvklpolyarController.clear();
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
                                  focusNode8.requestFocus();
                                  object.potencialvklpolyar = value;
                                  object.potencialvklpolyar =
                                      potencialvklpolyarController.text;
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
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.potencialprot = value;
                              },
                              controller: potencialprotController,
                              focusNode: focusNode9,
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
                                labelText: 'Uупз',
                                hintText: 'Uупз',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.adjust_sharp,
                                  color: focusNode9.hasFocus ||
                                          potencialprotController
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencialprotController.clear();
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
                                  focusNode9.requestFocus();
                                  object.potencialprot = value;
                                  object.potencialprot =
                                      potencialprotController.text;
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
                                object.edsupz = value;
                              },
                              controller: edsupzController,
                              focusNode: focusNode10,
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
                                labelText: 'ЭДС УПЗ',
                                hintText: 'ЭДС УПЗ',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.fiber_smart_record,
                                  color: focusNode10.hasFocus ||
                                          edsupzController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    edsupzController.clear();
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
                                  focusNode10.requestFocus();
                                  object.edsupz = value;
                                  object.edsupz = edsupzController.text;
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
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.soprrast = value;
                              },
                              controller: soprrastController,
                              focusNode: focusNode11,
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
                                labelText: 'Rраст',
                                hintText: 'Rраст',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.filter_hdr_rounded,
                                  color: focusNode11.hasFocus ||
                                          soprrastController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    soprrastController.clear();
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
                                  focusNode11.requestFocus();
                                  object.soprrast = value;
                                  object.soprrast = soprrastController.text;
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
                                object.udsoprgrunta = value;
                              },
                              controller: udsoprgruntaController,
                              focusNode: focusNode12,
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
                                labelText: 'Rуд.гр.',
                                hintText: 'Rуд.гр.',
                                helperText: 'Ом*м',
                                prefixIcon: Icon(
                                  Icons.filter,
                                  color: focusNode12.hasFocus ||
                                          udsoprgruntaController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    udsoprgruntaController.clear();
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
                                  focusNode12.requestFocus();
                                  object.udsoprgrunta = value;
                                  object.udsoprgrunta =
                                      udsoprgruntaController.text;
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
                          object.soprcepiupz = value;
                        },
                        controller: soprcepiupzController,
                        focusNode: focusNode31,
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
                          labelText: 'R цепи УПЗ',
                          hintText: 'R цепи УПЗ',
                          helperText: 'Ом',
                          prefixIcon: Icon(
                            Icons.linear_scale,
                            color: focusNode31.hasFocus ||
                                    soprcepiupzController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              soprcepiupzController.clear();
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
                            focusNode31.requestFocus();
                            object.soprcepiupz = value;
                            object.soprcepiupz = soprcepiupzController.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
                      TextFormField(
                        maxLength: 1000,
                        focusNode: focusNode14,
                        onSaved: (value) {
                          object.zamechupz = value;
                        },
                        onChanged: (String value) {
                          setState(() {
                            focusNode14.requestFocus();
                            object.zamechupz = value;
                            object.zamechupz = zamechupzController.text;
                          });
                        },
                        controller: zamechupzController,
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
                              zamechupzController.clear();
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
                                      _imageupz = value;
                                      if (_1formKey.currentState.validate()) {
                                        _1formKey.currentState.save();
                                        if (_imageupz != null) {
                                          final Directory extDir =
                                              await getApplicationDocumentsDirectory();
                                          final String dirPath =
                                              '${extDir.path}/Pictures/ehz';
                                          await Directory(dirPath)
                                              .create(recursive: true);
                                          final String filePath =
                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                          await _imageupz.copy(filePath);
                                          object.fotoupz = filePath;
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
                                            imagePath: object.fotoupz)),
                                  );
                                },
                                child: Center(
                                  child: object.fotoupz != null
                                      ? Image.file(
                                          File(object.fotoupz),
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
                  key: _2formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'ГРУППА №1',
                            style: TextStyle(
                                fontSize: 22,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      TextFormField(
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.kolvoprotvgruppe1 = value;
                        },
                        controller: kolvoprotvgruppe1Controller,
                        focusNode: focusNode23,
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
                          labelText: 'Количество протекторов в группе',
                          hintText: 'Введите значение',
                          helperText: 'шт',
                          prefixIcon: Icon(
                            Icons.add_box_sharp,
                            color: focusNode23.hasFocus ||
                                    kolvoprotvgruppe1Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              kolvoprotvgruppe1Controller.clear();
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
                            focusNode23.requestFocus();
                            object.kolvoprotvgruppe1 = value;
                            object.kolvoprotvgruppe1 =
                                kolvoprotvgruppe1Controller.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.tokupz1 = value;
                        },
                        controller: tokupz1Controller,
                        focusNode: focusNode24,
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
                          labelText: 'Ток группы',
                          hintText: 'Введите значение',
                          helperText: 'мА',
                          prefixIcon: Icon(
                            Icons.maximize_sharp,
                            color: focusNode24.hasFocus ||
                                    tokupz1Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              tokupz1Controller.clear();
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
                            focusNode24.requestFocus();
                            object.tokupz1 = value;
                            object.tokupz1 = tokupz1Controller.text;
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
                                object.potencialvklsumm1 = value;
                              },
                              controller: potencialvklsumm1Controller,
                              focusNode: focusNode25,
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
                                labelText: 'Uсум',
                                hintText: 'Uсум',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.radio_button_checked_sharp,
                                  color: focusNode25.hasFocus ||
                                          potencialvklsumm1Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencialvklsumm1Controller.clear();
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
                                  focusNode25.requestFocus();
                                  object.potencialvklsumm1 = value;
                                  object.potencialvklsumm1 =
                                      potencialvklsumm1Controller.text;
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
                                object.potencialvklpolyar1 = value;
                              },
                              controller: potencialvklpolyar1Controller,
                              focusNode: focusNode26,
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
                                labelText: 'Uпол',
                                hintText: 'Uпол',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.trip_origin_sharp,
                                  color: focusNode26.hasFocus ||
                                          potencialvklpolyar1Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencialvklpolyar1Controller.clear();
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
                                  focusNode26.requestFocus();
                                  object.potencialvklpolyar1 = value;
                                  object.potencialvklpolyar1 =
                                      potencialvklpolyar1Controller.text;
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
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.potencialprot1 = value;
                              },
                              controller: potencialprot1Controller,
                              focusNode: focusNode27,
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
                                labelText: 'Uупз',
                                hintText: 'Uупз',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.adjust_sharp,
                                  color: focusNode27.hasFocus ||
                                          potencialprot1Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencialprot1Controller.clear();
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
                                  focusNode27.requestFocus();
                                  object.potencialprot1 = value;
                                  object.potencialprot1 =
                                      potencialprot1Controller.text;
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
                                object.edsupz1 = value;
                              },
                              controller: edsupz1Controller,
                              focusNode: focusNode28,
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
                                labelText: 'ЭДС группы',
                                hintText: 'ЭДС группы',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.fiber_smart_record,
                                  color: focusNode28.hasFocus ||
                                          edsupz1Controller.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    edsupz1Controller.clear();
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
                                  focusNode28.requestFocus();
                                  object.edsupz1 = value;
                                  object.edsupz1 = edsupz1Controller.text;
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
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.soprrast1 = value;
                              },
                              controller: soprrast1Controller,
                              focusNode: focusNode29,
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
                                labelText: 'Rраст',
                                hintText: 'Rраст',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.filter_hdr_rounded,
                                  color: focusNode29.hasFocus ||
                                          soprrast1Controller.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    soprrast1Controller.clear();
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
                                  focusNode29.requestFocus();
                                  object.soprrast1 = value;
                                  object.soprrast1 = soprrast1Controller.text;
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
                                object.soprcepiupz1 = value;
                              },
                              controller: soprcepiupz1Controller,
                              focusNode: focusNode32,
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
                                labelText: 'R цепи группы УПЗ',
                                hintText: 'R цепи группы УПЗ',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.linear_scale,
                                  color: focusNode32.hasFocus ||
                                          soprcepiupz1Controller.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    soprcepiupz1Controller.clear();
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
                                  focusNode32.requestFocus();
                                  object.soprcepiupz1 = value;
                                  object.soprcepiupz1 =
                                      soprcepiupz1Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
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
                  key: _3formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'ГРУППА №2',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      TextFormField(
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.kolvoprotvgruppe2 = value;
                        },
                        controller: kolvoprotvgruppe2Controller,
                        focusNode: focusNode22,
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
                          labelText: 'Количество протекторов в группе',
                          hintText: 'Введите значение',
                          helperText: 'шт',
                          prefixIcon: Icon(
                            Icons.add_box_sharp,
                            color: focusNode22.hasFocus ||
                                    kolvoprotvgruppe2Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              kolvoprotvgruppe2Controller.clear();
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
                            focusNode22.requestFocus();
                            object.kolvoprotvgruppe2 = value;
                            object.kolvoprotvgruppe2 =
                                kolvoprotvgruppe2Controller.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.tokupz2 = value;
                        },
                        controller: tokupz2Controller,
                        focusNode: focusNode21,
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
                          labelText: 'Ток группы',
                          hintText: 'Введите значение',
                          helperText: 'мА',
                          prefixIcon: Icon(
                            Icons.maximize_sharp,
                            color: focusNode21.hasFocus ||
                                    tokupz2Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              tokupz2Controller.clear();
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
                            focusNode21.requestFocus();
                            object.tokupz2 = value;
                            object.tokupz2 = tokupz2Controller.text;
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
                                object.potencialvklsumm2 = value;
                              },
                              controller: potencialvklsumm2Controller,
                              focusNode: focusNode20,
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
                                labelText: 'Uсум',
                                hintText: 'Uсум',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.radio_button_checked_sharp,
                                  color: focusNode20.hasFocus ||
                                          potencialvklsumm2Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencialvklsumm2Controller.clear();
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
                                  focusNode20.requestFocus();
                                  object.potencialvklsumm2 = value;
                                  object.potencialvklsumm2 =
                                      potencialvklsumm2Controller.text;
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
                                object.potencialvklpolyar2 = value;
                              },
                              controller: potencialvklpolyar2Controller,
                              focusNode: focusNode19,
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
                                labelText: 'Uпол',
                                hintText: 'Uпол',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.trip_origin_sharp,
                                  color: focusNode19.hasFocus ||
                                          potencialvklpolyar2Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencialvklpolyar2Controller.clear();
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
                                  focusNode19.requestFocus();
                                  object.potencialvklpolyar2 = value;
                                  object.potencialvklpolyar2 =
                                      potencialvklpolyar2Controller.text;
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
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.potencialprot2 = value;
                              },
                              controller: potencialprot2Controller,
                              focusNode: focusNode18,
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
                                labelText: 'Uупз',
                                hintText: 'Uупз',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.adjust_sharp,
                                  color: focusNode18.hasFocus ||
                                          potencialprot2Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencialprot2Controller.clear();
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
                                  focusNode18.requestFocus();
                                  object.potencialprot2 = value;
                                  object.potencialprot2 =
                                      potencialprot2Controller.text;
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
                                object.edsupz2 = value;
                              },
                              controller: edsupz2Controller,
                              focusNode: focusNode17,
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
                                labelText: 'ЭДС группы',
                                hintText: 'ЭДС группы',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.fiber_smart_record,
                                  color: focusNode17.hasFocus ||
                                          edsupz2Controller.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    edsupz2Controller.clear();
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
                                  focusNode17.requestFocus();
                                  object.edsupz2 = value;
                                  object.edsupz2 = edsupz2Controller.text;
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
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.soprrast2 = value;
                              },
                              controller: soprrast2Controller,
                              focusNode: focusNode16,
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
                                labelText: 'Rраст',
                                hintText: 'Rраст',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.filter_hdr_rounded,
                                  color: focusNode16.hasFocus ||
                                          soprrast2Controller.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    soprrast2Controller.clear();
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
                                  focusNode16.requestFocus();
                                  object.soprrast2 = value;
                                  object.soprrast2 = soprrast2Controller.text;
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
                                object.soprcepiupz2 = value;
                              },
                              controller: soprcepiupz2Controller,
                              focusNode: focusNode33,
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
                                labelText: 'R цепи группы УПЗ',
                                hintText: 'R цепи группы УПЗ',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.linear_scale,
                                  color: focusNode33.hasFocus ||
                                          soprcepiupz2Controller.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    soprcepiupz2Controller.clear();
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
                                  focusNode33.requestFocus();
                                  object.soprcepiupz2 = value;
                                  object.soprcepiupz2 =
                                      soprcepiupz2Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(thickness: 4),
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

  void kolvoprotrash() {
    double kp1 = kolvoprotvgruppe1Controller.text.isNotEmpty &&
            double.tryParse(
                    kolvoprotvgruppe1Controller.text.replaceAll(',', '.')) !=
                null
        ? double.parse(kolvoprotvgruppe1Controller.text.replaceAll(',', '.'))
        : 0.0;

    double kp2 = kolvoprotvgruppe2Controller.text.isNotEmpty &&
            double.tryParse(
                    kolvoprotvgruppe2Controller.text.replaceAll(',', '.')) !=
                null
        ? double.parse(kolvoprotvgruppe2Controller.text.replaceAll(',', '.'))
        : 0.0;

    double summap = kp1 + kp2;

    setState(() {
      kolvoprotvgruppeController.text = summap.toStringAsFixed(0);
      object.kolvoprotvgruppe = kolvoprotvgruppeController.text;
    });
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
      ByteData data = await rootBundle.load('assets/form/TOUPZ.xlsx');
      List<int> bytes = data.buffer.asUint8List();

      // Открываем файл Excel
      var excel = Excel.decodeBytes(bytes);

      // Получаем страницу, на которой нужно вставить данные
      var sheet = excel['TOUPZ'];

      // Вставляем данные в определенные ячейки

      sheet.cell(CellIndex.indexByString("A1")).value =
          'Протокол обслуживания УПЗ № ${object.title}' ?? '-';
      sheet.cell(CellIndex.indexByString("A2")).value =
          'Дата ${object.date1}' ?? '-';

      sheet.cell(CellIndex.indexByString("B4")).value = object.kontrol ?? '-';
      sheet.cell(CellIndex.indexByString("B5")).value =
          object.kolvoprotvgruppe ?? '-';
      sheet.cell(CellIndex.indexByString("B6")).value = object.peremsost ?? '-';
      sheet.cell(CellIndex.indexByString("B7")).value =
          object.potencialvklsumm ?? '-';
      sheet.cell(CellIndex.indexByString("B8")).value =
          object.potencialvklpolyar ?? '-';
      sheet.cell(CellIndex.indexByString("B9")).value =
          object.potencialprot ?? '-';
      sheet.cell(CellIndex.indexByString("B10")).value = object.edsupz ?? '-';
      sheet.cell(CellIndex.indexByString("B11")).value = object.tokupz ?? '-';
      sheet.cell(CellIndex.indexByString("B12")).value = object.soprrast ?? '-';
      sheet.cell(CellIndex.indexByString("B13")).value =
          object.soprcepiupz ?? '-';
      sheet.cell(CellIndex.indexByString("B14")).value =
          object.udsoprgrunta ?? '-';

      sheet.cell(CellIndex.indexByString("D5")).value =
          object.kolvoprotvgruppe1 ?? '-';
      sheet.cell(CellIndex.indexByString("D6")).value = object.peremsost ?? '-';
      sheet.cell(CellIndex.indexByString("D7")).value =
          object.potencialvklsumm1 ?? '-';
      sheet.cell(CellIndex.indexByString("D8")).value =
          object.potencialvklpolyar1 ?? '-';
      sheet.cell(CellIndex.indexByString("D9")).value =
          object.potencialprot1 ?? '-';
      sheet.cell(CellIndex.indexByString("D10")).value = object.edsupz1 ?? '-';
      sheet.cell(CellIndex.indexByString("D11")).value = object.tokupz1 ?? '-';
      sheet.cell(CellIndex.indexByString("D12")).value =
          object.soprrast1 ?? '-';
      sheet.cell(CellIndex.indexByString("D13")).value =
          object.soprcepiupz1 ?? '-';

      sheet.cell(CellIndex.indexByString("F5")).value =
          object.kolvoprotvgruppe2 ?? '-';
      sheet.cell(CellIndex.indexByString("F6")).value = object.peremsost ?? '-';
      sheet.cell(CellIndex.indexByString("F7")).value =
          object.potencialvklsumm2 ?? '-';
      sheet.cell(CellIndex.indexByString("F8")).value =
          object.potencialvklpolyar2 ?? '-';
      sheet.cell(CellIndex.indexByString("F9")).value =
          object.potencialprot2 ?? '-';
      sheet.cell(CellIndex.indexByString("F10")).value = object.edsupz2 ?? '-';
      sheet.cell(CellIndex.indexByString("F11")).value = object.tokupz2 ?? '-';
      sheet.cell(CellIndex.indexByString("F12")).value =
          object.soprrast2 ?? '-';
      sheet.cell(CellIndex.indexByString("F13")).value =
          object.soprcepiupz2 ?? '-';

      sheet.cell(CellIndex.indexByString("A22")).value =
          'УПЗ:${object.zamechupz != null ? object.zamechupz : 'нет замечаний'};';

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
                helper.deleteUpz(object.id);
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
        helper.updateUpz(object);
      } else {
        helper.insertUpz(object);
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
