import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SelectContryMobx.dart';

class bookSearch extends StatefulWidget {
  @override
  _bookSearchState createState() => _bookSearchState();
}

class _bookSearchState extends State<bookSearch> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      selectCountry.search.clear();
    });
    super.initState();
  }

  SelectContryMobx selectCountry = SelectContryController();
  TextEditingController controller = TextEditingController();
  bool searching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffFBFCFC),
                  boxShadow: [
                    BoxShadow(color: Color(00000029), blurRadius: 1),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        (Icons.arrow_back_ios),
                        color: Color(0xff4EA1B5),
                      ),
                    ),
                    SizedBox(width: 6),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          border:
                              Border.all(color: Color(0xffFFFFFF), width: 1),
                          borderRadius: BorderRadius.circular(25)),
                      height: 40,
                      width: MediaQuery.of(context).size.width * .84,
                      child: TextField(
                        autofocus: true,
                        textAlign: TextAlign.end,
                        controller: selectCountry.search,
                        onChanged: (_) {
                          selectCountry.onChanged(_, context: context);
                          setState(() {});
                        },
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff191818)),
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
                                      color: Color(0xff4EA1B5),
                                      size: 25,
                                    ),
                                  ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            hintText: "إبحث عن اسم كتاب أو مجلد للحديث",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xffBFBFBF),
                              fontFamily: 'sukar-bold',
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  color: Color(0xff4EA1B5), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  color: Color(0xff4EA1B5), width: 1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  color: Color(0xff4EA1B5), width: 1),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (conntext, inedex) {
                    return Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'صحيح مسلم',
                              style: TextStyle(
                                color: Color(0xff191818),
                                fontSize: 16,
                                fontFamily: 'sukar-bold',
                              ),
                            ),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: SizedBox(
                                height: 63,
                                width: 43,
                                child: Image.asset('image/صحيخ مسلم.png'),
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                      ],
                    );
                  },
//          separatorBuilder: (context, index) {
//            return Divider();
//          },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
