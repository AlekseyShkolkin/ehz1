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
import './model_udz.dart';
import './object_list_udz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ObjectDetailUdz extends StatefulWidget {
  const ObjectDetailUdz({Key key, @required this.object});
  final Object object;
  @override
  State<StatefulWidget> createState() => ObjectDetailUdzState(object);
}

class ObjectDetailUdzState extends State<ObjectDetailUdz> {
  Udz object;
  String locationData = '';

  DateTime dateUdz; // Дата выбранная для date
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

  File _imageudz1;
  File _imageudz2;

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
  TextEditingController dateController = TextEditingController();

  TextEditingController marka1Controller = TextEditingController();
  TextEditingController sostojanie1Controller = TextEditingController();
  TextEditingController potencrels1Controller = TextEditingController();
  TextEditingController potenctrub1Controller = TextEditingController();
  TextEditingController edsudz1Controller = TextEditingController();
  TextEditingController naprshunt1Controller = TextEditingController();
  TextEditingController tokshunt1Controller = TextEditingController();
  TextEditingController izmnaprshunt1Controller = TextEditingController();
  TextEditingController soprotudz1Controller = TextEditingController();
  TextEditingController elecshet1Controller = TextEditingController();
  TextEditingController narabshet1Controller = TextEditingController();
  TextEditingController zamech1Controller = TextEditingController();
  TextEditingController marka2Controller = TextEditingController();
  TextEditingController sostojanie2Controller = TextEditingController();
  TextEditingController potencrels2Controller = TextEditingController();
  TextEditingController potenctrub2Controller = TextEditingController();
  TextEditingController edsudz2Controller = TextEditingController();
  TextEditingController naprshunt2Controller = TextEditingController();
  TextEditingController tokshunt2Controller = TextEditingController();
  TextEditingController izmnaprshunt2Controller = TextEditingController();
  TextEditingController soprotudz2Controller = TextEditingController();
  TextEditingController elecshet2Controller = TextEditingController();
  TextEditingController narabshet2Controller = TextEditingController();
  TextEditingController zamech2Controller = TextEditingController();
  TextEditingController realtok1Controller = TextEditingController();
  TextEditingController realtok2Controller = TextEditingController();

  bool isEdit;
  final GlobalKey<FormState> _1formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _2formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    isEdit = object.title == '' ? false : true;
    titleController.text = object.title ?? '';
    dateController.text = object.date1 ?? '';

