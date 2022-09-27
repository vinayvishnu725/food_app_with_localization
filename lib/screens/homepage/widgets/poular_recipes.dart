import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/Models/Product_model.dart';
import 'package:food_app/core/const.dart';
import 'package:food_app/utils/config.dart';

class PopularRecipes extends StatefulWidget {
  final PopularRecipesModel? item;
  const PopularRecipes({Key? key, this.item}) : super(key: key);

  @override
  State<PopularRecipes> createState() => _PopularRecipesState();
}

class _PopularRecipesState extends State<PopularRecipes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 12, 4, 12),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        elevation: 7,
        child: Container(
          height: SizeConfig.heightMultiplier! * 2,
          width: SizeConfig.heightMultiplier! * 12,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: SizeConfig.heightMultiplier! * 8,
                  width: SizeConfig.heightMultiplier! * 12,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      widget.item!.img!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  widget.item!.name!,
                  maxLines: 1,
                  style: TextStyle(fontSize: SizeConfig.textMultiplier! * 1.1),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
