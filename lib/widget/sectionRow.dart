import 'package:alhades/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SectionRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 50, bottom: 0),
          child: SizedBox(
            height: 34,
            width: double.infinity,
            child: Text(
              'المقدمة',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: brownc,
                fontSize: 20,
                fontFamily: 'dt',
              ),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 55, top: 0),
            child: SizedBox(
              child: Text(
                'عدد الأبواب 16',
                style: TextStyle(
                  color: darkGray,
                  fontSize: 14,
                  fontFamily: 'cairo-reg',
                ),
              ),
            )),
        Divider(
          color: brownc,
          thickness: 1.5,
        ),
      ],
    );
  }
}
