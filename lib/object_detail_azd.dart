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
            backgroundColor: Theme.of(context).primaryColor,
            title: isEdit
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ИЗМЕНИТЬ ЗАПИСЬ',
                        style: TextStyle(
                          fontSize: 16,
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
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.save,
                          color: Theme.of(context).accentColor,
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
                            'ГРУППА №1',
                            style: TextStyle(
                                fontSize: 22,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(height: 10),
                      Divider(thickness: 4),
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
      ByteData data = await rootBundle.load('assets/form/TOUPZ.xlsx');
      List<int> bytes = data.buffer.asUint8List();

      // Открываем файл Excel
      var excel = Excel.decodeBytes(bytes);

      // Получаем страницу, на которой нужно вставить данные
      var sheet = excel['TOUPZ'];

      // Вставляем данные в определенные ячейки

      sheet.cell(CellIndex.indexByString("A1")).value =
          'Протокол обслуживания УКЗ № ${object.title}' ?? '-';
      sheet.cell(CellIndex.indexByString("A2")).value =
          'Дата ${object.date1}' ?? '-';

      sheet.cell(CellIndex.indexByString("B4")).value = object.title ?? '-';
      // sheet.cell(CellIndex.indexByString("B5")).value =
      //     object.sostojanieskz1 ?? '-';
      // sheet.cell(CellIndex.indexByString("B6")).value =
      //     object.potencialskz1 ?? '-';
      // sheet.cell(CellIndex.indexByString("B8")).value =
      //     object.naprrabskz1 ?? '-';
      // sheet.cell(CellIndex.indexByString("B10")).value =
      //     object.naprmaxskz1 ?? '-';
      // sheet.cell(CellIndex.indexByString("B11")).value =
      //     object.tokrabskz1 ?? '-';
      // sheet.cell(CellIndex.indexByString("B13")).value =
      //     object.tokmaxskz1 ?? '-';
      // sheet.cell(CellIndex.indexByString("B14")).value =
      //     object.zapaspotokuskz1 ?? '-';
      // sheet.cell(CellIndex.indexByString("B15")).value =
      //     '${object.shuntnaprskz1 ?? '-'}-${object.shunttokskz1 ?? '-'}';
      // sheet.cell(CellIndex.indexByString("B16")).value =
      //     object.shuntnaprskz2 ?? '-';
      // sheet.cell(CellIndex.indexByString("B17")).value =
      //     object.soprotskz1 ?? '-';
      // sheet.cell(CellIndex.indexByString("B18")).value =
      //     object.schetelec1 ?? '-';
      // sheet.cell(CellIndex.indexByString("B19")).value =
      //     object.schetnarab1 ?? '-';
      // sheet.cell(CellIndex.indexByString("B20")).value =
      //     object.schetzasch1 ?? '-';

      // sheet.cell(CellIndex.indexByString("D4")).value = object.kipname1 ?? '-';
      // sheet.cell(CellIndex.indexByString("D5")).value =
      //     object.sostojaniekip1 ?? '-';
      // sheet.cell(CellIndex.indexByString("D6")).value =
      //     object.peremsost1 ?? '-';
      // sheet.cell(CellIndex.indexByString("D7")).value =
      //     object.potenctdvklsum1 ?? '-';
      // sheet.cell(CellIndex.indexByString("D8")).value =
      //     object.potenctdvklpol1 ?? '-';
      // sheet.cell(CellIndex.indexByString("D9")).value =
      //     object.potenctdotklsum1 ?? '-';
      // sheet.cell(CellIndex.indexByString("D10")).value =
      //     object.potenctdotklpol1 ?? '-';
      // sheet.cell(CellIndex.indexByString("D11")).value =
      //     object.datchkorr1 ?? '-';

      // sheet.cell(CellIndex.indexByString("F4")).value = object.kipname2 ?? '-';
      // sheet.cell(CellIndex.indexByString("F5")).value =
      //     object.sostojaniekip2 ?? '-';
      // sheet.cell(CellIndex.indexByString("F6")).value =
      //     object.peremsost2 ?? '-';
      // sheet.cell(CellIndex.indexByString("F7")).value =
      //     object.potenctdvklsum2 ?? '-';
      // sheet.cell(CellIndex.indexByString("F8")).value =
      //     object.potenctdvklpol2 ?? '-';
      // sheet.cell(CellIndex.indexByString("F9")).value =
      //     object.potenctdotklsum2 ?? '-';
      // sheet.cell(CellIndex.indexByString("F10")).value =
      //     object.potenctdotklpol2 ?? '-';
      // sheet.cell(CellIndex.indexByString("F11")).value =
      //     object.datchkorr2 ?? '-';

      // sheet.cell(CellIndex.indexByString("D13")).value = object.kipname3 ?? '-';
      // sheet.cell(CellIndex.indexByString("D14")).value =
      //     object.sostojaniekip3 ?? '-';
      // sheet.cell(CellIndex.indexByString("D15")).value =
      //     object.peremsost3 ?? '-';
      // sheet.cell(CellIndex.indexByString("D16")).value =
      //     object.potenctdvklsum3 ?? '-';
      // sheet.cell(CellIndex.indexByString("D17")).value =
      //     object.potenctdvklpol3 ?? '-';
      // sheet.cell(CellIndex.indexByString("D18")).value =
      //     object.potenctdotklsum3 ?? '-';
      // sheet.cell(CellIndex.indexByString("D19")).value =
      //     object.potenctdotklpol3 ?? '-';
      // sheet.cell(CellIndex.indexByString("D20")).value =
      //     object.datchkorr3 ?? '-';

      // sheet.cell(CellIndex.indexByString("F13")).value = object.kipname4 ?? '-';
      // sheet.cell(CellIndex.indexByString("F14")).value =
      //     object.sostojaniekip4 ?? '-';
      // sheet.cell(CellIndex.indexByString("F15")).value =
      //     object.peremsost4 ?? '-';
      // sheet.cell(CellIndex.indexByString("F16")).value =
      //     object.potenctdvklsum4 ?? '-';
      // sheet.cell(CellIndex.indexByString("F17")).value =
      //     object.potenctdvklpol4 ?? '-';
      // sheet.cell(CellIndex.indexByString("F18")).value =
      //     object.potenctdotklsum4 ?? '-';
      // sheet.cell(CellIndex.indexByString("F19")).value =
      //     object.potenctdotklpol4 ?? '-';
      // sheet.cell(CellIndex.indexByString("F20")).value =
      //     object.datchkorr4 ?? '-';

      // sheet.cell(CellIndex.indexByString("H4")).value = object.bdr1 ?? '-';
      // sheet.cell(CellIndex.indexByString("H5")).value =
      //     object.sostojaniebdr1 ?? '-';
      // sheet.cell(CellIndex.indexByString("H6")).value = object.tok1bdr1 ?? '-';
      // sheet.cell(CellIndex.indexByString("H7")).value = object.tok2bdr1 ?? '-';
      // sheet.cell(CellIndex.indexByString("H8")).value = object.tok3bdr1 ?? '-';
      // sheet.cell(CellIndex.indexByString("H9")).value = object.tok4bdr1 ?? '-';

      // sheet.cell(CellIndex.indexByString("H13")).value = object.bdr2 ?? '-';
      // sheet.cell(CellIndex.indexByString("H14")).value =
      //     object.sostojaniebdr2 ?? '-';
      // sheet.cell(CellIndex.indexByString("H15")).value = object.tok1bdr2 ?? '-';
      // sheet.cell(CellIndex.indexByString("H16")).value = object.tok2bdr2 ?? '-';
      // sheet.cell(CellIndex.indexByString("H17")).value = object.tok3bdr2 ?? '-';
      // sheet.cell(CellIndex.indexByString("H18")).value = object.tok4bdr2 ?? '-';

      // sheet.cell(CellIndex.indexByString("J4")).value = object.markaaz ?? '-';
      // sheet.cell(CellIndex.indexByString("J5")).value =
      //     object.sostojanieaz ?? '-';
      // sheet.cell(CellIndex.indexByString("J7")).value = object.tok5az ?? '-';
      // sheet.cell(CellIndex.indexByString("J8")).value = object.tok1az ?? '-';
      // sheet.cell(CellIndex.indexByString("J9")).value = object.tok2az ?? '-';
      // sheet.cell(CellIndex.indexByString("J10")).value = object.tok3az ?? '-';
      // sheet.cell(CellIndex.indexByString("J11")).value = object.tok3az ?? '-';
      // sheet.cell(CellIndex.indexByString("J12")).value =
      //     object.soprrast5az ?? '-';
      // sheet.cell(CellIndex.indexByString("J13")).value =
      //     object.soprrast1az ?? '-';
      // sheet.cell(CellIndex.indexByString("J14")).value =
      //     object.soprrast2az ?? '-';
      // sheet.cell(CellIndex.indexByString("J15")).value =
      //     object.soprrast3az ?? '-';
      // sheet.cell(CellIndex.indexByString("J16")).value =
      //     object.soprrast4az ?? '-';
      // sheet.cell(CellIndex.indexByString("J17")).value =
      //     object.rogruntaz ?? '-';
      // sheet.cell(CellIndex.indexByString("J18")).value =
      //     object.rogruntktp ?? '-';
      // sheet.cell(CellIndex.indexByString("J19")).value =
      //     object.rogruntraz ?? '-';

      // sheet.cell(CellIndex.indexByString("L4")).value =
      //     object.sostojaniektp ?? '-';
      // sheet.cell(CellIndex.indexByString("L5")).value =
      //     object.sostojanieshr ?? '-';
      // sheet.cell(CellIndex.indexByString("L7")).value =
      //     object.soprotzzktp ?? '-';
      // sheet.cell(CellIndex.indexByString("L8")).value =
      //     object.soprotzzraz ?? '-';

      // sheet.cell(CellIndex.indexByString("L10")).value =
      //     object.sostojanievl1 ?? '-';
      // sheet.cell(CellIndex.indexByString("L11")).value =
      //     object.sostojaniekl1 ?? '-';

      // sheet.cell(CellIndex.indexByString("L13")).value =
      //     object.sostojanievl2 ?? '-';
      // sheet.cell(CellIndex.indexByString("L14")).value =
      //     object.sostojaniekl2 ?? '-';

      // sheet.cell(CellIndex.indexByString("L16")).value =
      //     object.sostojanievl3 ?? '-';
      // sheet.cell(CellIndex.indexByString("L17")).value =
      //     object.sostojaniekl3 ?? '-';

      // sheet.cell(CellIndex.indexByString("L19")).value =
      //     object.provodvl2 ?? '-';
      // sheet.cell(CellIndex.indexByString("L20")).value =
      //     object.provodvl1 ?? '-';

      // sheet.cell(CellIndex.indexByString("A22")).value =
      //     'СКЗ 1:${object.zamechskz1 != null && object.zamechskz1.isNotEmpty ? object.zamechskz1 : 'нет замечаний'}; СКЗ 2:${object.zamechskz2 != null && object.zamechskz2.isNotEmpty ? object.zamechskz2 : 'нет замечаний'};';

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
