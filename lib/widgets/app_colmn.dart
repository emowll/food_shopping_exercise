import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/icon_and_text_widget.dart';
import 'package:flutter_application_1/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  // değişken verdik
  final String text;
  // bunu burda gerekli kıldık
  const AppColumn({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26,),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: Dimensions.height15,
                      )),
            ),
            SizedBox(width: Dimensions.height10),
            SmallText(text: '4.5'),
            SizedBox(width: Dimensions.height10),
            SmallText(text: '1287'),
            SizedBox(width: Dimensions.width3),
            SmallText(text: 'Yorumlar'),
            SizedBox(
              height: Dimensions.height10,
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconColor: AppColors.iconcolor1),
            SizedBox(width: Dimensions.height15),
            IconAndTextWidget(
                icon: Icons.location_pin,
                text: '1.7km',
                iconColor: AppColors.mainColor),
            SizedBox(width: Dimensions.height15),
            IconAndTextWidget(
                icon: Icons.access_time_sharp,
                text: '32min',
                iconColor: AppColors.iconcolor2)
          ],
        )
      ],
    );
  }
}
