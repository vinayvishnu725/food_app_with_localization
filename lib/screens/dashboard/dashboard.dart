import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/core/const.dart';
import 'package:food_app/screens/homepage/homepage.dart';
import 'package:food_app/utils/config.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 2;
  static TextStyle optionStyle = TextStyle(
      fontSize: SizeConfig.textMultiplier! * 1.2, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Center(
        child: Text(
      translator.translate("Plan"),
    )),
    Center(
        child: Text(
      translator.translate("Cook Now"),
    )),
    const MyHomePage(
      title: "homepage",
    ),
    Center(
        child: Text(
      translator.translate("Learn"),
    )),
    Center(
        child: Text(
      translator.translate("Shop"),
    )),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/Icons/Plan.png"),
              ),
              label: translator.translate("Plan"),
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/Icons/Cook Now.png"),
              ),
              label: translator.translate("Cook Now"),
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/Icons/Home.png"),
              ),
              label: translator.translate("Home"),
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/Icons/Learn.png"),
              ),
              label: translator.translate("Learn"),
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/Icons/Store.png"),
              ),
              label: translator.translate("Shop"),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.primaryColor1,
          unselectedItemColor: Colors.black,
          // fixedColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
