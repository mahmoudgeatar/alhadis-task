import 'package:alhades/screen/hadisSavedDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share/share.dart';

import '../style.dart';

enum PopUpMenu { share, copy, remove }

class SavedCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return savingDetails();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0.0, 0.0))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                // header
                Container(
                  decoration: BoxDecoration(
                    color: teal,
                    image: DecorationImage(
                      image: AssetImage('image/cardTop.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _popUpMenu(context),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'المقدمة',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'dt',
                              ),
                            ),
                            SizedBox(width: 8),
                            SizedBox(
                              width: 33,
                              height: 33,
                              child: Image.asset(
                                'image/ImamMuslim.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  height: 46,
                ),
                //bodyTitle
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على الرسول',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: darker,
                          fontSize: 12,
                          fontFamily: 'sukar-black',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'image/book.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                //body Content
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 10, 8),
                  width: double.infinity,
                  child: Text(
                    'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على رسول الله صلى الله عليه وسلم واعلم \nوفقك الله تعالى أن الواجب على كل أحد عرف التمييز بين صحيح الروايات وسقيمها وثقات الناقلين لها من المتهمين أن لا يروي منها إلا ما عرف صحة مخارجه والستارة في ناقليه وأن يتقي منها ما كان منها عن أهل التهم والمعاندين من أهل البدع [ ص: 9 ] والدليل على أن الذي قلنا من هذا هو اللازم دون ما خالفه قول الله جل ذكره يا أيها الذين آمنوا إن جاءكم فاسق بنبإ فتبينوا أن تصيبوا قوما بجهالة فتصبحوا على ما فعلتم نادمين وقال جل ثناؤه ممن ترضون من الشهداء وقال عز وجل وأشهدوا ذوي عدل منكم فدل بما ذكرنا من هذه الآي أن خبر الفاسق ساقط غير مقبول وأن شهادة غير العدل مردودة والخبر وإن فارق معناه معنى الشهادة في بعض الوجوه فقد يجتمعان في أعظم معانيهما إذ كان خبر الفاسق غير مقبول عند أهل العلم كما أن شهادته مردودة عند جميعهم ودلت السنة على نفي رواية المنكر من الأخبار كنحو دلالة القرآن على نفي خبر الفاسق',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff37352F),
                      fontFamily: 'cairo',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: gray,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'رقم الحديث',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: brownc,
                                    fontFamily: 'sukar-bold',
                                  ),
                                ),
                                SizedBox(width: 14),
                                Image.asset('image/paper.png'),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              32.toString(),
                              style: TextStyle(
                                color: darkGray,
                                fontFamily: 'sukar-black',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: gray,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'الراوي',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: brownc,
                                    fontFamily: 'sukar-bold',
                                  ),
                                ),
                                SizedBox(width: 14),
                                Image.asset('image/sound.png'),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              'صحيح مسلم',
                              style: TextStyle(
                                color: darkGray,
                                fontFamily: 'sukar-bold',
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _popUpMenu(BuildContext context) {
    return PopupMenuButton<PopUpMenu>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.share,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "مشاركة",
                        style: TextStyle(
                          color: darker,
                          fontSize: 14,
                          fontFamily: 'sukar-bold',
                        ),
                      ),
                    ),
                    SizedBox(width: 4),
                    SizedBox(
                      width: 16,
                      height: 16,
                      child: Image.asset(
                        'image/share.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Divider()
              ],
            ),
          ),
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.copy,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "نسخ",
                      style: TextStyle(
                        color: darker,
                        fontSize: 14,
                        fontFamily: 'sukar-bold',
                      ),
                    ),
                    SizedBox(
                      width: 16,
                      height: 18,
                      child: Image.asset(
                        'image/copy.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Divider()
              ],
            ),
          ),
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.remove,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "إزالة",
                  style: TextStyle(
                    color: darker,
                    fontSize: 14,
                    fontFamily: 'sukar-bold',
                  ),
                ),
                SizedBox(width: 4),
                SizedBox(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    'image/clear.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ];
      },
      onSelected: (PopUpMenu menu) {
        switch (menu) {
          case PopUpMenu.share:
            share(context, 'share');
            break;
          case PopUpMenu.copy:
            Clipboard.setData(new ClipboardData(text: 'title'));
            FlutterToast.showToast(
                msg: "تم النسخ",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.black,
                textColor: Colors.white,
                fontSize: 16.0);
            break;
          case PopUpMenu.remove:
            print('remove');
            break;
        }
      },
      icon: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
      offset: Offset(0, -50),
    );
  }

  void share(BuildContext context, String s) {
    final RenderBox box = context.findRenderObject();
    final String text = 'share';
    Share.share(text,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
