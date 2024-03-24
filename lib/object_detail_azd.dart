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
import './model_azd.dart';
import './object_list_azd.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ObjectDetailAzd extends StatefulWidget {
  const ObjectDetailAzd({Key key, @required this.object});
  final Object object;
  @override
  State<StatefulWidget> createState() => ObjectDetailAzdState(object);
}

class ObjectDetailAzdState extends State<ObjectDetailAzd> {
  Azd object;
  String locationData = '';

  DateTime dateAzd; // Дата выбранная для date
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

  File _image1;
  File _image2;

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
  final List<String> _tipdorogi = [
    'Автомобильная дорога',
    'Железная дорога',
    'Другое',
  ];
  final List<String> _patron = [
    'Есть',
    'Отсутствует',
    'Нет данных',
  ];
  final List<String> _zaschpatrona = [
    'Протекаторная',
    'Соввместная с газопроводом',
    'от СКЗ',
    'Отсутствует',
    'Нет данных',
  ];
  final List<String> _tipkontrolja = [
    'КИП',
    'КИП с БСЗ',
    'БСЗ',
    'СКЗ',
    'Ковер',
    'Нет данных',
  ];

  TextEditingController idController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  TextEditingController tipdorogiController = TextEditingController();
  TextEditingController dorogaController = TextEditingController();
  TextEditingController trubaController = TextEditingController();
  TextEditingController kmdorogiController = TextEditingController();
  TextEditingController kmtrubyController = TextEditingController();
  TextEditingController nalichfutljaraController = TextEditingController();
  TextEditingController tipzashityController = TextEditingController();
  TextEditingController sostperehodaController = TextEditingController();
  TextEditingController tipkontrolja1Controller = TextEditingController();
  TextEditingController sostojanie1Controller = TextEditingController();
  TextEditingController peremsost1Controller = TextEditingController();
  TextEditingController potenctrubsumm1Controller = TextEditingController();
  TextEditingController potenctrubpol1Controller = TextEditingController();
  TextEditingController potencfutlsumm1Controller = TextEditingController();
  TextEditingController potencfutlpol1Controller = TextEditingController();
  TextEditingController tok11Controller = TextEditingController();
  TextEditingController tok21Controller = TextEditingController();
  TextEditingController soprotkan11Controller = TextEditingController();
  TextEditingController soprotkan21Controller = TextEditingController();
  TextEditingController soprotcepi1Controller = TextEditingController();
  TextEditingController soprotrast1Controller = TextEditingController();
  TextEditingController zamechan1Controller = TextEditingController();
  TextEditingController foto1Controller = TextEditingController();
  TextEditingController tipkontrolja2Controller = TextEditingController();
  TextEditingController sostojanie2Controller = TextEditingController();
  TextEditingController peremsost2Controller = TextEditingController();
  TextEditingController potenctrubsumm2Controller = TextEditingController();
  TextEditingController potenctrubpol2Controller = TextEditingController();
  TextEditingController potencfutlsumm2Controller = TextEditingController();
  TextEditingController potencfutlpol2Controller = TextEditingController();
  TextEditingController tok12Controller = TextEditingController();
  TextEditingController tok22Controller = TextEditingController();
  TextEditingController soprotkan12Controller = TextEditingController();
  TextEditingController soprotkan22Controller = TextEditingController();
  TextEditingController soprotcepi2Controller = TextEditingController();
  TextEditingController soprotrast2Controller = TextEditingController();
  TextEditingController zamechan2Controller = TextEditingController();
  TextEditingController udsoprgrunta1Controller = TextEditingController();
  TextEditingController udsoprgrunta2Controller = TextEditingController();

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

