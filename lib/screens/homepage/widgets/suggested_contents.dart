import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/Models/Product_model.dart';
import 'package:food_app/core/const.dart';
import 'package:food_app/utils/config.dart';

class SuggestedContents extends StatefulWidget {
  final SuggestedContentsModel? item;
  const SuggestedContents({Key? key, this.item}) : super(key: key);

  @override
  State<SuggestedContents> createState() => _SuggestedContentsState();
}

class _SuggestedContentsState extends State<SuggestedContents> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4.0, 12, 4, 12),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        elevation: 7,
        child: Container(
          height: SizeConfig.heightMultiplier! * 0,
          width: SizeConfig.heightMultiplier! * 14,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier! * 9,
                      width: SizeConfig.heightMultiplier! * 14,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          widget.item!.img!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        top: SizeConfig.heightMultiplier! * 6 / 2,
                        right: SizeConfig.heightMultiplier! * 12 / 2,
                        child: Icon(
                          Icons.play_circle_outlined,
                          color: Colors.white,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.item!.name!,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: SizeConfig.textMultiplier! * 1.3,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        widget.item!.lesson!,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: SizeConfig.textMultiplier! * 1.3),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
