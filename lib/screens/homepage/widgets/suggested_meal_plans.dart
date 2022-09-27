import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/Models/Product_model.dart';
import 'package:food_app/core/const.dart';
import 'package:food_app/utils/config.dart';

class SuggestedMealPlans extends StatefulWidget {
  final SuggestedMealPlansModel? item;
  const SuggestedMealPlans({Key? key, this.item}) : super(key: key);

  @override
  State<SuggestedMealPlans> createState() => _SuggestedMealPlansState();
}

class _SuggestedMealPlansState extends State<SuggestedMealPlans> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${widget.item!.week!}'),
        Padding(
            padding: const EdgeInsets.all(8),
            child: DottedBorder(
              strokeWidth: 1,
              dashPattern: [6, 6, 6, 3],
              color: AppColors.primaryColor1,
              // strokeCap: StrokeCap.square,
              borderType: BorderType.Circle,
              radius: Radius.circular(100),
              padding: EdgeInsets.all(0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: SizeConfig.heightMultiplier! * 15,
                    width: SizeConfig.heightMultiplier! * 15,
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Image.asset(
                        widget.item!.img!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            )),
        Text(
          '${widget.item!.name!}',
          style: TextStyle(fontSize: SizeConfig.textMultiplier! * 1.7),
        )
      ],
    );
  }
}
