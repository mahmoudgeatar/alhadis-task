import 'package:alhades/style.dart';
import 'package:alhades/widget/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SelectContryMobx.dart';

class sectionDetails extends StatefulWidget {
  @override
  _sectionDetailsState createState() => _sectionDetailsState();
}

enum PopUpMenu { share, copy, add }

class _sectionDetailsState extends State<sectionDetails> {
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
      appBar: searching
          ? AppBar(
              leading: Stack(
                children: <Widget>[
                  Positioned(
                    left: 16,
                    top: 20,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          searching = false;
                        });
                      },
                      child: Text(
                        'إلغاء',
                        style: TextStyle(
                          color: teal,
                          fontSize: 16,
                          fontFamily: 'sukar-bold',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              elevation: 0,
              backgroundColor: appBar,
              title: Container(
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    border: Border.all(color: Color(0xffFFFFFF), width: 1),
                    borderRadius: BorderRadius.circular(25)),
                height: 40,
                width: MediaQuery.of(context).size.width * .80,
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.end,
                  controller: selectCountry.search,
                  onChanged: (_) {
                    selectCountry.onChanged(_, context: context);
                    setState(() {});
                  },
                  style: TextStyle(fontSize: 14, color: darker),
                  decoration: InputDecoration(
                      prefixIcon: !selectCountry.onChange
                          ? Wrap(
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
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
                                color: teal,
                                size: 25,
                              ),
                            ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      hintText: "إبحث في صحيح مسلم",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: gray,
                        fontFamily: 'sukar-bold',
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: teal, width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: teal, width: 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: teal, width: 1),
                      )),
                ),
              ))
          : AppBar(
              elevation: 0,
              backgroundColor: appBar,
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: teal,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              title: Text(
                'صحيح مسلم',
                style: TextStyle(
                  color: teal,
                  fontSize: 23,
                  fontFamily: 'Sukar-black',
                ),
              ),
              centerTitle: true,
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: teal,
                    ),
                    onPressed: () {
                      setState(() {
                        searching = true;
                      });
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
                  Colors.white.withOpacity(0.2), BlendMode.dstATop),
            ),
          ),
          child: Column(
            children: <Widget>[
              Cards(),
              Cards(),
              Cards(),
            ],
          ),
        ),
      ),
    );
  }
}
