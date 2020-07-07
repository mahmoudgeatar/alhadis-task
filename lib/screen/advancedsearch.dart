import 'package:draggable_scrollbar_sliver/draggable_scrollbar_sliver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'SelectContryMobx.dart';

class advancedSearch extends StatefulWidget {
  @override
  _advancedSearchState createState() => _advancedSearchState();
}

class _advancedSearchState extends State<advancedSearch> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      selectCountry.search.clear();
    });
    super.initState();
  }

  SelectContryMobx selectCountry = SelectContryController();
  ScrollController scrollController = ScrollController();

  List data = [
    "المقدمة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
    "كتاب الايمان",
    "كتاب الطهارة",
  ];
  List<String> kind = [
    'الأحاديث القدسية',
    'آثار الصحابة',
    'كل الاحاديث',
    'الأحاديث المرفوعة',
  ];

  int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: .3,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'بحث متقدم',
          style: TextStyle(
            color: Color(0xff37352F),
            fontSize: 23,
            fontFamily: 'sukar-black',
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Color(0xff4EA1B5),
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: <Widget>[
            //first text feild
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    'كلمة البحث',
                    style: TextStyle(
                        color: Color(0xff191818),
                        fontSize: 15,
                        fontFamily: 'sukar-bold'),
                  ),
                ),
                Container(
                  height: 34,
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(bottom: 8, right: 8, left: 8),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide:
                            BorderSide(color: Color(0xff707070), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide:
                            BorderSide(color: Color(0xff707070), width: 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                )
              ],
            ),
            //first drobdown
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  child: Text(
                    'كتاب الحديث',
                    style: TextStyle(
                        color: Color(0xff191818),
                        fontSize: 15,
                        fontFamily: 'sukar-bold'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showAdvancedDialo();
                  },
                  child: SizedBox(
                    height: 34,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xff707070), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff4EA1B5),
                        size: 26,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                )
              ],
            ),
            SizedBox(height: 6),
            //secound drobdown
            GestureDetector(
              onTap: () {
                _showAdvancedDialo();
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    child: Text(
                      'درجة الحديث',
                      style: TextStyle(
                          color: Color(0xff191818),
                          fontSize: 15,
                          fontFamily: 'sukar-bold'),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xff707070), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff4EA1B5),
                        size: 26,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  )
                ],
              ),
            ),
            SizedBox(height: 6),
            //third drobdown
            GestureDetector(
              onTap: () {
                _showAdvancedDialo();
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    child: Text(
                      'راوي الحديث',
                      style: TextStyle(
                          color: Color(0xff191818),
                          fontSize: 15,
                          fontFamily: 'sukar-bold'),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xff707070), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff4EA1B5),
                        size: 26,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  )
                ],
              ),
            ),
            SizedBox(height: 6),
            //fourth drobdown
            GestureDetector(
              onTap: () {
                _showAdvancedDialo();
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    child: Text(
                      'المحدث',
                      style: TextStyle(
                          color: Color(0xff191818),
                          fontSize: 15,
                          fontFamily: 'sukar-bold'),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xff707070), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xff4EA1B5),
                        size: 26,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  )
                ],
              ),
            ),
            SizedBox(height: 6),
            //alhadis kind
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  child: Text(
                    'نوع الحديث',
                    style: TextStyle(
                        color: Color(0xff191818),
                        fontSize: 15,
                        fontFamily: 'sukar-bold'),
                  ),
                ),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 5),
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: kind.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          _onSelected(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: (_selectedIndex == index)
                                ? Color(0xff4EA1B5)
                                : Color(0xffF3F3F3),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              kind[index],
                              style: TextStyle(
                                  color: (_selectedIndex == index)
                                      ? Colors.white
                                      : Color(0xff37352F),
                                  fontSize: 14,
                                  fontFamily: 'sukar-reg'),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 34,
                    width: 120,
                    child: FlatButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                          side: BorderSide(color: Color(0xff4EA1B5), width: 1)),
                      onPressed: () {},
                      child: Text(
                        "إعادة",
                        style: TextStyle(
                            color: Color(0xff4EA1B5),
                            fontSize: 14,
                            fontFamily: 'sukar-bold'),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    height: 34,
                    width: 120,
                    child: FlatButton(
                      color: Color(0xff4EA1B5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      onPressed: () {},
                      child: Text(
                        "بحث",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'sukar-bold'),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _onSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _showAdvancedDialo() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(top: 40),
            child: AlertDialog(
              insetPadding: EdgeInsets.all(15),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white, width: 1)),
              contentPadding: EdgeInsets.all(10),
              content: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.clear,
                          size: 25,
                          color: Color(0xff4EA1B5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width * .85,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            border:
                                Border.all(color: Color(0xffFFFFFF), width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        height: 40,
                        child: Observer(builder: (context) {
                          return TextField(
                            autofocus: true,
                            textAlign: TextAlign.end,
                            controller: selectCountry.search,
                            onChanged: (_) {
                              selectCountry.onChanged(_, context: context);
                              setState(() {});
                            },
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff191818)),
                            decoration: InputDecoration(
                              prefixIcon: !selectCountry.onChange
                                  ? Wrap(
                                      alignment: WrapAlignment.center,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      runAlignment: WrapAlignment.center,
                                      children: <Widget>[
                                        Image.asset('image/search.png')
                                      ],
                                    )
                                  : InkWell(
                                      onTap: () {
                                        selectCountry.clear();
                                        selectCountry.keyword = "";
                                        setState(() {});
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        color: Color(0xff116B7B),
                                        size: 25,
                                      ),
                                    ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              hintText: "ابحث عن كتاب الحديث",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xffBFBFBF),
                                  fontFamily: 'sukar-bold'),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Color(0xff116B7B), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Color(0xff116B7B), width: 1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: Color(0xff116B7B), width: 1),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Expanded(
                      child: DraggableScrollbar(
                        alwaysVisibleScrollThumb: true,
                        controller: scrollController,
                        backgroundColor: Color(0xff116B7B),
                        child: ListView.builder(
                            controller: scrollController,
                            itemCount: data.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, loc) {
                              if (data[loc].contains(selectCountry.keyword))
                                return InkWell(
                                  onTap: () {
                                    selectCountry.onSelect(loc);
                                    selectCountry.text = data[loc];
                                    Navigator.pop(context, selectCountry.text);
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Observer(builder: (context) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              if (selectCountry.index == loc)
                                                Icon(
                                                  Icons.check,
                                                  size: 20,
                                                  color: Color(0xff116B7B),
                                                )
                                              else
                                                Container(),
                                              Text(
                                                data[loc],
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xff191818)),
                                              )
                                            ],
                                          );
                                        }),
                                      ),
                                      Divider(
                                        height: 2,
                                        color: Color(0xffF3F3F3),
                                      )
                                    ],
                                  ),
                                );
                              else
                                return Container();
                            }),
                        heightScrollThumb: 48.0,
                        scrollThumbBuilder: (backgroundColor, thumbAnimation,
                            labelAnimation, height,
                            {labelConstraints, labelText}) {
                          return FadeTransition(
                            opacity: thumbAnimation,
                            alwaysIncludeSemantics: true,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: backgroundColor,
                              ),
                              height: height,
                              width: 4.0,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
