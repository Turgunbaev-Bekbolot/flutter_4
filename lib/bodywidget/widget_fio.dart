import 'package:flutter/material.dart';
import 'package:flutter_application_1/newwidget/widget_fio.dart';

class scaffoldwidget extends StatelessWidget {
  const scaffoldwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1E2D),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff0B1E2D),
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xffFFFFFF),
        ),
        title: Text(
          'Изменить ФИО',
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 20,
          ),
        ),
      ),
      body: bodywidget(),
    );
  }
}

class bodywidget extends StatelessWidget {
  const bodywidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewWidget(
          name: 'Имя',
          surname: 'Имя',
        ),
        NewWidget(
          name: 'Фамилия',
          surname: 'Фамилия',
        ),
        NewWidget(
          name: 'Отчество',
          surname: 'Отчество',
        ),
        SizedBox(
          height: 280,
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
            'Сохранить',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
