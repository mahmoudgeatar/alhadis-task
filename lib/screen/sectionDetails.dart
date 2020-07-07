import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share/share.dart';

import 'SelectContryMobx.dart';
import 'hadisDetails.dart';
import 'savings.dart';

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
                          color: Color(0xff4EA1B5),
                          fontSize: 16,
                          fontFamily: 'sukar-bold',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              elevation: 0,
              backgroundColor: Color(0xffFBFCFC),
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
                  style: TextStyle(fontSize: 14, color: Color(0xff191818)),
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
                                color: Color(0xff4EA1B5),
                                size: 25,
                              ),
                            ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      hintText: "إبحث في صحيح مسلم",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xffBFBFBF),
                        fontFamily: 'sukar-bold',
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            BorderSide(color: Color(0xff4EA1B5), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            BorderSide(color: Color(0xff4EA1B5), width: 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide:
                            BorderSide(color: Color(0xff4EA1B5), width: 1),
                      )),
                ),
              ))
          : AppBar(
              elevation: 0,
              backgroundColor: Color(0xffFBFCFC),
              leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff4EA1B5),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              title: Text(
                'صحيح مسلم',
                style: TextStyle(
                  color: Color(0xff4EA1B5),
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
                      color: Color(0xff4EA1B5),
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
          child: Saves(),
        ),
      ),
    );
  }

  Widget Saves() {
    return Column(
      children: <Widget>[
        //card
        card(
            'المقدمة',
            'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على الرسول',
            'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على رسول الله صلى الله عليه وسلم واعلم \nوفقك الله تعالى أن الواجب على كل أحد عرف التمييز بين صحيح الروايات وسقيمها وثقات الناقلين لها من المتهمين أن لا يروي منها إلا ما عرف صحة مخارجه والستارة في ناقليه وأن يتقي منها ما كان منها عن أهل التهم والمعاندين من أهل البدع [ ص: 9 ] والدليل على أن الذي قلنا من هذا هو اللازم دون ما خالفه قول الله جل ذكره يا أيها الذين آمنوا إن جاءكم فاسق بنبإ فتبينوا أن تصيبوا قوما بجهالة فتصبحوا على ما فعلتم نادمين وقال جل ثناؤه ممن ترضون من الشهداء وقال عز وجل وأشهدوا ذوي عدل منكم فدل بما ذكرنا من هذه الآي أن خبر الفاسق ساقط غير مقبول وأن شهادة غير العدل مردودة والخبر وإن فارق معناه معنى الشهادة في بعض الوجوه فقد يجتمعان في أعظم معانيهما إذ كان خبر الفاسق غير مقبول عند أهل العلم كما أن شهادته مردودة عند جميعهم ودلت السنة على نفي رواية المنكر من الأخبار كنحو دلالة القرآن على نفي خبر الفاسق',
            'صحيح مسلم',
            1),
        card(
            'المقدمة',
            'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على الرسول',
            'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على رسول الله صلى الله عليه وسلم واعلم \nوفقك الله تعالى أن الواجب على كل أحد عرف التمييز بين صحيح الروايات وسقيمها وثقات الناقلين لها من المتهمين أن لا يروي منها إلا ما عرف صحة مخارجه والستارة في ناقليه وأن يتقي منها ما كان منها عن أهل التهم والمعاندين من أهل البدع [ ص: 9 ] والدليل على أن الذي قلنا من هذا هو اللازم دون ما خالفه قول الله جل ذكره يا أيها الذين آمنوا إن جاءكم فاسق بنبإ فتبينوا أن تصيبوا قوما بجهالة فتصبحوا على ما فعلتم نادمين وقال جل ثناؤه ممن ترضون من الشهداء وقال عز وجل وأشهدوا ذوي عدل منكم فدل بما ذكرنا من هذه الآي أن خبر الفاسق ساقط غير مقبول وأن شهادة غير العدل مردودة والخبر وإن فارق معناه معنى الشهادة في بعض الوجوه فقد يجتمعان في أعظم معانيهما إذ كان خبر الفاسق غير مقبول عند أهل العلم كما أن شهادته مردودة عند جميعهم ودلت السنة على نفي رواية المنكر من الأخبار كنحو دلالة القرآن على نفي خبر الفاسق',
            'صحيح مسلم',
            2),
        card(
            'المقدمة',
            'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على الرسول',
            'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على رسول الله صلى الله عليه وسلم واعلم \nوفقك الله تعالى أن الواجب على كل أحد عرف التمييز بين صحيح الروايات وسقيمها وثقات الناقلين لها من المتهمين أن لا يروي منها إلا ما عرف صحة مخارجه والستارة في ناقليه وأن يتقي منها ما كان منها عن أهل التهم والمعاندين من أهل البدع [ ص: 9 ] والدليل على أن الذي قلنا من هذا هو اللازم دون ما خالفه قول الله جل ذكره يا أيها الذين آمنوا إن جاءكم فاسق بنبإ فتبينوا أن تصيبوا قوما بجهالة فتصبحوا على ما فعلتم نادمين وقال جل ثناؤه ممن ترضون من الشهداء وقال عز وجل وأشهدوا ذوي عدل منكم فدل بما ذكرنا من هذه الآي أن خبر الفاسق ساقط غير مقبول وأن شهادة غير العدل مردودة والخبر وإن فارق معناه معنى الشهادة في بعض الوجوه فقد يجتمعان في أعظم معانيهما إذ كان خبر الفاسق غير مقبول عند أهل العلم كما أن شهادته مردودة عند جميعهم ودلت السنة على نفي رواية المنكر من الأخبار كنحو دلالة القرآن على نفي خبر الفاسق',
            'صحيح مسلم',
            3),
        card(
            'المقدمة',
            'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على الرسول',
            'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على رسول الله صلى الله عليه وسلم واعلم \nوفقك الله تعالى أن الواجب على كل أحد عرف التمييز بين صحيح الروايات وسقيمها وثقات الناقلين لها من المتهمين أن لا يروي منها إلا ما عرف صحة مخارجه والستارة في ناقليه وأن يتقي منها ما كان منها عن أهل التهم والمعاندين من أهل البدع [ ص: 9 ] والدليل على أن الذي قلنا من هذا هو اللازم دون ما خالفه قول الله جل ذكره يا أيها الذين آمنوا إن جاءكم فاسق بنبإ فتبينوا أن تصيبوا قوما بجهالة فتصبحوا على ما فعلتم نادمين وقال جل ثناؤه ممن ترضون من الشهداء وقال عز وجل وأشهدوا ذوي عدل منكم فدل بما ذكرنا من هذه الآي أن خبر الفاسق ساقط غير مقبول وأن شهادة غير العدل مردودة والخبر وإن فارق معناه معنى الشهادة في بعض الوجوه فقد يجتمعان في أعظم معانيهما إذ كان خبر الفاسق غير مقبول عند أهل العلم كما أن شهادته مردودة عند جميعهم ودلت السنة على نفي رواية المنكر من الأخبار كنحو دلالة القرآن على نفي خبر الفاسق',
            'صحيح مسلم',
            4),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }

  Widget card(String title, String bodyTitle, String content, String bookName,
      int number) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return hadisDetails();
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
                    color: Color(0xff4EA1B5),
                    image: DecorationImage(
                      image: AssetImage('image/cardTop.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        addpopupMenu(context),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'dt',
                              ),
                            ),
                            SizedBox(width: 6),
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
                        bodyTitle,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff191818),
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
                  padding: EdgeInsets.fromLTRB(25, 0, 10, 8),
                  width: double.infinity,
                  child: Text(
                    content,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 13,
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
                        color: Color(0xffF3F3F3),
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
                                    color: Color(0xffB06544),
                                    fontFamily: 'sukar-bold',
                                  ),
                                ),
                                SizedBox(width: 14),
                                Image.asset('image/paper.png'),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              number.toString(),
                              style: TextStyle(
                                color: Color(0xff707070),
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
                        color: Color(0xffF3F3F3),
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
                                    color: Color(0xffB06544),
                                    fontFamily: 'sukar-bold',
                                  ),
                                ),
                                SizedBox(width: 14),
                                Image.asset('image/sound.png'),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              bookName,
                              style: TextStyle(
                                color: Color(0xff707070),
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

  Widget addpopupMenu(BuildContext context) {
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
                          color: Color(0xff191818),
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
                        color: Color(0xff191818),
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
            value: PopUpMenu.add,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "إضافة للمحفوظات",
                  style: TextStyle(
                    color: Color(0xff191818),
                    fontSize: 13,
                    fontFamily: 'sukar-bold',
                  ),
                ),
                SizedBox(width: 4),
                SizedBox(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    'image/add.png',
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
          case PopUpMenu.add:
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Savings();
            }));
            break;
        }
      },
      icon: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
    );
  }

  void share(BuildContext context, String s) {
    final RenderBox box = context.findRenderObject();
    final String text = 'share';
    Share.share(text,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
