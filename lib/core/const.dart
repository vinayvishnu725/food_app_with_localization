import 'package:flutter/material.dart';

class AppColors {
  static final Color blueColor =
      Color(0XFFFF3C00); // same as primaryColor1 and themeColor1
  static final Color greenColor = Color(0XFF3dc39d);
  static final Color yellowColor = Color(0XFFdac007);
  static final Color redColor = Color(0XFFbe0b2b);
  static final Color orangeColor = Color(0XFFbe740b);
  static final Color grey = Color(0XFF37474f);
  static final Color darkpurple = Color(0X0A0C33);
  static final Color primaryColor1 = Color.fromARGB(255, 137, 182, 32);
  static final Color primaryColor2 = Color(0XFFff8c25);
  static final Color primaryContrast1 = Color(0XFF0080ff);

  static final Color secondaryColor1Light = Color(0X0F0B1542);
  static final Color secondaryColor1Light2 = Color(0X550B1542);

  static final Color lightPrimary = Color(0xfffcfcff);
  static final Color darkPrimary = Colors.black;
  static final Color lightAccent = Colors.red;
  static final Color darkAccent = Color.fromARGB(255, 180, 88, 86);
  static final Color lightBG = Color(0xfffcfcff);
  static final Color darkBG = Colors.black;
  static final Color ratingBG = Color.fromARGB(255, 156, 141, 75);
}

List<PopularRecipesModel> popularLists = [
  PopularRecipesModel(
      name: "Tab nf talangka", img: "assets/images/Mask Group 7@2x.png"),
  PopularRecipesModel(
      name: "Pancit Palabok", img: "assets/images/Mask Group 8@2x.png"),
  PopularRecipesModel(name: "Bulalo", img: "assets/images/Mask Group 9@2x.png"),
  PopularRecipesModel(
      name: "tab nf talangka", img: "assets/images/Mask Group 8@2x.png"),
];

List<SuggestedMealPlansModel> suggestedmealList = [
  SuggestedMealPlansModel(
      name: "Bangus Sardines",
      img: "assets/images/Mask Group 173@2x.png",
      week: "Monday"),
  SuggestedMealPlansModel(
      name: "Stir-Fried tofuu",
      img: "assets/images/Rounded Dish@2x.png",
      week: "Tuesday"),
  SuggestedMealPlansModel(
      name: "Bangus Sardines",
      img: "assets/images/Mask Group 173@2x.png",
      week: "Wednesday"),
];

List<SuggestedContentsModel> suggestedContents = [
  SuggestedContentsModel(
      name: "How to make a better kitchen",
      img: "assets/images/Group 1601@2x.png",
      lesson: "Lesson 1"),
  SuggestedContentsModel(
      name: "Forest feast",
      img: "assets/images/Mask Group 108@2x.png",
      lesson: "Lesson 2"),
  SuggestedContentsModel(
      name: "How to make a better kitchen",
      img: "assets/images/Group 1601@2x.png",
      lesson: "Lesson 3"),
  SuggestedContentsModel(
      name: "Forest feast",
      img: "assets/images/Mask Group 108@2x.png",
      lesson: "Lesson 4"),
];

class PopularRecipesModel {
  String? img;
  String? name;
  PopularRecipesModel({this.img, this.name});
}

class SuggestedMealPlansModel {
  String? img;
  String? name;
  String? week;
  SuggestedMealPlansModel({this.img, this.name, this.week});
}

class SuggestedContentsModel {
  String? img;
  String? name;
  String? lesson;
  SuggestedContentsModel({this.img, this.name, this.lesson});
}
