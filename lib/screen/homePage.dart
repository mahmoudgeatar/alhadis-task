import 'package:alhades/screen/savings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'advancedsearch.dart';
import 'bookSearch.dart';
import 'sections.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> bookNames = [
    'صحيح بخاري',
    'صحيح مسلم',
    'سنن الترمذي',
    'سنن ابن ماجه',
    'اللأربعون النووية',
    'سنن النسائي',
    'سنن أبي داود',
    'مسند أحمد',
  ];

  List<String> imageName = [
    'image/صحيح بخاري.png',
    'image/صحيخ مسلم.png',
    'image/سنن الترمذي.png',
    'image/سنن ابن ماجة.png',
    'image/الاربعون النووية.png',
    'image/سنن النسائي.png',
    'image/سنن أبي داود.png',
    'image/مسند أحمد بن حنبل.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFBFCFC),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff4EA1B5),
            ),
            onPressed: () {}),
        title: Text(
          'الحديث النبوي',
          style: TextStyle(
            color: Color(0xff4EA1B5),
            fontSize: 23,
            fontFamily: 'Sukar-black',
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          GestureDetector(
              child: Image.asset(
                'image/search.png',
                fit: BoxFit.scaleDown,
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return bookSearch();
                }));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('image/homebg.png'),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.white.withOpacity(0.3), BlendMode.dstATop),
            ),
          ),
          child: Column(
            children: <Widget>[
              // soutch button
              Row(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: FlatButton(
                          color: Color(0xffF3F3F3),
                          onPressed: () {
                            setState(() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Savings();
                              }));
                            });
                          },
                          child: Text(
                            'المحفوظات',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Sukar-bold',
                              color: Color(0xff707070),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: FlatButton(
                          color: Color(0xff4EA1B5),
                          onPressed: () {},
                          child: Text(
                            'كتب الحديث',
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Sukar-bold',
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              books(),
            ],
          ),
        ),
      ),
    );
  }

//mianscreen books details
  Widget books() {
    return Column(
      children: <Widget>[
        //advanced search ferild
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return advancedSearch();
              }));
            },
            child: SizedBox(
              height: 43,
              width: MediaQuery.of(context).size.width * .8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  gradient: LinearGradient(
                    colors: [
                      Color(
                        0xff4EA1B5,
                      ),
                      Color(
                        0xff2E7788,
                      ),
                    ],
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      'بحث متقدم',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Sukar-bold',
                      ),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
            ),
          ),
        ),
        //books
        SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.width + 150),
                crossAxisSpacing: 0,
              ),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: imageName.length,
              itemBuilder: (context, index) {
                return GridTile(
                  child: booksDetails(imageName[index], bookNames[index]),
                );
              },
            ),
          ),
        )
      ],
    );
  }

//alhades books details
  Widget booksDetails(String image, String name) {
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
                              child: Image.asset('image/صحيخ مسلم.png',
                                  fit: BoxFit.cover),
                              width: 140,
                              height: 200,
                            ),
                            SizedBox(height: 9),
                            Text(
                              'صحيح مسلم',
                              style: TextStyle(
                                color: Color(0xff191818),
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
                                color: Color(0xff191818),
                              ),
                            ),
                            SizedBox(height: 12),
                            Container(
                              height: 67,
                              width: double.infinity,
                              color: Color(0xffF3F3F3),
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
                                          color: Color(0xffB06544),
                                          fontFamily: 'cairo',
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '3033',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'cairo-black',
                                          color: Color(0xff191818),
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
                                          color: Color(0xffB06544),
                                          fontFamily: 'cairo',
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '54',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'cairo-black',
                                          color: Color(0xff191818),
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
                                          color: Color(0xffB06544),
                                          fontFamily: 'cairo',
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '2933',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'cairo-black',
                                          color: Color(0xff191818),
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
                                    color: Color(0xff4EA1B5),
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
                            color: Color(0xff4EA1B5),
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
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color(0xff191818),
              fontSize: 16,
              fontFamily: 'cairo',
            ),
          ),
        ],
      ),
    );
  }
}
