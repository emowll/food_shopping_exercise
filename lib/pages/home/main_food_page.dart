import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print("mevcut yükseklik${MediaQuery.of(context).size}");
    return Scaffold(
        body: Column(
      children: [
        // Başlık Gösterimi
        Container(
          margin: EdgeInsets.only(
              top: Dimensions.height45, bottom: Dimensions.height15),
          padding: EdgeInsets.only(
              left: Dimensions.width20, right: Dimensions.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(
                    text: 'Ülke',
                    color: AppColors.mainColor,
                  ),
                  Row(
                    children: [
                      SmallText(
                        text: 'Şehir',
                        color: Colors.black54,
                      ),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  )
                ],
              ),
              Center(
                child: Container(
                  width: Dimensions.width45,
                  height: Dimensions.width45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor),
                  child: Icon(Icons.search, size: Dimensions.iconSize24),
                ),
              )
            ],
          ),
        ), 
                const Expanded(
            child: SingleChildScrollView(
          child: FoodPageBody(),
        ))
      ],
    ));
  }
}
