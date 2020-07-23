import 'package:alhades/screen/sections.dart';
import 'package:flutter/material.dart';

import '../style.dart';

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                backgroundColor: Colors.transparent,
                insetPadding: EdgeInsets.all(15),
                child: Stack(
                  overflow: Overflow.visible,
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                        width: double.infinity,
                        height: 485,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('image/homebg.png'),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(
                                Colors.white.withOpacity(0.3),
                                BlendMode.dstATop),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              child: Image.asset('image/صحيح مسلم.png',
                                  fit: BoxFit.cover),
                              width: 140,
                              height: 200,
                            ),
                            SizedBox(height: 9),
                            Text(
                              'صحيح مسلم',
                              style: TextStyle(
                                color: darker,
                                fontFamily: 'cairo-bold',
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'كتاب - صحيح مسلم - لـ أبو الحسين مسلم بن الحجاج \nالقشيري النيسابوري',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'cairo-reg',
                                color: darker,
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              height: 67,
                              width: double.infinity,
                              color: gray,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'عدد الأحاديث',
                                        style: TextStyle(
                                          color: brownc,
                                          fontFamily: 'cairo',
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '3033',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'cairo-black',
                                          color: darker,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'عدد الكتب',
                                        style: TextStyle(
                                          color: brownc,
                                          fontFamily: 'cairo',
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '54',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'cairo-black',
                                          color: darker,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'عدد الصفحات',
                                        style: TextStyle(
                                          color: brownc,
                                          fontFamily: 'cairo',
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '2933',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'cairo-black',
                                          color: darker,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 34,
                                  width: 120,
                                  child: FlatButton(
                                    color: teal,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Section();
                                      }));
                                    },
                                    child: Text(
                                      "تصفح الكتاب",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'sukar-bold'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: IconButton(
                          icon: Icon(
                            Icons.clear,
                            color: teal,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    )
                  ],
                ),
              );
            });
      },
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: ListTile(
          title: Image.asset(
            'image/صحيح مسلم.png',
            fit: BoxFit.cover,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              'صحيح مسلم',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: darker,
                fontSize: 16,
                fontFamily: 'cairo',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
