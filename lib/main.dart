import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pet_diary/common/theme.dart';
import 'package:pet_diary/models/pet_model.dart';
import 'package:pet_diary/models/setting_model.dart';
import 'package:pet_diary/page/calendar_page.dart';
import 'package:pet_diary/page/home_page.dart';
import 'package:pet_diary/page/hospital_page.dart';
import 'package:pet_diary/page/setting_page.dart';
import 'package:pet_diary/page/splash_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MainClass());

/* Root Of Application */
class MainClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyPetModel()),
        ChangeNotifierProvider(create: (_) => SettingModel()),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          const Locale.fromSubtags(
              languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),
          const Locale('en'),
          const Locale('ja'),
          const Locale('zh'),
        ],
        locale: const Locale.fromSubtags(
            languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW'),
        title: 'Pet Diary', // 開啟所有app管理時會看到
        theme: appTheme,
        debugShowCheckedModeBanner: false, // 去除Debug標誌
        home: SplashPage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final pages = [HomePage(), HospitalPage(), CalendarPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: ColorSet.primaryColors,
        actions: <Widget>[
          IconButton(
              tooltip: '設定',
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SettingPage()));
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        child: SettingPage()));
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            backgroundColor: ColorSet.primaryColors,
            icon: const Icon(Icons.home_outlined),
            label: '主頁',
          ),
          const BottomNavigationBarItem(
            backgroundColor: ColorSet.primaryColors,
            icon: const Icon(Icons.local_hospital_outlined),
            label: '就醫紀錄',
          ),
          const BottomNavigationBarItem(
            backgroundColor: ColorSet.primaryColors,
            icon: const Icon(Icons.calendar_today_outlined),
            label: '行事曆',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorSet.secondaryColors,
        backgroundColor: ColorSet.primaryColors,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}
