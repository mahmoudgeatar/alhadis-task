//import 'package:flutter/material.dart';
//
//class popupMenu extends StatefulWidget {
//  @override
//  _popupMenuState createState() => _popupMenuState();
//}
//
//enum PopUpMenu { share, copy, remove }
//
//class _popupMenuState extends State<popupMenu> {
//  @override
//  Widget build(BuildContext context) {
//    return _popUpMenu(context);
//  }
//
//  Widget _popUpMenu(BuildContext context) {
//    return PopupMenuButton<PopUpMenu>(
//      itemBuilder: (context) {
//        return [
//          PopupMenuItem<PopUpMenu>(
//            value: PopUpMenu.share,
//            child: Column(
//              children: <Widget>[
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.only(left: 20),
//                      child: Text(
//                        "مشاركة",
//                        style: TextStyle(
//                          color: Color(0xff191818),
//                          fontSize: 14,
//                          fontFamily: 'sukar-bold',
//                        ),
//                      ),
//                    ),
//                    SizedBox(width: 4),
//                    SizedBox(
//                      width: 16,
//                      height: 16,
//                      child: Image.asset(
//                        'image/share.png',
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ],
//                ),
//                Divider()
//              ],
//            ),
//          ),
//          PopupMenuItem<PopUpMenu>(
//            value: PopUpMenu.copy,
//            child: Column(
//              children: <Widget>[
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  children: <Widget>[
//                    Text(
//                      "نسخ",
//                      style: TextStyle(
//                        color: Color(0xff191818),
//                        fontSize: 14,
//                        fontFamily: 'sukar-bold',
//                      ),
//                    ),
//                    Icon(Icons.content_copy),
//                  ],
//                ),
//                Divider()
//              ],
//            ),
//          ),
//          PopupMenuItem<PopUpMenu>(
//            value: PopUpMenu.remove,
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.end,
//              children: <Widget>[
//                Text(
//                  "إزالة",
//                  style: TextStyle(
//                    color: Color(0xff191818),
//                    fontSize: 14,
//                    fontFamily: 'sukar-bold',
//                  ),
//                ),
//                SizedBox(width: 4),
//                Icon(Icons.close),
//              ],
//            ),
//          ),
//        ];
//      },
//      onSelected: (PopUpMenu menu) {
//        switch (menu) {
//          case PopUpMenu.share:
//            print('sahre');
//            break;
//          case PopUpMenu.copy:
//            print('copy');
//            break;
//          case PopUpMenu.remove:
//            print('remove');
//            break;
//        }
//      },
//      icon: Icon(
//        Icons.more_vert,
//        color: Colors.white,
//      ),
//      offset: Offset(0, -50),
//    );
//  }
//}
