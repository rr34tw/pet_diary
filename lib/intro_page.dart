import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class IntroPage extends StatefulWidget {
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  var myPet;
  bool catHasBeenPressed = false;
  bool dogHasBeenPressed = false;
  bool rabbitHasBeenPressed = false;
  bool turtleHasBeenPressed = false;
  bool othersHasBeenPressed = false;
  bool petSelected = false;

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
        builder: (context) => new MyHomePage(title: '寵物日記')));
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: HexColor("#718792"),

      /* All pages in IntroScreen */
      rawPages: [
        /* Page 1: Welcome Page */
        Card(
          color: HexColor("#455A64"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '歡迎使用寵物日記\n\n讓我們先來做些初始設定吧!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: HexColor('#D7CCC8'),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(35.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        /* Page 2: Select Pet Type */
        Card(
          color: HexColor("#455A64"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '請選擇您的寵物類型',
                style: TextStyle(
                  color: HexColor('#D7CCC8'),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: 60),
              /* Select Type As Dog */
              ClipRect(
                child: Tooltip(
                  message: '選擇狗狗',
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: dogHasBeenPressed
                            ? HexColor('#725B53')
                            : HexColor('#C4C4C4'),
                        padding: const EdgeInsets.all(3.0),
                        primary: dogHasBeenPressed
                            ? HexColor('#FFFFFF')
                            : HexColor('#000000'),
                        textStyle: const TextStyle(fontSize: 20),
                        minimumSize: Size(200, 35)),
                    onPressed: () => {
                      setState(() {
                        if (petSelected == true) {
                          if (dogHasBeenPressed == true) {
                            print('unselected dog');
                            dogHasBeenPressed = false;
                            petSelected = false;
                          } else {
                            print('other type has been select');
                          }
                        } else {
                          if (dogHasBeenPressed == false) {
                            print('select dog');
                            dogHasBeenPressed = true;
                            petSelected = true;
                          }
                        }
                      })
                    },
                    child: Text('狗狗'),
                  ),
                ),
              ),
              SizedBox(height: 30),
              /* Select Type As Cat */
              ClipRect(
                child: Tooltip(
                  message: '選擇貓咪',
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: catHasBeenPressed
                            ? HexColor('#725B53')
                            : HexColor('#C4C4C4'),
                        padding: const EdgeInsets.all(3.0),
                        primary: catHasBeenPressed
                            ? HexColor('#FFFFFF')
                            : HexColor('#000000'),
                        textStyle: const TextStyle(fontSize: 20),
                        minimumSize: Size(200, 35)),
                    onPressed: () => {
                      setState(() {
                        if (petSelected == true) {
                          if (catHasBeenPressed == true) {
                            print('unselected cat');
                            catHasBeenPressed = false;
                            petSelected = false;
                          } else {
                            print('other type has been select');
                          }
                        } else {
                          if (catHasBeenPressed == false) {
                            print('select cat');
                            catHasBeenPressed = true;
                            petSelected = true;
                          }
                        }
                      })
                    },
                    child: Text('貓咪'),
                  ),
                ),
              ),
              SizedBox(height: 30),
              /* Select Type As Rabbit */
              ClipRect(
                child: Tooltip(
                  message: '選擇兔子',
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: rabbitHasBeenPressed
                            ? HexColor('#725B53')
                            : HexColor('#C4C4C4'),
                        padding: const EdgeInsets.all(3.0),
                        primary: rabbitHasBeenPressed
                            ? HexColor('#FFFFFF')
                            : HexColor('#000000'),
                        textStyle: const TextStyle(fontSize: 20),
                        minimumSize: Size(200, 35)),
                    onPressed: () => {
                      setState(() {
                        if (petSelected == true) {
                          if (rabbitHasBeenPressed == true) {
                            print('unselected rabbit');
                            rabbitHasBeenPressed = false;
                            petSelected = false;
                          } else {
                            print('other type has been select');
                          }
                        } else {
                          if (rabbitHasBeenPressed == false) {
                            print('select rabbit');
                            rabbitHasBeenPressed = true;
                            petSelected = true;
                          }
                        }
                      })
                    },
                    child: Text('兔子'),
                  ),
                ),
              ),
              SizedBox(height: 30),
              /* Select Type As Turtle */
              ClipRect(
                child: Tooltip(
                  message: '選擇烏龜',
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: turtleHasBeenPressed
                            ? HexColor('#725B53')
                            : HexColor('#C4C4C4'),
                        padding: const EdgeInsets.all(3.0),
                        primary: turtleHasBeenPressed
                            ? HexColor('#FFFFFF')
                            : HexColor('#000000'),
                        textStyle: const TextStyle(fontSize: 20),
                        minimumSize: Size(200, 35)),
                    onPressed: () => {
                      setState(() {
                        if (petSelected == true) {
                          if (turtleHasBeenPressed == true) {
                            print('unselected turtle');
                            turtleHasBeenPressed = false;
                            petSelected = false;
                          } else {
                            print('other type has been select');
                          }
                        } else {
                          if (turtleHasBeenPressed == false) {
                            print('select turtle');
                            turtleHasBeenPressed = true;
                            petSelected = true;
                          }
                        }
                      })
                    },
                    child: Text('烏龜'),
                  ),
                ),
              ),
              SizedBox(height: 30),
              /* Select Type As Others */
              ClipRect(
                child: Tooltip(
                  message: '選擇其他',
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: othersHasBeenPressed
                            ? HexColor('#725B53')
                            : HexColor('#C4C4C4'),
                        padding: const EdgeInsets.all(3.0),
                        primary: othersHasBeenPressed
                            ? HexColor('#FFFFFF')
                            : HexColor('#000000'),
                        textStyle: const TextStyle(fontSize: 20),
                        minimumSize: Size(200, 35)),
                    onPressed: () => {
                      setState(() {
                        if (petSelected == true) {
                          if (othersHasBeenPressed == true) {
                            print('unselected others');
                            othersHasBeenPressed = false;
                            petSelected = false;
                          } else {
                            print('other type has been select');
                          }
                        } else {
                          if (othersHasBeenPressed == false) {
                            print('select others');
                            othersHasBeenPressed = true;
                            petSelected = true;
                          }
                        }
                      })
                    },
                    child: Text('其他'),
                  ),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(35.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        /* Page 3: Select Pet Breeds */
        Card(
          color: HexColor("#455A64"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                '請選擇您的寵物品種(花色)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: HexColor('#D7CCC8'),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 1.5,
                ),
              ),
              //SizedBox(height: 30),
              dogHasBeenPressed
                  ? Container(
                      child: Column(
                      children: <Widget>[
                        ClipRect(
                          child: Tooltip(
                            message: '選擇柯基',
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: HexColor('#C4C4C4'),
                                  padding: const EdgeInsets.all(3.0),
                                  primary: HexColor('#000000'),
                                  textStyle: const TextStyle(fontSize: 20),
                                  minimumSize: Size(200, 35)),
                              onPressed: () => {},
                              child: Text('柯基'),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRect(
                          child: Tooltip(
                            message: '選擇博美',
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: HexColor('#C4C4C4'),
                                  padding: const EdgeInsets.all(3.0),
                                  primary: HexColor('#000000'),
                                  textStyle: const TextStyle(fontSize: 20),
                                  minimumSize: Size(200, 35)),
                              onPressed: () => {},
                              child: Text('博美'),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRect(
                          child: Tooltip(
                            message: '選擇柴犬',
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: HexColor('#C4C4C4'),
                                  padding: const EdgeInsets.all(3.0),
                                  primary: HexColor('#000000'),
                                  textStyle: const TextStyle(fontSize: 20),
                                  minimumSize: Size(200, 35)),
                              onPressed: () => {},
                              child: Text('柴犬'),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRect(
                          child: Tooltip(
                            message: '選擇法鬥',
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: HexColor('#C4C4C4'),
                                  padding: const EdgeInsets.all(3.0),
                                  primary: HexColor('#000000'),
                                  textStyle: const TextStyle(fontSize: 20),
                                  minimumSize: Size(200, 35)),
                              onPressed: () => {},
                              child: Text('法鬥'),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRect(
                          child: Tooltip(
                            message: '選擇吉娃娃',
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: HexColor('#C4C4C4'),
                                  padding: const EdgeInsets.all(3.0),
                                  primary: HexColor('#000000'),
                                  textStyle: const TextStyle(fontSize: 20),
                                  minimumSize: Size(200, 35)),
                              onPressed: () => {},
                              child: Text('吉娃娃'),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRect(
                          child: Tooltip(
                            message: '選擇馬爾濟斯',
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: HexColor('#C4C4C4'),
                                  padding: const EdgeInsets.all(3.0),
                                  primary: HexColor('#000000'),
                                  textStyle: const TextStyle(fontSize: 20),
                                  minimumSize: Size(200, 35)),
                              onPressed: () => {},
                              child: Text('馬爾濟斯'),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRect(
                          child: Tooltip(
                            message: '選擇拉不拉多',
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: HexColor('#C4C4C4'),
                                  padding: const EdgeInsets.all(3.0),
                                  primary: HexColor('#000000'),
                                  textStyle: const TextStyle(fontSize: 20),
                                  minimumSize: Size(200, 35)),
                              onPressed: () => {},
                              child: Text('拉不拉多'),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRect(
                          child: Tooltip(
                            message: '選擇其他',
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: HexColor('#C4C4C4'),
                                  padding: const EdgeInsets.all(3.0),
                                  primary: HexColor('#000000'),
                                  textStyle: const TextStyle(fontSize: 20),
                                  minimumSize: Size(200, 35)),
                              onPressed: () => {},
                              child: Text('其他'),
                            ),
                          ),
                        ),
                      ],
                    ))
                  : Container(),
              catHasBeenPressed
                  ? Container(
                      child: Column(
                      children: <Widget>[
                        ClipRect(
                          child: Tooltip(
                            message: '選擇虎斑',
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: HexColor('#C4C4C4'),
                                  padding: const EdgeInsets.all(3.0),
                                  primary: HexColor('#000000'),
                                  textStyle: const TextStyle(fontSize: 20),
                                  minimumSize: Size(200, 35)),
                              onPressed: () => {},
                              child: Text('虎斑'),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ClipRect(
                          child: Tooltip(
                            message: '選擇賓士',
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: HexColor('#C4C4C4'),
                                  padding: const EdgeInsets.all(3.0),
                                  primary: HexColor('#000000'),
                                  textStyle: const TextStyle(fontSize: 20),
                                  minimumSize: Size(200, 35)),
                              onPressed: () => {},
                              child: Text('賓士'),
                            ),
                          ),
                        ),
                      ],
                    ))
                  : Container(),
            ],
          ),
          margin: EdgeInsets.all(35.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
        /* Page 4: Set Pet Information */
        Card(
          color: HexColor("#455A64"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '來輸入寵物的基本資料吧!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: HexColor('#D7CCC8'),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/paw.jpg',
                      fit: BoxFit.fill, width: 75, height: 75),
                  SizedBox(width: 20),
                  Icon(Icons.add_a_photo),
                ],
              ),
              SizedBox(height: 30),
              Container(
                color: HexColor('#C4C4C4'),
                width: 250,
                height: 40,
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.pets),
                    hintText: '請輸入寵物的名字',
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                color: HexColor('#C4C4C4'),
                width: 250,
                height: 40,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.calendar_today, color: HexColor('#5d6670')),
                    Tooltip(
                      message: '選擇日期',
                      child: TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(2.0),
                            primary: HexColor('#5d6670'),
                            textStyle: const TextStyle(fontSize: 17),
                            minimumSize: Size(225, 35)),
                        onPressed: () async {
                          var result = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1971),
                              lastDate: DateTime(2030));
                          print('$result');
                        },
                        child: Text('請點擊選擇寵物生日'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                color: HexColor('#C4C4C4'),
                width: 250,
                height: 40,
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    hintText: '請選擇性別',
                  ),
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(35.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ],
      isTopSafeArea: true,
      isBottomSafeArea: true,
      color: HexColor('#D7CCC8'),

      /* Skip Button */
      skip: const Text('跳過'),
      showSkipButton: true,
      skipFlex: 0,

      /* Next Button */
      next: const Text('下一頁'),
      showNextButton: true,
      nextFlex: 0,

      /* Done Button */
      done: const Text('完成'),
      onDone: () => _onIntroEnd(context),

      /* controls/dots */
      controlsMargin: EdgeInsets.all(40.0),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: HexColor("#A69B97"),
        activeColor: HexColor("#725b53"),
      ),
    );
  }
}