    marka1Controller.text = object.marka1 ?? '';
    sostojanie1Controller.text = object.sostojanie1 ?? '';
    potencrels1Controller.text = object.potencrels1 ?? '';
    potenctrub1Controller.text = object.potenctrub1 ?? '';
    edsudz1Controller.text = object.edsudz1 ?? '';
    naprshunt1Controller.text = object.naprshunt1 ?? '';
    tokshunt1Controller.text = object.tokshunt1 ?? '';
    izmnaprshunt1Controller.text = object.izmnaprshunt1 ?? '';
    soprotudz1Controller.text = object.soprotudz1 ?? '';
    elecshet1Controller.text = object.elecshet1 ?? '';
    narabshet1Controller.text = object.narabshet1 ?? '';
    zamech1Controller.text = object.zamech1 ?? '';
    marka2Controller.text = object.marka2 ?? '';
    sostojanie2Controller.text = object.sostojanie2 ?? '';
    potencrels2Controller.text = object.potencrels2 ?? '';
    potenctrub2Controller.text = object.potenctrub2 ?? '';
    edsudz2Controller.text = object.edsudz2 ?? '';
    naprshunt2Controller.text = object.naprshunt2 ?? '';
    tokshunt2Controller.text = object.tokshunt2 ?? '';
    izmnaprshunt2Controller.text = object.izmnaprshunt2 ?? '';
    soprotudz2Controller.text = object.soprotudz2 ?? '';
    elecshet2Controller.text = object.elecshet2 ?? '';
    narabshet2Controller.text = object.narabshet2 ?? '';
    zamech2Controller.text = object.zamech2 ?? '';
    realtok1Controller.text = object.realtok1 ?? '';
    realtok2Controller.text = object.realtok2 ?? '';
  }

  ObjectDetailUdzState(this.object);

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 16.0,
      color: Colors.black54,
      fontWeight: FontWeight.w600,
    );

    return DefaultTabController(
      length: 2,
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
                  Icons.train,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.train,
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
                            'УСТАНОВКА ДРЕНАЖНОЙ ЗАЩИТЫ',
                            style: TextStyle(
                                fontSize: 18,
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
                                lastDate: dateUdz ?? DateTime(2100),
                                locale: const Locale("ru",
                                    "RU"), // Установите локаль на русский язык
                              );

                              if (selectedDate != null) {
                                setState(() {
                                  dateUdz = selectedDate;
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
                          object.title = value;
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
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.marka1 = value;
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
                        controller: marka1Controller,
                        focusNode: focusNode3,
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
                          labelText: 'Марка станции дренажной защиты',
                          hintText: 'Введите марку дренажа',
                          prefixIcon: Icon(
                            Icons.exposure,
                            color: focusNode3.hasFocus ||
                                    marka1Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              marka1Controller.clear();
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
                            focusNode3.requestFocus();
                            object.marka1 = value;
                            object.marka1 = marka1Controller.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode2,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojanie1 = value;
                            object.sostojanie1 = sostojanie1Controller.text;
                          });
                          focusNode2.requestFocus();
                          object.sostojanie1 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние УДЗ',
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
                            color: (focusNode2.hasFocus ||
                                    sostojanie1Controller.text.isNotEmpty)
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
                        value: object.sostojanie1,
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Разница потенциалов   ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              child: Icon(
                                Icons.exposure,
                                color: Theme.of(context).primaryColor,
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
                                object.potencrels1 = value;
                              },
                              controller: potencrels1Controller,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Значение не введено';
                                } else if (value.length > 6) {
                                  return 'Максимальная длина 6';
                                } else {
                                  return null;
                                }
                              },
                              focusNode: focusNode4,
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
                                labelText: 'Uрельс-земля',
                                hintText: 'Uр-з',
                                helperText: 'В',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencrels1Controller.clear();
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
                                  focusNode4.requestFocus();
                                  object.potencrels1 = value;
                                  object.potencrels1 =
                                      potencrels1Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.potenctrub1 = value;
                              },
                              controller: potenctrub1Controller,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Значение не введено';
                                } else if (value.length > 6) {
                                  return 'Максимальная длина 6';
                                } else {
                                  return null;
                                }
                              },
                              focusNode: focusNode6,
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
                                labelText: 'Uтруба-земля',
                                hintText: 'Uт-з',
                                helperText: 'В',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potenctrub1Controller.clear();
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
                                  object.potenctrub1 = value;
                                  object.potenctrub1 =
                                      potenctrub1Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.edsudz1 = value;
                              },
                              controller: edsudz1Controller,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Значение не введено';
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
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Theme.of(context).primaryColor,
                                ),
                                labelText: 'Uрельс-труба',
                                hintText: 'Uр-т',
                                helperText: 'В',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    edsudz1Controller.clear();
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
                                  object.edsudz1 = value;
                                  object.edsudz1 = edsudz1Controller.text;
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
                              'Расчётный ток: ${realtok1Controller.text} А',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              onTap: () {
                                naprshunt1Controller.clear();
                                tokshunt1Controller.clear();
                                izmnaprshunt1Controller.clear();
                                realtok1Controller.clear();
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
                                object.naprshunt1 = value;
                              },
                              controller: naprshunt1Controller,
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
                                labelText: 'Uшунта',
                                hintText: 'Uшунта',
                                helperText: 'мВ',
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
                                  object.naprshunt1 = value;
                                  object.naprshunt1 = naprshunt1Controller.text;
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
                                object.tokshunt1 = value;
                              },
                              controller: tokshunt1Controller,
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
                                labelText: 'Iшунта',
                                hintText: 'Iшунта',
                                helperText: 'А',
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
                                  object.tokshunt1 = value;
                                  object.tokshunt1 = tokshunt1Controller.text;
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
                                object.izmnaprshunt1 = value;
                              },
                              controller: izmnaprshunt1Controller,
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
                                labelText: 'Uизм',
                                hintText: 'Uизм',
                                helperText: 'мВ',
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
                                  raschtok1();
                                  object.izmnaprshunt1 = value;
                                  object.izmnaprshunt1 =
                                      izmnaprshunt1Controller.text;
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
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.soprotudz1 = value;
                        },
                        controller: soprotudz1Controller,
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
                          labelText: 'Сопротивление цепи УДЗ',
                          hintText: 'Введите значение',
                          helperText: 'Ом',
                          prefixIcon: Icon(
                            Icons.add_box_sharp,
                            color: focusNode11.hasFocus ||
                                    soprotudz1Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              // soprotudz1();
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
                            focusNode11.requestFocus();
                            object.soprotudz1 = value;
                            object.soprotudz1 = soprotudz1Controller.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 5),
                      TextFormField(
                        maxLength: 10,
                        onFieldSubmitted: (String value) {
                          object.elecshet1 = value;
                        },
                        controller: elecshet1Controller,
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
                          labelText: 'Показания счётчика эл.энергии',
                          hintText: 'Введите значение',
                          helperText: 'кВтч',
                          prefixIcon: Icon(
                            Icons.watch_later_sharp,
                            color: focusNode12.hasFocus ||
                                    elecshet1Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              elecshet1Controller.clear();
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
                            focusNode12.requestFocus();
                            object.elecshet1 = value;
                            object.elecshet1 = elecshet1Controller.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 10,
                        onFieldSubmitted: (String value) {
                          object.narabshet1 = value;
                        },
                        controller: narabshet1Controller,
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
                          labelText: 'Показания счётчика наработки',
                          hintText: 'Введите значение',
                          helperText: 'ч',
                          prefixIcon: Icon(
                            Icons.access_time_sharp,
                            color: focusNode13.hasFocus ||
                                    narabshet1Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              narabshet1Controller.clear();
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
                            focusNode13.requestFocus();
                            object.narabshet1 = value;
                            object.narabshet1 = narabshet1Controller.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      TextFormField(
                        maxLength: 1000,
                        focusNode: focusNode14,
                        onSaved: (value) {
                          object.zamech1 = value;
                        },
                        onChanged: (String value) {
                          setState(() {
                            focusNode14.requestFocus();
                            object.zamech1 = value;
                            object.zamech1 = zamech1Controller.text;
                          });
                        },
                        controller: zamech1Controller,
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
                              zamech1Controller.clear();
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
                                      _imageudz1 = value;
                                      if (_1formKey.currentState.validate()) {
                                        _1formKey.currentState.save();
                                        if (_imageudz1 != null) {
                                          final Directory extDir =
                                              await getApplicationDocumentsDirectory();
                                          final String dirPath =
                                              '${extDir.path}/Pictures/flutter';
                                          await Directory(dirPath)
                                              .create(recursive: true);
                                          final String filePath =
                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                          await _imageudz1.copy(filePath);
                                          object.foto1 = filePath;
                                          print(
                                              'сделали: ${object.foto1.toString()}');
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
                                            imagePath: object.foto1)),
                                  );
                                },
                                child: Center(
                                  child: object.foto1 != null
                                      ? Image.file(
                                          File(object.foto1),
                                          fit: BoxFit.cover,
                                          alignment: Alignment.center,
                                          width: 100,
                                          height: 100,
                                        )
                                      : Text('Изображение отсутствует'),
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
                      SizedBox(height: 10),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'СДЗ №2',
                            style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode15,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojanie2 = value;
                            object.sostojanie2 = sostojanie2Controller.text;
                          });
                          focusNode15.requestFocus();
                          object.sostojanie2 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние CДЗ',
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
                            color: (focusNode15.hasFocus ||
                                    sostojanie2Controller.text.isNotEmpty)
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
                        value: object.sostojanie2,
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Разница потенциалов   ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              child: Icon(
                                Icons.exposure,
                                color: Theme.of(context).primaryColor,
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
                                object.potencrels2 = value;
                              },
                              controller: potencrels2Controller,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Значение не введено';
                                } else if (value.length > 6) {
                                  return 'Максимальная длина 6';
                                } else {
                                  return null;
                                }
                              },
                              focusNode: focusNode16,
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
                                labelText: 'Uрельс-земля',
                                hintText: 'Uр-з',
                                helperText: 'В',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencrels2Controller.clear();
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
                                  object.potencrels2 = value;
                                  object.potencrels2 =
                                      potencrels2Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.potenctrub2 = value;
                              },
                              controller: potenctrub2Controller,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Значение не введено';
                                } else if (value.length > 6) {
                                  return 'Максимальная длина 6';
                                } else {
                                  return null;
                                }
                              },
                              focusNode: focusNode17,
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
                                labelText: 'Uтруба-земля',
                                hintText: 'Uт-з',
                                helperText: 'В',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potenctrub2Controller.clear();
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
                                  object.potenctrub2 = value;
                                  object.potenctrub2 =
                                      potenctrub2Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.edsudz2 = value;
                              },
                              controller: edsudz2Controller,
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Значение не введено';
                                } else if (value.length > 6) {
                                  return 'Максимальная длина 6';
                                } else {
                                  return null;
                                }
                              },
                              focusNode: focusNode18,
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
                                labelText: 'Uрельс-труба',
                                hintText: 'Uр-т',
                                helperText: 'В',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    edsudz2Controller.clear();
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
                                  object.edsudz2 = value;
                                  object.edsudz2 = edsudz2Controller.text;
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
                              'Расчётный ток: ${realtok2Controller.text} А',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            GestureDetector(
                              onTap: () {
                                naprshunt2Controller.clear();
                                tokshunt2Controller.clear();
                                izmnaprshunt2Controller.clear();
                                realtok2Controller.clear();
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
                                object.naprshunt2 = value;
                              },
                              controller: naprshunt2Controller,
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
                                labelText: 'Uшунта',
                                hintText: 'Uшунта',
                                helperText: 'мВ',
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
                                  object.naprshunt2 = value;
                                  object.naprshunt2 = naprshunt2Controller.text;
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
                                object.tokshunt2 = value;
                              },
                              controller: tokshunt2Controller,
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
                                labelText: 'Iшунта',
                                hintText: 'Iшунта',
                                helperText: 'А',
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
                                  object.tokshunt2 = value;
                                  object.tokshunt2 = tokshunt2Controller.text;
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
                                object.izmnaprshunt2 = value;
                              },
                              controller: izmnaprshunt2Controller,
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
                                labelText: 'Uизм',
                                hintText: 'Uизм',
                                helperText: 'мВ',
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
                                  focusNode21.requestFocus();
                                  raschtok1();
                                  object.izmnaprshunt2 = value;
                                  object.izmnaprshunt2 =
                                      izmnaprshunt2Controller.text;
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
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.soprotudz2 = value;
                        },
                        controller: soprotudz2Controller,
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
                          labelText: 'Сопротивление цепи УДЗ',
                          hintText: 'Введите значение',
                          helperText: 'Ом',
                          prefixIcon: Icon(
                            Icons.add_box_sharp,
                            color: focusNode22.hasFocus ||
                                    soprotudz2Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              // soprotudz1();
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
                            focusNode22.requestFocus();
                            object.soprotudz2 = value;
                            object.soprotudz2 = soprotudz2Controller.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 5),
                      TextFormField(
                        maxLength: 10,
                        onFieldSubmitted: (String value) {
                          object.elecshet2 = value;
                        },
                        controller: elecshet2Controller,
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
                          labelText: 'Показания счётчика эл.энергии',
                          hintText: 'Введите значение',
                          helperText: 'кВтч',
                          prefixIcon: Icon(
                            Icons.watch_later_sharp,
                            color: focusNode23.hasFocus ||
                                    elecshet2Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              elecshet2Controller.clear();
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
                            object.elecshet2 = value;
                            object.elecshet2 = elecshet2Controller.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 10,
                        onFieldSubmitted: (String value) {
                          object.narabshet2 = value;
                        },
                        controller: narabshet2Controller,
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
                          labelText: 'Показания счётчика наработки',
                          hintText: 'Введите значение',
                          helperText: 'ч',
                          prefixIcon: Icon(
                            Icons.access_time_sharp,
                            color: focusNode24.hasFocus ||
                                    narabshet2Controller.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              narabshet2Controller.clear();
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
                            object.narabshet2 = value;
                            object.narabshet2 = narabshet2Controller.text;
                          });
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      TextFormField(
                        maxLength: 1000,
                        focusNode: focusNode25,
                        onSaved: (value) {
                          object.zamech2 = value;
                        },
                        onChanged: (String value) {
                          setState(() {
                            focusNode25.requestFocus();
                            object.zamech2 = value;
                            object.zamech2 = zamech2Controller.text;
                          });
                        },
                        controller: zamech2Controller,
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
                              zamech2Controller.clear();
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
                                      _imageudz2 = value;
                                      if (_2formKey.currentState.validate()) {
                                        _2formKey.currentState.save();
                                        if (_imageudz2 != null) {
                                          final Directory extDir =
                                              await getApplicationDocumentsDirectory();
                                          final String dirPath =
                                              '${extDir.path}/Pictures/flutter';
                                          await Directory(dirPath)
                                              .create(recursive: true);
                                          final String filePath =
                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                          await _imageudz2.copy(filePath);
                                          object.foto2 = filePath;
                                          print(
                                              'сделали: ${object.foto2.toString()}');
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
                                            imagePath: object.foto2)),
                                  );
                                },
                                child: Center(
                                  child: object.foto2 != null
                                      ? Image.file(
                                          File(object.foto2),
                                          fit: BoxFit.cover,
                                          alignment: Alignment.center,
                                          width: 100,
                                          height: 100,
                                        )
                                      : Text('Изображение отсутствует'),
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
      ByteData data = await rootBundle.load('assets/form/TOUDZ.xlsx');
      List<int> bytes = data.buffer.asUint8List();

      // Открываем файл Excel
      var excel = Excel.decodeBytes(bytes);

      // Получаем страницу, на которой нужно вставить данные
      var sheet = excel['TOUDZ'];

      // Вставляем данные в определенные ячейки

      sheet.cell(CellIndex.indexByString("A1")).value =
          'Протокол обслуживания УДЗ № ${object.title}' ?? '-';
      sheet.cell(CellIndex.indexByString("A2")).value =
          'Дата ${object.date1}' ?? '-';

      sheet.cell(CellIndex.indexByString("B4")).value = object.marka1 ?? '-';
      sheet.cell(CellIndex.indexByString("B5")).value =
          object.sostojanie1 ?? '-';
      sheet.cell(CellIndex.indexByString("B6")).value =
          object.potencrels1 ?? '-';
      sheet.cell(CellIndex.indexByString("B7")).value =
          object.potenctrub1 ?? '-';
      sheet.cell(CellIndex.indexByString("B8")).value = object.edsudz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B9")).value =
          '${object.naprshunt1 ?? '-'}-${object.tokshunt1 ?? '-'}';
      sheet.cell(CellIndex.indexByString("B10")).value =
          object.izmnaprshunt1 ?? '-';
      sheet.cell(CellIndex.indexByString("B11")).value = object.realtok1 ?? '-';
      sheet.cell(CellIndex.indexByString("B12")).value =
          object.soprotudz1 ?? '-';
      sheet.cell(CellIndex.indexByString("B13")).value =
          object.elecshet1 ?? '-';
      sheet.cell(CellIndex.indexByString("B14")).value =
          object.narabshet1 ?? '-';

      sheet.cell(CellIndex.indexByString("D4")).value = object.marka2 ?? '-';
      sheet.cell(CellIndex.indexByString("D5")).value =
          object.sostojanie2 ?? '-';
      sheet.cell(CellIndex.indexByString("D6")).value =
          object.potencrels2 ?? '-';
      sheet.cell(CellIndex.indexByString("D7")).value =
          object.potenctrub2 ?? '-';
      sheet.cell(CellIndex.indexByString("D8")).value = object.edsudz2 ?? '-';
      sheet.cell(CellIndex.indexByString("D9")).value =
          '${object.naprshunt2 ?? '-'}-${object.tokshunt2 ?? '-'}';
      sheet.cell(CellIndex.indexByString("D10")).value =
          object.izmnaprshunt2 ?? '-';
      sheet.cell(CellIndex.indexByString("D11")).value = object.realtok2 ?? '-';
      sheet.cell(CellIndex.indexByString("D12")).value =
          object.soprotudz2 ?? '-';
      sheet.cell(CellIndex.indexByString("D13")).value =
          object.elecshet2 ?? '-';
      sheet.cell(CellIndex.indexByString("D14")).value =
          object.narabshet2 ?? '-';

      sheet.cell(CellIndex.indexByString("A16")).value =
          'СДЗ 1:${object.zamech1 != null && object.zamech1.isNotEmpty ? object.zamech1 : 'нет замечаний'}; СДЗ 2:${object.zamech2 != null && object.zamech2.isNotEmpty ? object.zamech2 : 'нет замечаний'};';

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
                helper.deleteUdz(object.id);
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
        helper.updateUdz(object);
      } else {
        helper.insertUdz(object);
      }
    }
  }

  void raschtok1() {
    double tokshunta = tokshunt1Controller.text.isNotEmpty
        ? double.parse(tokshunt1Controller.text.replaceAll(',', '.'))
        : 0.0;
    double naprshunta = naprshunt1Controller.text.isNotEmpty
        ? double.parse(naprshunt1Controller.text.replaceAll(',', '.'))
        : 0.0;
    double naprizmer = izmnaprshunt1Controller.text.isNotEmpty
        ? double.parse(izmnaprshunt1Controller.text.replaceAll(',', '.'))
        : 0.0;

    double raschtok = (naprizmer * tokshunta) / naprshunta;

    setState(() {
      realtok1Controller.text = raschtok.toStringAsFixed(2);
      object.realtok1 = realtok1Controller.text;
    });
  }

  void raschtok2() {
    double tokshunta = tokshunt2Controller.text.isNotEmpty
        ? double.parse(tokshunt2Controller.text.replaceAll(',', '.'))
        : 0.0;
    double naprshunta = naprshunt2Controller.text.isNotEmpty
        ? double.parse(naprshunt2Controller.text.replaceAll(',', '.'))
        : 0.0;
    double naprizmer = izmnaprshunt2Controller.text.isNotEmpty
        ? double.parse(izmnaprshunt2Controller.text.replaceAll(',', '.'))
        : 0.0;

    double raschtok = (naprizmer * tokshunta) / naprshunta;

    setState(() {
      realtok2Controller.text = raschtok.toStringAsFixed(2);
      object.realtok2 = realtok2Controller.text;
    });
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