    tipdorogiController.text = object.tipdorogi ?? '';
    dorogaController.text = object.doroga ?? '';
    trubaController.text = object.truba ?? '';
    kmdorogiController.text = object.kmdorogi ?? '';
    kmtrubyController.text = object.kmtruby ?? '';
    nalichfutljaraController.text = object.nalichfutljara ?? '';
    tipzashityController.text = object.tipzashity ?? '';
    sostperehodaController.text = object.sostperehoda ?? '';
    tipkontrolja1Controller.text = object.tipkontrolja1 ?? '';
    sostojanie1Controller.text = object.sostojanie1 ?? '';
    peremsost1Controller.text = object.peremsost1 ?? '';
    potenctrubsumm1Controller.text = object.potenctrubsumm1 ?? '';
    potenctrubpol1Controller.text = object.potenctrubpol1 ?? '';
    potencfutlsumm1Controller.text = object.potencfutlsumm1 ?? '';
    potencfutlpol1Controller.text = object.potencfutlpol1 ?? '';
    tok11Controller.text = object.tok11 ?? '';
    tok21Controller.text = object.tok21 ?? '';
    soprotkan11Controller.text = object.soprotkan11 ?? '';
    soprotkan21Controller.text = object.soprotkan21 ?? '';
    soprotcepi1Controller.text = object.soprotcepi1 ?? '';
    soprotrast1Controller.text = object.soprotrast1 ?? '';
    zamechan1Controller.text = object.zamechan1 ?? '';
    tipkontrolja2Controller.text = object.tipkontrolja2 ?? '';
    sostojanie2Controller.text = object.sostojanie2 ?? '';
    peremsost2Controller.text = object.peremsost2 ?? '';
    potenctrubsumm2Controller.text = object.potenctrubsumm2 ?? '';
    potenctrubpol2Controller.text = object.potenctrubpol2 ?? '';
    potencfutlsumm2Controller.text = object.potencfutlsumm2 ?? '';
    potencfutlpol2Controller.text = object.potencfutlpol2 ?? '';
    tok12Controller.text = object.tok12 ?? '';
    tok22Controller.text = object.tok22 ?? '';
    soprotkan12Controller.text = object.soprotkan12 ?? '';
    soprotkan22Controller.text = object.soprotkan22 ?? '';
    soprotcepi2Controller.text = object.soprotcepi2 ?? '';
    soprotrast2Controller.text = object.soprotrast2 ?? '';
    zamechan2Controller.text = object.zamechan2 ?? '';
    udsoprgrunta1Controller.text = object.udsoprgrunta1 ?? '';
    udsoprgrunta2Controller.text = object.udsoprgrunta2 ?? '';
  }

  ObjectDetailAzdState(this.object);

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
                  Icons.directions_car_sharp,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.arrow_back_rounded,
                  size: 30,
                  color: Theme.of(context).primaryColor,
                )),
                Tab(
                    icon: Icon(
                  Icons.arrow_forward_rounded,
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
                            'ПЕРЕХОД ГАЗОПРОВОДА ПОД АЖД',
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
                                lastDate: dateAzd ?? DateTime(2100),
                                locale: const Locale("ru",
                                    "RU"), // Установите локаль на русский язык
                              );

                              if (selectedDate != null) {
                                setState(() {
                                  dateAzd = selectedDate;
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
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor,
                          ),
                          labelText: 'Наименование газопровода',
                          hintText: 'Введите газопровод',
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
                        focusNode: focusNode2,
                        onChanged: (String value) {
                          setState(() {
                            object.tipdorogi = value;
                            object.tipdorogi = tipdorogiController.text;
                          });
                          focusNode2.requestFocus();
                          object.tipdorogi = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Тип дороги',
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
                            Icons.add_road_rounded,
                            color: (focusNode2.hasFocus ||
                                    tipdorogiController.text.isNotEmpty)
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
                        items: _tipdorogi.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.tipdorogi,
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 50,
                        onFieldSubmitted: (String value) {
                          object.doroga = value;
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
                        controller: dorogaController,
                        focusNode: focusNode3,
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
                          labelText: 'Наименование дороги',
                          hintText: 'Введите дорогу',
                          prefixIcon: Icon(
                            Icons.edit_road_rounded,
                            color: focusNode3.hasFocus ||
                                    dorogaController.text.isNotEmpty
                                ? Theme.of(context).primaryColor
                                : Colors.grey,
                            size: 32,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              dorogaController.clear();
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
                            object.doroga = value;
                            object.doroga = dorogaController.text;
                          });
                        },
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 10,
                              onFieldSubmitted: (String value) {
                                object.kmtruby = value;
                              },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Значение не введено';
                                } else if (value.length > 10) {
                                  return 'Максимальная длина 10';
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.number,
                              controller: kmtrubyController,
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
                                labelText: 'КМ трубы',
                                hintText: 'КМ трубы',
                                helperText: 'КМ',
                                prefixIcon: Icon(
                                  Icons.add_location_alt_outlined,
                                  color: focusNode4.hasFocus ||
                                          kmtrubyController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    kmtrubyController.clear();
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
                                  object.kmtruby = value;
                                  object.kmtruby = kmtrubyController.text;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextFormField(
                              maxLength: 10,
                              onFieldSubmitted: (String value) {
                                object.kmdorogi = value;
                              },
                              keyboardType: TextInputType.number,
                              controller: kmdorogiController,
                              focusNode: focusNode5,
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
                                labelText: 'КМ дороги',
                                hintText: 'КМ дороги',
                                helperText: 'КМ',
                                prefixIcon: Icon(
                                  Icons.edit_road_rounded,
                                  color: focusNode5.hasFocus ||
                                          kmdorogiController.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    kmdorogiController.clear();
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
                                  focusNode5.requestFocus();
                                  object.kmdorogi = value;
                                  object.kmdorogi = kmdorogiController.text;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode6,
                        onChanged: (String value) {
                          setState(() {
                            object.nalichfutljara = value;
                            object.nalichfutljara =
                                nalichfutljaraController.text;
                          });
                          focusNode6.requestFocus();
                          object.nalichfutljara = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Наличие защитного кожуха',
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
                            Icons.radio_button_checked_outlined,
                            color: (focusNode6.hasFocus ||
                                    nalichfutljaraController.text.isNotEmpty)
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
                        items: _patron.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.nalichfutljara,
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode7,
                        onChanged: (String value) {
                          setState(() {
                            object.tipzashity = value;
                            object.tipzashity = tipzashityController.text;
                          });
                          focusNode7.requestFocus();
                          object.tipzashity = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Тип защиты кожуха',
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
                            Icons.iso_sharp,
                            color: (focusNode7.hasFocus ||
                                    tipzashityController.text.isNotEmpty)
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
                        items: _zaschpatrona.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.tipzashity,
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode8,
                        onChanged: (String value) {
                          setState(() {
                            object.tipkontrolja1 = value;
                            object.tipkontrolja1 = tipkontrolja1Controller.text;
                          });
                          focusNode8.requestFocus();
                          object.tipkontrolja1 = value;
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
                            Icons.battery_4_bar,
                            color: (focusNode8.hasFocus ||
                                    tipkontrolja1Controller.text.isNotEmpty)
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
                        items: _tipkontrolja.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        style: textStyle,
                        value: object.tipkontrolja1,
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                        isExpanded: true,
                        focusNode: focusNode9,
                        onChanged: (String value) {
                          setState(() {
                            object.sostojanie1 = value;
                            object.sostojanie1 = sostojanie1Controller.text;
                          });
                          focusNode9.requestFocus();
                          object.sostojanie1 = value;
                        },
                        decoration: InputDecoration(
                          focusColor: Theme.of(context).primaryColor,
                          labelText: 'Состояние средств ЭХЗ',
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
                            color: (focusNode9.hasFocus ||
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
                      TextFormField(
                        maxLength: 1000,
                        focusNode: focusNode10,
                        onSaved: (value) {
                          object.zamechan1 = value;
                        },
                        onChanged: (String value) {
                          setState(() {
                            focusNode10.requestFocus();
                            object.zamechan1 = value;
                            object.zamechan1 = zamechan1Controller.text;
                          });
                        },
                        controller: zamechan1Controller,
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
                              zamechan1Controller.clear();
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
                                      _image1 = value;
                                      if (_1formKey.currentState.validate()) {
                                        _1formKey.currentState.save();
                                        if (_image1 != null) {
                                          final Directory extDir =
                                              await getApplicationDocumentsDirectory();
                                          final String dirPath =
                                              '${extDir.path}/Pictures/ehz';
                                          await Directory(dirPath)
                                              .create(recursive: true);
                                          final String filePath =
                                              '$dirPath/${DateTime.now().millisecondsSinceEpoch.toString()}.jpg';
                                          await _image1.copy(filePath);
                                          object.foto1 = filePath;
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
                            'ДО ПЕРЕХОДА ПО ХОДУ ГАЗА',
                            style: TextStyle(
                                fontSize: 22,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.peremsost1 = value;
                        },
                        controller: peremsost1Controller,
                        focusNode: focusNode11,
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
                          labelText: 'Переменная составляющая',
                          hintText: 'Введите значение',
                          helperText: 'В',
                          prefixIcon: Icon(
                            Icons.flash_on_sharp,
                            color: focusNode11.hasFocus ||
                                    peremsost1Controller.text.isNotEmpty
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
                            focusNode11.requestFocus();
                            object.peremsost1 = value;
                            object.peremsost1 = peremsost1Controller.text;
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
                                object.potenctrubsumm1 = value;
                              },
                              controller: potenctrubsumm1Controller,
                              focusNode: focusNode12,
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
                                hintText: 'Uтруба-земля',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.radio_button_checked_sharp,
                                  color: focusNode12.hasFocus ||
                                          potenctrubsumm1Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potenctrubsumm1Controller.clear();
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
                                  object.potenctrubsumm1 = value;
                                  object.potenctrubsumm1 =
                                      potenctrubsumm1Controller.text;
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
                                object.potencfutlsumm1 = value;
                              },
                              controller: potencfutlsumm1Controller,
                              focusNode: focusNode13,
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
                                labelText: 'Uкожух-земля',
                                hintText: 'Uкожух-земля',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.trip_origin_sharp,
                                  color: focusNode13.hasFocus ||
                                          potencfutlsumm1Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencfutlsumm1Controller.clear();
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
                                  object.potencfutlsumm1 = value;
                                  object.potencfutlsumm1 =
                                      potencfutlsumm1Controller.text;
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
                                object.potenctrubpol1 = value;
                              },
                              controller: potenctrubpol1Controller,
                              focusNode: focusNode14,
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
                                labelText: 'Uпол(т-з)',
                                hintText: 'Uпол(т-з)',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.adjust_sharp,
                                  color: focusNode14.hasFocus ||
                                          potenctrubpol1Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potenctrubpol1Controller.clear();
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
                                  focusNode14.requestFocus();
                                  object.potenctrubpol1 = value;
                                  object.potenctrubpol1 =
                                      potenctrubpol1Controller.text;
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
                                object.potencfutlpol1 = value;
                              },
                              controller: potencfutlpol1Controller,
                              focusNode: focusNode15,
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
                                labelText: 'Uпол(ф-з)',
                                hintText: 'Uпол(ф-з)',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.radio_button_off_sharp,
                                  color: focusNode15.hasFocus ||
                                          potencfutlpol1Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencfutlpol1Controller.clear();
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
                                  focusNode15.requestFocus();
                                  object.potencfutlpol1 = value;
                                  object.potencfutlpol1 =
                                      potencfutlpol1Controller.text;
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
                                object.tok11 = value;
                              },
                              controller: tok11Controller,
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
                                labelText: 'I(1 канала)',
                                hintText: 'I(1 канала)',
                                helperText: 'А',
                                prefixIcon: Icon(
                                  Icons.flash_on_sharp,
                                  color: focusNode16.hasFocus ||
                                          tok11Controller.text.isNotEmpty
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
                                  focusNode16.requestFocus();
                                  object.tok11 = value;
                                  object.tok11 = tok11Controller.text;
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
                                object.tok21 = value;
                              },
                              controller: tok21Controller,
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
                                labelText: 'I(2 канала)',
                                hintText: 'I(2 канала)',
                                helperText: 'А',
                                prefixIcon: Icon(
                                  Icons.flash_on_sharp,
                                  color: focusNode17.hasFocus ||
                                          tok21Controller.text.isNotEmpty
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
                                  focusNode17.requestFocus();
                                  object.tok21 = value;
                                  object.tok21 = tok21Controller.text;
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
                                object.soprotkan11 = value;
                              },
                              controller: soprotkan11Controller,
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
                                labelText: 'R(1 канала)',
                                hintText: 'R(1 канала)',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.view_week_sharp,
                                  color: focusNode18.hasFocus ||
                                          soprotkan11Controller.text.isNotEmpty
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
                                  focusNode18.requestFocus();
                                  object.soprotkan11 = value;
                                  object.soprotkan11 =
                                      soprotkan11Controller.text;
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
                                object.soprotkan21 = value;
                              },
                              controller: soprotkan21Controller,
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
                                labelText: 'R(2 канала)',
                                hintText: 'R(2 канала)',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.view_week_sharp,
                                  color: focusNode19.hasFocus ||
                                          soprotkan21Controller.text.isNotEmpty
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
                                  focusNode19.requestFocus();
                                  object.soprotkan21 = value;
                                  object.soprotkan21 =
                                      soprotkan21Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.soprotrast1 = value;
                              },
                              controller: soprotrast1Controller,
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
                                labelText: 'Rраст',
                                hintText: 'Rраст',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.filter_hdr_rounded,
                                  color: focusNode20.hasFocus ||
                                          soprotrast1Controller.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    soprotrast1Controller.clear();
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
                                  object.soprotrast1 = value;
                                  object.soprotrast1 =
                                      soprotrast1Controller.text;
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
                                object.udsoprgrunta1 = value;
                              },
                              controller: udsoprgrunta1Controller,
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
                                labelText: 'Rуд.гр.',
                                hintText: 'Rуд.гр.',
                                helperText: 'Ом*м',
                                prefixIcon: Icon(
                                  Icons.filter,
                                  color: focusNode21.hasFocus ||
                                          udsoprgrunta1Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    udsoprgrunta1Controller.clear();
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
                                  focusNode21.requestFocus();
                                  object.udsoprgrunta1 = value;
                                  object.udsoprgrunta1 =
                                      udsoprgrunta1Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
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
                            'ПОСЛЕ ПЕРЕХОДА ПО ХОДУ ГАЗА',
                            style: TextStyle(
                                fontSize: 24,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 6,
                        onFieldSubmitted: (String value) {
                          object.peremsost2 = value;
                        },
                        controller: peremsost2Controller,
                        focusNode: focusNode32,
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
                          labelText: 'Переменная составляющая',
                          hintText: 'Введите значение',
                          helperText: 'В',
                          prefixIcon: Icon(
                            Icons.flash_on_sharp,
                            color: focusNode32.hasFocus ||
                                    peremsost2Controller.text.isNotEmpty
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
                            focusNode32.requestFocus();
                            object.peremsost2 = value;
                            object.peremsost2 = peremsost2Controller.text;
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
                                object.potenctrubsumm2 = value;
                              },
                              controller: potenctrubsumm2Controller,
                              focusNode: focusNode31,
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
                                hintText: 'Uтруба-земля',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.radio_button_checked_sharp,
                                  color: focusNode31.hasFocus ||
                                          potenctrubsumm2Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potenctrubsumm2Controller.clear();
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
                                  focusNode31.requestFocus();
                                  object.potenctrubsumm2 = value;
                                  object.potenctrubsumm2 =
                                      potenctrubsumm2Controller.text;
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
                                object.potencfutlsumm2 = value;
                              },
                              controller: potencfutlsumm2Controller,
                              focusNode: focusNode30,
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
                                labelText: 'Uкожух-земля',
                                hintText: 'Uкожух-земля',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.trip_origin_sharp,
                                  color: focusNode30.hasFocus ||
                                          potencfutlsumm2Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencfutlsumm2Controller.clear();
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
                                  focusNode30.requestFocus();
                                  object.potencfutlsumm2 = value;
                                  object.potencfutlsumm2 =
                                      potencfutlsumm2Controller.text;
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
                                object.potenctrubpol2 = value;
                              },
                              controller: potenctrubpol2Controller,
                              focusNode: focusNode29,
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
                                labelText: 'Uпол(т-з)',
                                hintText: 'Uпол(т-з)',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.adjust_sharp,
                                  color: focusNode29.hasFocus ||
                                          potenctrubpol2Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potenctrubpol2Controller.clear();
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
                                  object.potenctrubpol2 = value;
                                  object.potenctrubpol2 =
                                      potenctrubpol2Controller.text;
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
                                object.potencfutlpol2 = value;
                              },
                              controller: potencfutlpol2Controller,
                              focusNode: focusNode28,
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
                                labelText: 'Uпол(ф-з)',
                                hintText: 'Uпол(ф-з)',
                                helperText: 'В',
                                prefixIcon: Icon(
                                  Icons.radio_button_off_sharp,
                                  color: focusNode28.hasFocus ||
                                          potencfutlpol2Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    potencfutlpol2Controller.clear();
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
                                  object.potencfutlpol2 = value;
                                  object.potencfutlpol2 =
                                      potencfutlpol2Controller.text;
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
                                object.tok12 = value;
                              },
                              controller: tok12Controller,
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
                                labelText: 'I(1 канала)',
                                hintText: 'I(1 канала)',
                                helperText: 'А',
                                prefixIcon: Icon(
                                  Icons.flash_on_sharp,
                                  color: focusNode27.hasFocus ||
                                          tok12Controller.text.isNotEmpty
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
                                  focusNode27.requestFocus();
                                  object.tok12 = value;
                                  object.tok12 = tok12Controller.text;
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
                                object.tok22 = value;
                              },
                              controller: tok22Controller,
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
                                labelText: 'I(2 канала)',
                                hintText: 'I(2 канала)',
                                helperText: 'А',
                                prefixIcon: Icon(
                                  Icons.flash_on_sharp,
                                  color: focusNode26.hasFocus ||
                                          tok22Controller.text.isNotEmpty
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
                                  focusNode26.requestFocus();
                                  object.tok22 = value;
                                  object.tok22 = tok22Controller.text;
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
                                object.soprotkan12 = value;
                              },
                              controller: soprotkan12Controller,
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
                                labelText: 'R(1 канала)',
                                hintText: 'R(1 канала)',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.view_week_sharp,
                                  color: focusNode25.hasFocus ||
                                          soprotkan12Controller.text.isNotEmpty
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
                                  focusNode25.requestFocus();
                                  object.soprotkan12 = value;
                                  object.soprotkan12 =
                                      soprotkan12Controller.text;
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
                                object.soprotkan22 = value;
                              },
                              controller: soprotkan22Controller,
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
                                labelText: 'R(2 канала)',
                                hintText: 'R(2 канала)',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.view_week_sharp,
                                  color: focusNode24.hasFocus ||
                                          soprotkan22Controller.text.isNotEmpty
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
                                  focusNode24.requestFocus();
                                  object.soprotkan22 = value;
                                  object.soprotkan22 =
                                      soprotkan22Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 4),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              maxLength: 6,
                              onFieldSubmitted: (String value) {
                                object.soprotrast2 = value;
                              },
                              controller: soprotrast2Controller,
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
                                labelText: 'Rраст',
                                hintText: 'Rраст',
                                helperText: 'Ом',
                                prefixIcon: Icon(
                                  Icons.filter_hdr_rounded,
                                  color: focusNode23.hasFocus ||
                                          soprotrast2Controller.text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    soprotrast2Controller.clear();
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
                                  focusNode23.requestFocus();
                                  object.soprotrast2 = value;
                                  object.soprotrast2 =
                                      soprotrast2Controller.text;
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
                                object.udsoprgrunta2 = value;
                              },
                              controller: udsoprgrunta2Controller,
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
                                labelText: 'Rуд.гр.',
                                hintText: 'Rуд.гр.',
                                helperText: 'Ом*м',
                                prefixIcon: Icon(
                                  Icons.filter,
                                  color: focusNode22.hasFocus ||
                                          udsoprgrunta2Controller
                                              .text.isNotEmpty
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                  size: 32,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    udsoprgrunta2Controller.clear();
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
                                  focusNode22.requestFocus();
                                  object.udsoprgrunta2 = value;
                                  object.udsoprgrunta2 =
                                      udsoprgrunta2Controller.text;
                                });
                              },
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
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
      ByteData data = await rootBundle.load('assets/form/TOAZD.xlsx');
      List<int> bytes = data.buffer.asUint8List();

      // Открываем файл Excel
      var excel = Excel.decodeBytes(bytes);

      // Получаем страницу, на которой нужно вставить данные
      var sheet = excel['TOAZD'];

      // Вставляем данные в определенные ячейки

      sheet.cell(CellIndex.indexByString("A1")).value =
          'Протокол обслуживания перехода через АЖД № ${object.title}-${object.kmtruby}, ${object.doroga}-${object.kmdorogi}' ??
              '-';
      sheet.cell(CellIndex.indexByString("A2")).value =
          'Дата ${object.date1}' ?? '-';

      sheet.cell(CellIndex.indexByString("B4")).value = object.title ?? '-';
      sheet.cell(CellIndex.indexByString("B5")).value = object.tipdorogi ?? '-';
      sheet.cell(CellIndex.indexByString("B6")).value = object.doroga ?? '-';
      sheet.cell(CellIndex.indexByString("B7")).value = object.kmtruby ?? '-';
      sheet.cell(CellIndex.indexByString("B8")).value = object.kmdorogi ?? '-';
      sheet.cell(CellIndex.indexByString("B9")).value =
          object.nalichfutljara ?? '-';
      sheet.cell(CellIndex.indexByString("B10")).value =
          object.tipzashity ?? '-';
      sheet.cell(CellIndex.indexByString("B11")).value =
          object.tipkontrolja1 ?? '-';
      sheet.cell(CellIndex.indexByString("B12")).value =
          object.sostojanie1 ?? '-';

      sheet.cell(CellIndex.indexByString("D4")).value =
          object.peremsost1 ?? '-';
      sheet.cell(CellIndex.indexByString("D5")).value =
          object.potenctrubsumm1 ?? '-';
      sheet.cell(CellIndex.indexByString("D6")).value =
          object.potenctrubpol1 ?? '-';
      sheet.cell(CellIndex.indexByString("D7")).value =
          object.potencfutlsumm1 ?? '-';
      sheet.cell(CellIndex.indexByString("D8")).value =
          object.potencfutlpol1 ?? '-';
      sheet.cell(CellIndex.indexByString("D9")).value = object.tok11 ?? '-';
      sheet.cell(CellIndex.indexByString("D10")).value = object.tok21 ?? '-';
      sheet.cell(CellIndex.indexByString("D11")).value =
          object.soprotkan11 ?? '-';
      sheet.cell(CellIndex.indexByString("D12")).value =
          object.soprotkan21 ?? '-';
      sheet.cell(CellIndex.indexByString("D13")).value =
          object.soprotcepi1 ?? '-';
      sheet.cell(CellIndex.indexByString("D14")).value =
          object.soprotrast1 ?? '-';
      sheet.cell(CellIndex.indexByString("D15")).value =
          object.udsoprgrunta1 ?? '-';

      sheet.cell(CellIndex.indexByString("F4")).value =
          object.peremsost2 ?? '-';
      sheet.cell(CellIndex.indexByString("F5")).value =
          object.potenctrubsumm2 ?? '-';
      sheet.cell(CellIndex.indexByString("F6")).value =
          object.potenctrubpol2 ?? '-';
      sheet.cell(CellIndex.indexByString("F7")).value =
          object.potencfutlsumm2 ?? '-';
      sheet.cell(CellIndex.indexByString("F8")).value =
          object.potencfutlpol2 ?? '-';
      sheet.cell(CellIndex.indexByString("F9")).value = object.tok12 ?? '-';
      sheet.cell(CellIndex.indexByString("F10")).value = object.tok22 ?? '-';
      sheet.cell(CellIndex.indexByString("F11")).value =
          object.soprotkan12 ?? '-';
      sheet.cell(CellIndex.indexByString("F12")).value =
          object.soprotkan22 ?? '-';
      sheet.cell(CellIndex.indexByString("F13")).value =
          object.soprotcepi2 ?? '-';
      sheet.cell(CellIndex.indexByString("F14")).value =
          object.soprotrast2 ?? '-';
      sheet.cell(CellIndex.indexByString("F15")).value =
          object.udsoprgrunta2 ?? '-';

      sheet.cell(CellIndex.indexByString("A17")).value =
          '${object.zamechan1 != null && object.zamechan1.isNotEmpty ? object.zamechan1 : 'нет замечаний'};';

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
                helper.deleteAzd(object.id);
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
        helper.updateAzd(object);
      } else {
        helper.insertAzd(object);
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
