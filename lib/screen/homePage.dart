import 'package:alhades/tabs/bookTab.dart';
import 'package:alhades/tabs/saved.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'bookSearch.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 2);
    super.initState();
  }

  int selected = 1;

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
      body: Column(
        children: <Widget>[
          Container(
            child: TabBar(
              labelPadding: EdgeInsets.all(0),
              indicatorWeight: .01,
              controller: _tabController,
              indicatorColor: Colors.transparent,
              indicatorPadding: EdgeInsets.all(0),
              tabs: <Tab>[
                Tab(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color:
                        (selected == 1) ? Color(0xffF3F3F3) : Color(0xff4EA1B5),
                    child: Center(
                      child: Text(
                        'المحفوظات',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Sukar-bold',
                          color: (selected == 1)
                              ? Color(0xff707070)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color:
                        (selected == 0) ? Color(0xffF3F3F3) : Color(0xff4EA1B5),
                    child: Center(
                      child: Text(
                        "كتب الحديث",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Sukar-bold',
                          color: (selected == 0)
                              ? Color(0xff707070)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              onTap: (index) {
                setState(() {
                  selected = index;
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/homebg.png'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.white.withOpacity(0.3), BlendMode.dstATop),
                ),
              ),
              child: TabBarView(
                controller: _tabController,
                children: [
                  Saved(),
                  BookTab(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
