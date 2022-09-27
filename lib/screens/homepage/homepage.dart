import 'package:flutter/material.dart';
import 'package:food_app/ModelProvider.dart/modelProvider.dart';
import 'package:food_app/Models/Product_model.dart';
import 'package:food_app/core/const.dart';
import 'package:food_app/screens/homepage/homepage.dart';
import 'package:food_app/screens/homepage/widgets/poular_recipes.dart';
import 'package:food_app/screens/homepage/widgets/suggested_contents.dart';
import 'package:food_app/screens/homepage/widgets/suggested_meal_plans.dart';
import 'package:food_app/utils/config.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // newDataProvider();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              appBar(),
              recipeOfThDayBanner(),
              findRecipesBanner(),
              popularTitle(),
              popularList(),
              suggestdMealTitle(),
              suggestedMealList(),
              suggestedContentsTitle(),
              suggestedContentsList()
            ],
          ),
        ),
      ),
    );
  }

  Widget appBar() {
    return Container(
      height: SizeConfig.heightMultiplier! * 6,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                    )),
                SizedBox(
                    height: SizeConfig.heightMultiplier! * 2.5,
                    width: SizeConfig.heightMultiplier! * 2.5,
                    child: Image.asset("assets/Icons/Notification.png")),
              ],
            ),
            Text(
              'Kitchenomics',
              style: TextStyle(
                  color: AppColors.primaryColor1,
                  fontSize: SizeConfig.textMultiplier! * 2,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                SizedBox(
                    height: SizeConfig.heightMultiplier! * 2.0,
                    width: SizeConfig.heightMultiplier! * 2.0,
                    child: Image.asset("assets/Icons/Search.png")),
                SizedBox(
                  width: 6,
                ),
                SizedBox(
                    height: SizeConfig.heightMultiplier! * 2.3,
                    width: SizeConfig.heightMultiplier! * 2.3,
                    child: Image.asset("assets/Icons/User.png"))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget recipeOfThDayBanner() {
    return Center(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: SizeConfig.heightMultiplier! * 23,
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0, 0.4, 0.8, 1],
              ),
            ),
            child: Image.asset(
              'assets/images/Mask Group 175@2x.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              translator.translate("Recipe of the day"),
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: SizeConfig.textMultiplier! * 2.1),
            ),
          )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 7, 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Mixed Vegas Baked",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          fontSize: SizeConfig.textMultiplier! * 2.2),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: SizeConfig.heightMultiplier! * 1.7,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: SizeConfig.heightMultiplier! * 1.7,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: SizeConfig.heightMultiplier! * 1.7,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: SizeConfig.heightMultiplier! * 1.7,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: SizeConfig.heightMultiplier! * 1.7,
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget findRecipesBanner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: SizeConfig.widthMultiplier! * 100,
        height: SizeConfig.heightMultiplier! * 10,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1), BlendMode.dstATop),
              image: const AssetImage(
                'assets/images/Mask Group 175@2x.png',
              ),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: AppColors.primaryColor1),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: SizeConfig.widthMultiplier! * 100,
            height: SizeConfig.heightMultiplier! * 10,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: SizeConfig.heightMultiplier! * 9,
                    height: SizeConfig.heightMultiplier! * 9,
                    child: Image.asset("assets/images/Chef@2x.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: SizeConfig.widthMultiplier! * 55,
                        child: Text(
                            translator.translate(
                                "Find the best recipes based on what"),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: SizeConfig.textMultiplier! * 1.9,
                            )),
                      ),
                      SizedBox(
                        width: SizeConfig.widthMultiplier! * 55,
                        child: Text(translator.translate("you have at home"),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: SizeConfig.textMultiplier! * 1.9,
                            )),
                      ),
                    ],
                  ),
                  Container(
                      height: SizeConfig.heightMultiplier! * 4,
                      width: SizeConfig.heightMultiplier! * 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.primaryColor1,
                        size: SizeConfig.heightMultiplier! * 3,
                      ))
                ]),
          ),
        ),
      ),
    );
  }

  Widget popularTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: .6,
            width: SizeConfig.widthMultiplier! * 95,
            color: Colors.grey[400],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                translator.translate("Popular recipes"),
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.textMultiplier! * 2.1),
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: AppColors.primaryColor1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    translator.translate('All Recipes'),
                    style: TextStyle(
                        color: AppColors.primaryColor1,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget popularList() {
    return SizedBox(
      height: SizeConfig.heightMultiplier! * 14,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: popularLists.length,
          itemBuilder: (context, index) {
            return PopularRecipes(item: popularLists[index]);
          }),
    );
  }

  Widget suggestdMealTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: .6,
            width: SizeConfig.widthMultiplier! * 95,
            color: Colors.grey[400],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                translator.translate("Suggested Meal Plan"),
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.textMultiplier! * 2.1),
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: AppColors.primaryColor1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    translator.translate('Meal Planner'),
                    style: TextStyle(
                        color: AppColors.primaryColor1,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget suggestedMealList() {
    return SizedBox(
      height: SizeConfig.heightMultiplier! * 25,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: suggestedmealList.length,
          itemBuilder: (context, index) {
            return SuggestedMealPlans(item: suggestedmealList[index]);
          }),
    );
  }

  Widget suggestedContentsList() {
    return SizedBox(
      height: SizeConfig.heightMultiplier! * 18,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: suggestedContents.length,
          itemBuilder: (context, index) {
            return SuggestedContents(item: suggestedContents[index]);
          }),
    );
  }

  Widget suggestedContentsTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: .6,
            width: SizeConfig.widthMultiplier! * 95,
            color: Colors.grey[400],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                translator.translate("Suggested Contents"),
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: SizeConfig.textMultiplier! * 2.1),
              ),
              Container(
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: AppColors.primaryColor1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    translator.translate('View All'),
                    style: TextStyle(
                        color: AppColors.primaryColor1,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
