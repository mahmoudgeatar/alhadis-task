import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sectionDetails.dart';

class Section extends StatefulWidget {
  @override
  _SectionState createState() => _SectionState();
}

class _SectionState extends State<Section> {
  List<String> title = [
    'المقدمة',
    'كتاب الأيمان',
    ' كتاب الطهارة',
    'كتاب الحيض',
    ' كتاب الصلاة',
    'كتاب صلاة المسافرين و قصرها',
    'كتاب الجمعة',
    'كتاب صلاة الأستسقاء',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFBFCFC),
        elevation: .3,
        title: Text(
          'تقسيم الكتاب',
          style: TextStyle(
            color: Color(0xff4EA1B5),
            fontSize: 23,
            fontFamily: 'sukar-black',
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Color(0xff4EA1B5)),
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
            itemCount: title.length,
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
                    Padding(
                      padding: const EdgeInsets.only(right: 50, bottom: 0),
                      child: SizedBox(
                        height: 34,
                        width: double.infinity,
                        child: Text(
                          title[index],
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xffB06544),
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
                              color: Color(0xff707070),
                              fontSize: 14,
                              fontFamily: 'cairo-reg',
                            ),
                          ),
                        )),
                    Divider(
                      color: Color(0xffB06544),
                      thickness: 1.5,
                    ),
                  ],
                ),
              );
            },
//          separatorBuilder: (context, index) {
//            return Divider();
//          },
          ),
        ),
      ),
    );
  }
}
