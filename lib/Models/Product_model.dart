import 'dart:convert';

import 'package:flutter/material.dart';

class ProductModel with ChangeNotifier {
  List<Items>? items;

  ProductModel({this.items});

  fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  static Map<String, dynamic> toMap(ProductModel model) =>
      {'items': model.items};

  static String serialize(ProductModel model) =>
      json.encode(ProductModel.toMap(model));

  static ProductModel deserialize(String? json) =>
      ProductModel.fromJson(jsonDecode(json!));
}

class Items {
  int? id;
  String? name;
  String? slug;
  String? procedures;
  String? servingNumber;
  String? servingCost;
  String? budgetRange;
  String? preparationTime;
  String? cookingTime;
  String? thumbnailImage;
  String? thumbnailImageTag;
  String? featuredImage;
  String? featuredImageTag;
  String? excerpt;
  String? chefTip;
  String? lusogNote;
  String? created;
  int? bestProductId;
  String? bestProductName;
  String? bestProductSlug;
  String? bestProductImage;
  String? bestProductThumbnailImage;
  dynamic? bestProductParentCategoryId;
  String? bestProductParentCategoryName;
  String? bestProductParentCategorySlug;
  int? isRecipeOfTheDay;
  List<CookingSkills>? cookingSkills;
  List<CookingTools>? cookingTools;
  Ingredients? ingredients;
  List<MealType>? mealType;
  MetaData? metaData;
  String? averageRating;
  int? totalRatingCount;

  Items(
      {this.id,
      this.name,
      this.slug,
      this.procedures,
      this.servingNumber,
      this.servingCost,
      this.budgetRange,
      this.preparationTime,
      this.cookingTime,
      this.thumbnailImage,
      this.thumbnailImageTag,
      this.featuredImage,
      this.featuredImageTag,
      this.excerpt,
      this.chefTip,
      this.lusogNote,
      this.created,
      this.bestProductId,
      this.bestProductName,
      this.bestProductSlug,
      this.bestProductImage,
      this.bestProductThumbnailImage,
      this.bestProductParentCategoryId,
      this.bestProductParentCategoryName,
      this.bestProductParentCategorySlug,
      this.isRecipeOfTheDay,
      this.cookingSkills,
      this.cookingTools,
      this.ingredients,
      this.mealType,
      this.metaData,
      this.averageRating,
      this.totalRatingCount});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    procedures = json['procedures'];
    servingNumber = json['serving_number'];
    servingCost = json['serving_cost'];
    budgetRange = json['budget_range'];
    preparationTime = json['preparation_time'];
    cookingTime = json['cooking_time'];
    thumbnailImage = json['thumbnail_image'];
    thumbnailImageTag = json['thumbnail_image_tag'];
    featuredImage = json['featured_image'];
    featuredImageTag = json['featured_image_tag'];
    excerpt = json['excerpt'];
    chefTip = json['chef_tip'];
    lusogNote = json['lusog_note'];
    created = json['created'];
    bestProductId = json['best_product_id'];
    bestProductName = json['best_product_name'];
    bestProductSlug = json['best_product_slug'];
    bestProductImage = json['best_product_image'];
    bestProductThumbnailImage = json['best_product_thumbnail_image'];
    bestProductParentCategoryId = json['best_product_parent_category_id'];
    bestProductParentCategoryName = json['best_product_parent_category_name'];
    bestProductParentCategorySlug = json['best_product_parent_category_slug'];
    isRecipeOfTheDay = json['is_recipe_of_the_day'];
    if (json['cooking_skills'] != null) {
      cookingSkills = <CookingSkills>[];
      json['cooking_skills'].forEach((v) {
        cookingSkills!.add(new CookingSkills.fromJson(v));
      });
    }
    if (json['cooking_tools'] != null) {
      cookingTools = <CookingTools>[];
      json['cooking_tools'].forEach((v) {
        cookingTools!.add(new CookingTools.fromJson(v));
      });
    }
    ingredients = json['ingredients'] != null
        ? new Ingredients.fromJson(json['ingredients'])
        : null;
    if (json['meal_type'] != null) {
      mealType = <MealType>[];
      json['meal_type'].forEach((v) {
        mealType!.add(new MealType.fromJson(v));
      });
    }
    metaData = json['meta_data'] != null
        ? new MetaData.fromJson(json['meta_data'])
        : null;
    averageRating = json['average_rating'];
    totalRatingCount = json['total_rating_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['procedures'] = this.procedures;
    data['serving_number'] = this.servingNumber;
    data['serving_cost'] = this.servingCost;
    data['budget_range'] = this.budgetRange;
    data['preparation_time'] = this.preparationTime;
    data['cooking_time'] = this.cookingTime;
    data['thumbnail_image'] = this.thumbnailImage;
    data['thumbnail_image_tag'] = this.thumbnailImageTag;
    data['featured_image'] = this.featuredImage;
    data['featured_image_tag'] = this.featuredImageTag;
    data['excerpt'] = this.excerpt;
    data['chef_tip'] = this.chefTip;
    data['lusog_note'] = this.lusogNote;
    data['created'] = this.created;
    data['best_product_id'] = this.bestProductId;
    data['best_product_name'] = this.bestProductName;
    data['best_product_slug'] = this.bestProductSlug;
    data['best_product_image'] = this.bestProductImage;
    data['best_product_thumbnail_image'] = this.bestProductThumbnailImage;
    data['best_product_parent_category_id'] = this.bestProductParentCategoryId;
    data['best_product_parent_category_name'] =
        this.bestProductParentCategoryName;
    data['best_product_parent_category_slug'] =
        this.bestProductParentCategorySlug;
    data['is_recipe_of_the_day'] = this.isRecipeOfTheDay;
    if (this.cookingSkills != null) {
      data['cooking_skills'] =
          this.cookingSkills!.map((v) => v.toJson()).toList();
    }
    if (this.cookingTools != null) {
      data['cooking_tools'] =
          this.cookingTools!.map((v) => v.toJson()).toList();
    }
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients!.toJson();
    }
    if (this.mealType != null) {
      data['meal_type'] = this.mealType!.map((v) => v.toJson()).toList();
    }
    if (this.metaData != null) {
      data['meta_data'] = this.metaData!.toJson();
    }
    data['average_rating'] = this.averageRating;
    data['total_rating_count'] = this.totalRatingCount;
    return data;
  }
}

