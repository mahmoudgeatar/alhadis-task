import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share/share.dart';

import '../style.dart';

class savingDetails extends StatefulWidget {
  @override
  _savingDetailsState createState() => _savingDetailsState();
}

class _savingDetailsState extends State<savingDetails> {
  int pageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (pageNumber == 1)
          ? SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    //custom appBar
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: teal,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                              InkWell(
                                onTap: () {
                                  share(context, 'share');
                                },
                                child: SizedBox(
                                  height: 24,
                                  width: 24,
                                  child: Image.asset(
                                    'image/tealShare.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.content_copy,
                                    color: teal,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    Clipboard.setData(
                                        new ClipboardData(text: 'title'));
                                    FlutterToast.showToast(
                                        msg: "تم النسخ",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.black,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  })
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'المقدمة',
                                style: TextStyle(
                                  color: teal,
                                  fontSize: 31,
                                  fontFamily: 'dt',
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              SizedBox(
                                width: 37,
                                height: 37,
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
                    //title
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
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
                    //Green Line
                    Container(
                      height: 5,
                      width: double.infinity,
                      color: teal,
                    ),
                    //Content body
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('image/homebg.png'),
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(
                              Colors.white.withOpacity(0.4), BlendMode.dstATop),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              //main content
                              Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: Text(
                                  'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على رسول الله صلى الله عليه وسلم واعلم وفقك \nالله تعالى أن الواجب على كل أحد عرف التمييز بين صحيح \nالروايات وسقيمها وثقات الناقلين لها من المتهمين أن لا\n يروي منها إلا ما عرف صحة مخارجه والستارة في ناقليه \nوأن يتقي منها ما كان منها عن أهل التهم والمعاندين \nمن أهل البدع [ ص: 9 ] والدليل على أن الذي قلنا من هذا \nهو اللازم دون ما خالفه قول الله جل ذكره يا أيها الذين \nآمنوا إن جاءكم فاسق بنبإ فتبينوا أن تصيبوا قوما بجهالة\n فتصبحوا على ما فعلتم نادمين وقال جل ثناؤه ممن \nترضون من الشهداء وقال عز وجل وأشهدوا ذوي عدل \nمنكم فدل بما ذكرنا من هذه الآي أن خبر الفاسق ساقط \nغير مقبول وأن شهادة غير العدل مردودة والخبر وإن \nفارق معناه معنى الشهادة في بعض الوجوه فقد \nيجتمعان في أعظم معانيهما إذ كان خبر الفاسق غير \nمقبول عند أهل العلم كما أن شهادته مردودة \nعند جميعهم ودلت السنة على نفي رواية \nالمنكر من الأخبار كنحو دلالة القرآن على نفي خبر الفاسق',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'cairo',
                                    color: Color(0xff37352F),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(height: 14),
                              //alrawy ROW
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'الراوي',
                                        style: TextStyle(
                                          color: darker,
                                          fontSize: 12,
                                          fontFamily: 'sukar-bold',
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      Image.asset('image/soundBlack.png'),
                                    ],
                                  ),
                                  Text(
                                    'رواه ابن ماجه',
                                    style: TextStyle(
                                      color: brownc,
                                      fontSize: 14,
                                      fontFamily: 'sukar-bold',
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 13),
                              //almohades ROW
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'المحدث',
                                        style: TextStyle(
                                          color: darker,
                                          fontSize: 12,
                                          fontFamily: 'sukar-bold',
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      Icon(Icons.person),
                                    ],
                                  ),
                                  Text(
                                    'عبد الله بن مسعود',
                                    style: TextStyle(
                                      color: brownc,
                                      fontSize: 14,
                                      fontFamily: 'sukar-bold',
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: SizedBox(
                              width: 5,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: gray,
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        .85,
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height * .4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: teal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Green Line
                    Container(
                      height: 5,
                      width: double.infinity,
                      color: teal,
                    ),
                    //switch pages
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 14,
                              color: teal,
                            ),
                            onPressed: () {
                              setState(() {
                                pageNumber = 1;
                              });
                            }),
                        SizedBox(width: 16),
                        Text(
                          pageNumber.toString(),
                          style: TextStyle(
                            color: darker,
                            fontSize: 14,
                            fontFamily: 'sukar-black',
                          ),
                        ),
                        SizedBox(width: 16),
                        IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: teal,
                            ),
                            onPressed: () {
                              setState(() {
                                pageNumber = 2;
                              });
                            })
                      ],
                    ),
                    //notes
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'ملاحظاتك',
                        style: TextStyle(
                          color: brownc,
                          fontSize: 16,
                          fontFamily: 'sukar-bold',
                        ),
                      ),
                    ),
                    // notes content
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 12, 12, 12),
                      child: Text(
                        'الملحوظه',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: darkGray,
                            fontSize: 14,
                            fontFamily: 'cairo-reg'),
                      ),
                    ),
                    // remover button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          color: teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          onPressed: () {},
                          child: Text(
                            "إزالة من المحفوظات",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'sukar-bold'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            )
          : SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    //custom appBar
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: teal,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: InkWell(
                                  onTap: () {
                                    share(context, 'share');
                                  },
                                  child: Image.asset(
                                    'image/tealShare.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.content_copy,
                                    color: teal,
                                    size: 24,
                                  ),
                                  onPressed: () {
                                    Clipboard.setData(
                                        new ClipboardData(text: 'title'));
                                    FlutterToast.showToast(
                                        msg: "تم النسخ",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.black,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  })
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'المقدمة',
                                style: TextStyle(
                                  color: teal,
                                  fontSize: 31,
                                  fontFamily: 'dt',
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              SizedBox(
                                width: 37,
                                height: 37,
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
                    //title
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
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
                    //Green Line
                    Container(
                      height: 5,
                      width: double.infinity,
                      color: teal,
                    ),
                    //Content body
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('image/homebg.png'),
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(
                              Colors.white.withOpacity(0.4), BlendMode.dstATop),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              //main content
                              Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: Text(
                                  'باب وجوب الرواية عن الثقات وترك الكذابين والتحذير من \nالكذب على رسول الله صلى الله عليه وسلم واعلم وفقك \nالله تعالى أن الواجب على كل أحد عرف التمييز بين صحيح \nالروايات وسقيمها وثقات الناقلين لها من المتهمين أن لا\n يروي منها إلا ما عرف صحة مخارجه والستارة في ناقليه \nوأن يتقي منها ما كان منها عن أهل التهم والمعاندين \nمن أهل البدع [ ص: 9 ] والدليل على أن الذي قلنا من هذا \nهو اللازم دون ما خالفه قول الله جل ذكره يا أيها الذين \nآمنوا إن جاءكم فاسق بنبإ فتبينوا أن تصيبوا قوما بجهالة\n فتصبحوا على ما فعلتم نادمين وقال جل ثناؤه ممن \nترضون من الشهداء وقال عز وجل وأشهدوا ذوي عدل \nمنكم فدل بما ذكرنا من هذه الآي أن خبر الفاسق ساقط \nغير مقبول وأن شهادة غير العدل مردودة والخبر وإن \nفارق معناه معنى الشهادة في بعض الوجوه فقد \nيجتمعان في أعظم معانيهما إذ كان خبر الفاسق غير \nمقبول عند أهل العلم كما أن شهادته مردودة \nعند جميعهم ودلت السنة على نفي رواية \nالمنكر من الأخبار كنحو دلالة القرآن على نفي خبر الفاسق',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'cairo',
                                    color: Color(0xff37352F),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              SizedBox(height: 14),
                              //alrawy ROW
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'الراوي',
                                        style: TextStyle(
                                          color: darker,
                                          fontSize: 12,
                                          fontFamily: 'sukar-bold',
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      Image.asset('image/soundBlack.png'),
                                    ],
                                  ),
                                  Text(
                                    'رواه ابن ماجه',
                                    style: TextStyle(
                                      color: brownc,
                                      fontSize: 14,
                                      fontFamily: 'sukar-bold',
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 13),
                              //almohades ROW
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'المحدث',
                                        style: TextStyle(
                                          color: darker,
                                          fontSize: 12,
                                          fontFamily: 'sukar-bold',
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      Icon(Icons.person),
                                    ],
                                  ),
                                  Text(
                                    'عبد الله بن مسعود',
                                    style: TextStyle(
                                      color: brownc,
                                      fontSize: 14,
                                      fontFamily: 'sukar-bold',
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: SizedBox(
                              width: 5,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: gray,
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        .85,
                                  ),
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height * .4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: teal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Green Line
                    Container(
                      height: 5,
                      width: double.infinity,
                      color: teal,
                    ),
                    //switch pages
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 14,
                              color: teal,
                            ),
                            onPressed: () {
                              setState(() {
                                pageNumber = 1;
                              });
                            }),
                        SizedBox(width: 16),
                        Text(
                          pageNumber.toString(),
                          style: TextStyle(
                            color: darker,
                            fontSize: 14,
                            fontFamily: 'sukar-black',
                          ),
                        ),
                        SizedBox(width: 16),
                        IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: teal,
                            ),
                            onPressed: () {
                              setState(() {
                                pageNumber = 2;
                              });
                            })
                      ],
                    ),
                    //notes
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'ملاحظاتك',
                        style: TextStyle(
                          color: brownc,
                          fontSize: 16,
                          fontFamily: 'sukar-bold',
                        ),
                      ),
                    ),
                    // notes content
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 12, 12, 12),
                      child: Text(
                        'لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريد أكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا كوممودو كونسيكيوات . ديواس أيوتي أريري دولار إن ريبريهينديرأيت فوليوبتاتي فيلايت أيسسي كايلليوم دولار أيو فيجايت نيولا باراياتيور. أيكسسيبتيور ساينت أوككايكات كيوبايداتات نون بروايدينت ,سيونت ان كيولبا كيو أوفيسيا ديسيريونتموليت انيم أيدي ايست لابوريوم." "سيت يتبيرسبايكياتيس يوندي أومنيس أستي ناتيس أيررور سيت فوليبتاتيم أكيسأنتييوم دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي فوليوبتاس سايت أسبيرناتشر أيوت أودايت أيوت فيوجايت, سيد كيواي كونسيكيونتشر ماجناي دولارس أيوس كيواي راتاشن فوليوبتاتيم سيكيواي نيسكايونت. نيكيو بوررو كيوايسكيوم ايست,كيواي دولوريم ايبسيوم كيوا دولار سايت أميت, كونسيكتيتيور,أديبايسكاي فيلايت, سيد كيواي نون نيومكيوام ايايوس موداي تيمبورا انكايديونت يوت لابوري أيت دولار ماجنام ألايكيوام كيوايرات فوليوبتاتيم. يوت اينايم أد مينيما فينيام, كيواس نوستريوم أكسيركايتاشيم يلامكوربوريس سيوسكايبيت لابورايوسام, نايساي يوت ألايكيوايد أكس أيا كوموداي كونسيكيواتشر؟ كيوايس أيوتيم فيل أيوم أيوري ريبريهينديرايت كيواي ان إيا فوليوبتاتي',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: darkGray,
                            fontSize: 14,
                            fontFamily: 'cairo-reg'),
                      ),
                    ),
                    // remover button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          color: teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          onPressed: () {},
                          child: Text(
                            "إزالة من المحفوظات",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'sukar-bold'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 300, bottom: 50),
        child: SizedBox(
          width: 42,
          height: 42,
          child: FloatingActionButton(
            backgroundColor: teal,
            child: Image.asset(
              'image/edit.png',
              fit: BoxFit.cover,
            ),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void share(BuildContext context, String s) {
    final RenderBox box = context.findRenderObject();
    final String text = 'share';
    Share.share(text,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
