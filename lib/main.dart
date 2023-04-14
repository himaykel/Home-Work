import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _textIndex = 0;

  void _changeText() {
    setState(() {
      _textIndex = _textIndex + 1;
    });
    print(_textIndex);
  }

  @override
  Widget build(BuildContext context) {
    var welcomeText = [
      'Ласкаво просимо до нашого додатку!',
      'Це потужний інструмент, що допоможе вам отримати доступ до різних функцій та можливостей.',
      'Перш ніж почати використовувати додаток, рекомендуємо вам прочитати цей набір інструкцій.',
      'Реєстрація: \nПерш ніж почати використовувати додаток, вам потрібно зареєструватися. Для цього вам потрібно ввести свій електронний адрес та пароль.',
      'Основний екран: \nПісля входу в додаток ви побачите основний екран, де ви зможете перейти до різних розділів додатку.',
      'Навігація: \nВи можете переміщуватися по додатку за допомогою меню, яке знаходиться зверху на екрані, або за допомогою кнопок "назад" та "вперед" на вашому пристрої.',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Art Wizard'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image.asset(
              //   'assets/images/ArtWizard.png',
              //   width: 80,
              // ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  welcomeText[_textIndex],
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                  onPressed: _changeText, child: const Text('Нажми мене ;)')),
            ],
          ),
        ),
      ),
    );
  }
}