class CookingSkills {
  String? skill;

  CookingSkills({this.skill});

  CookingSkills.fromJson(Map<String, dynamic> json) {
    skill = json['skill'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['skill'] = this.skill;
    return data;
  }
}

class CookingTools {
  String? tool;

  CookingTools({this.tool});

  CookingTools.fromJson(Map<String, dynamic> json) {
    tool = json['tool'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tool'] = this.tool;
    return data;
  }
}

class Ingredients {
  List<Ing>? ing;

  Ingredients({this.ing});

  Ingredients.fromJson(Map<String, dynamic> json) {
    if (json['ing'] != null) {
      ing = <Ing>[];
      json['ing'].forEach((v) {
        ing!.add(new Ing.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ing != null) {
      data['ing'] = this.ing!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Ing {
  String? quantity;
  String? unit;
  String? name;
  String? recipePrefix;
  int? servingId;
  int? productId;

  Ing(
      {this.quantity,
      this.unit,
      this.name,
      this.recipePrefix,
      this.servingId,
      this.productId});

  Ing.fromJson(Map<String, dynamic> json) {
    quantity = json['quantity'];
    unit = json['unit'];
    name = json['name'];
    recipePrefix = json['recipe_prefix'];
    servingId = json['serving_id'];
    productId = json['product_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['quantity'] = this.quantity;
    data['unit'] = this.unit;
    data['name'] = this.name;
    data['recipe_prefix'] = this.recipePrefix;
    data['serving_id'] = this.servingId;
    data['product_id'] = this.productId;
    return data;
  }
}

class MealType {
  int? id;
  String? name;
  String? slug;
  String? featuredImage;

  MealType({this.id, this.name, this.slug, this.featuredImage});

  MealType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    featuredImage = json['featured_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['featured_image'] = this.featuredImage;
    return data;
  }
}

class MetaData {
  String? metaRef;
  String? metaTitle;
  String? metaDescription;
  String? metaKeywords;

  MetaData(
      {this.metaRef, this.metaTitle, this.metaDescription, this.metaKeywords});

  MetaData.fromJson(Map<String, dynamic> json) {
    metaRef = json['meta_ref'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaKeywords = json['meta_keywords'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meta_ref'] = this.metaRef;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['meta_keywords'] = this.metaKeywords;
    return data;
  }
}
