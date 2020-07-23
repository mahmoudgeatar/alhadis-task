import 'package:alhades/style.dart';
import 'package:alhades/widget/sectionRow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sectionDetails.dart';

class Section extends StatefulWidget {
  @override
  _SectionState createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBar,
        elevation: .3,
        title: Text(
          'تقسيم الكتاب',
          style: TextStyle(
            color: teal,
            fontSize: 23,
            fontFamily: 'sukar-black',
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: teal),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/homebg.png'),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.white.withOpacity(0.2), BlendMode.dstATop),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return sectionDetails();
                  }));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SectionRow(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
