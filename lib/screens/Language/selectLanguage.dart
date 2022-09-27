import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/screens/dashboard/dashboard.dart';
import 'package:food_app/screens/homepage/homepage.dart';
import 'package:food_app/utils/config.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class SelectlanguagePage extends StatefulWidget {
  const SelectlanguagePage({Key? key}) : super(key: key);

  @override
  State<SelectlanguagePage> createState() => _SelectlanguagePageState();
}

class _SelectlanguagePageState extends State<SelectlanguagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Choose langauge")),
      body: Container(
        child: Row(
          children: [englishLangBtn(), kannadaLangBtn()],
        ),
      ),
    ));
  }

  Widget englishLangBtn() {
    return Stack(
      children: [
        Positioned(
          // left: 0,
          // top: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setLanguage('en');
              },
              child: Container(
                height: SizeConfig.heightMultiplier! * 13,
                width: SizeConfig.widthMultiplier! * 44,
                child: Card(
                  elevation: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   width: 20,
                      // ),
                      Text(
                        "Aa",
                        style: TextStyle(
                            fontSize: SizeConfig.textMultiplier! * 4.50,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier! * 2.4,
                      ),
                      Text("English",
                          style: TextStyle(
                            fontSize: SizeConfig.textMultiplier! * 2.3,
                            //letterSpacing: 0.2,
                            color: Colors.blue,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget kannadaLangBtn() {
    return Stack(
      children: [
        Positioned(
          // left: 0,
          // top: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setLanguage('kn');
              },
              child: Container(
                height: SizeConfig.heightMultiplier! * 13,
                width: SizeConfig.widthMultiplier! * 44,
                child: Card(
                  elevation: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ಅಆ",
                        style: TextStyle(
                            fontSize: SizeConfig.textMultiplier! * 4.50,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier! * 2.4,
                      ),
                      Text("Kannada",
                          style: TextStyle(
                            fontSize: SizeConfig.textMultiplier! * 2.3,
                            //letterSpacing: 0.2,
                            color: Colors.blue,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  setLanguage(langName) {
    translator
        .setNewLanguage(
          context,
          newLanguage: langName,
          remember: true,
          restart: false,
        )
        .then((value) => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Dashboard())));
  }
}
