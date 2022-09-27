import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/ModelProvider.dart/modelProvider.dart';
import 'package:food_app/Models/Product_model.dart';
import 'package:food_app/screens/Language/selectLanguage.dart';
import 'package:food_app/screens/homepage/homepage.dart';
import 'package:food_app/utils/config.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//localization
  await translator.init(
    localeType: LocalizationDefaultType.device,
    languagesList: <String>['kn', 'en'],
    assetsDirectory: 'assets/languages/',
    // apiKeyGoogle: '<Key>', // NOT YET TESTED
  );

//setting orinetation
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp]) //only potrait orientation
      .then((_) {
    runApp(
        //providers initialiation
        MultiProvider(providers: [
      ChangeNotifierProvider<ProductModel>(
          create: ((context) => ProductModel()))
    ], child: const MyApp()));
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final _modelProvider = ModelProvider();

  @override
  void initState() {
    // TODO: implement initState
    newDataProvider();
    super.initState();
  }

  Future newDataProvider() async {
    //store data from json file
    _modelProvider.storeProductDataLocally(context).then((storedBool) {
      if (storedBool) {
        print("data stored successfully");
        //get data from locally stored json and stored inside provider...
        _modelProvider.getProductData(context).then((value) {
          // print(value);
          if (value) {
            // can use this data
            print("data fetched successfully");
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        //sizeConfiguration
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          title: 'Food App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SelectlanguagePage(),
        );
      });
    });
  }
}
