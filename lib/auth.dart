import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import './dbhelper_ukz.dart';
import './start_page.dart';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.assignment_outlined),
          color: Colors.white,
          onPressed: () {},
          iconSize: 44,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text(
            'ЖУРНАЛ ЭХЗ',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                cursorColor: Theme.of(context).primaryColor,
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                  )),
                  labelStyle: TextStyle(
                    fontSize: 22,
                    color: Theme.of(context).primaryColor,
                  ),
                  labelText: 'Введите пароль',
                  helperText: 'Пароль должен состоять из 4 цифр',
                  errorText: _errorMessage,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor,
              )),
              onPressed: _onSubmit,
              child: Text(
                'ВОЙТИ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> _getFilePath() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path + '/password.txt';
  }

  void _onSubmit() async {
    DbHelperUkz dbHelperUkz = DbHelperUkz();
    // DbHelperLkp dbHelperLkp = DbHelperLkp();
    // DbHelperVhk dbHelperVhk = DbHelperVhk();
    int countUkz = await dbHelperUkz.getTodoCountUkz();
    // int countLkp = await dbHelperLkp.getTodoCountLkp();
    // int countVhk = await dbHelperVhk.getTodoCountVhk();
    final password = _passwordController.text.trim();
    if (password.isEmpty) {
      setState(() {
        _errorMessage = 'Пароль не может быть пустым';
      });
    } else {
      final filePath = await _getFilePath();
      final file = File(filePath);

      if (file.existsSync()) {
        // Если файл существует, то запрашиваем пароль
        final storedPassword = await file.readAsString();
        if (password == storedPassword) {
          // Доступ разрешен

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (_) => StartPage(
                      countUkz: countUkz,
                      // countLkp: countLkp,
                      // countVhk: countVhk,
                    )),
          );
        } else {
          // Неверный пароль
          setState(() {
            _errorMessage = 'Неверный пароль';
          });
        }
      } else {
        // Если файл не существует, то устанавливаем новый пароль
        if (password.length != 4 || int.tryParse(password) == null) {
          setState(() {
            _errorMessage = 'Пароль должен состоять из 4 цифр';
          });
        } else {
          await file.writeAsString(password);
          // Пароль успешно установлен
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (_) => StartPage(
                      countUkz: countUkz,
                      // countLkp: countLkp,
                      // countVhk: countVhk,
                    )),
          );
        }
      }
    }
  }
}
