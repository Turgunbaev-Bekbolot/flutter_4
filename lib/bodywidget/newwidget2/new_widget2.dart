import 'package:flutter/material.dart';

class NewWidget2 extends StatelessWidget {
  String? name;
  String? surname;
  Icon? icon;
  NewWidget2({
    Key? key,
    this.icon,
    required this.name,
    required this.surname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name!,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                prefixIcon: icon,
                border: InputBorder.none,
                hintText: surname!,
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          width: 319,
          height: MediaQuery.of(context).size.height * 0.0591,
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ],
    );
  }
}
