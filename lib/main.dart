import 'package:flutter/material.dart';
import 'package:flutter_application_1/bodywidget/newwidget2/new_widget2.dart';
import 'package:flutter_application_1/newwidget/widget_fio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Color(0xff0A1B28),
          ),
        ),
        body: Body2(),
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: Text(
              'Создать аккаунт',
              style: TextStyle(
                color: Color(0xff0A1B28),
                fontSize: 34,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0369,
          ),
          Column(
            children: [
              NewWidget2(
                name: 'Имя',
                surname: 'Имя',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0246,
              ),
              NewWidget2(
                name: 'Фамилия',
                surname: 'Фамилия',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0246,
              ),
              NewWidget2(
                name: 'Отчество',
                surname: 'Отчество',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0616,
              ),
              Divider(
                color: Color(0xffF2F2F2),
                thickness: 2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0616,
              ),
              NewWidget2(
                icon: Icon(Icons.person),
                name: 'Логин',
                surname: 'Логин',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0246,
              ),
              NewWidget2(
                icon: Icon(Icons.password_outlined),
                name: 'Пароль',
                surname: 'Пароль',
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xff22A2BD),
                minimumSize: Size(319, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            onPressed: () {},
            child: Text(
              'Создать',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
