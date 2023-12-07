import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/app_icon.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/exandable_text_widget.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimensions.height20*4,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                preferredSize:  Size.fromHeight(Dimensions.height20),
                child: Container(
                  width: double.maxFinite,
                  padding:  EdgeInsets.only(top: Dimensions.width5, bottom: Dimensions.height10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius20),
                          topRight: Radius.circular(Dimensions.radius20))),
                  child: Center(
                      child: BigText(size: Dimensions.font26, text: "Biryani")),
                )),
            pinned: true,
            backgroundColor: AppColors.mainBlackColor,
            expandedHeight: Dimensions.height300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/image/biryani_wallpaper.jpg",
                  width: double.maxFinite, fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: const ExpandableTextWidget(
                    text:
                        '''Biryani, Hindistan'a özgü kökeni olan, lezzetli ve zengin bir pilav yemeğidir. Bu muazzam lezzet, baharatlı ve aromatik pirinçle birleştirilen et (genellikle tavuk, kuzu, dana eti veya karides), sebzeler, yoğurt, baharatlar ve bazen yumurta ile hazırlanır. Biryani'nin kökenleri, Mughal İmparatorluğu'na kadar uzanmaktadır ve zaman içinde farklı bölgelerde çeşitli varyasyonlar kazanmıştır.

Bir Biryani'nin hazırlanması oldukça özen gerektiren bir süreçtir ve aşamalı bir mutfak becerisi gerektirir. İlk olarak, uzun tane yapısına sahip özel bir pirinç olan Basmati pirinci kullanılır. Pirinç, genellikle önceden sıcak suda bekletilir ve ardından özel bir şekilde haşlanarak tane tane olması sağlanır.

Biryani'nin temel özelliği, yoğun baharat profili ve özel aroma karışımıdır. Karnabahar, bezelye, patates, havuç gibi sebzeler, tavuk veya etle birleşerek birinci sınıf bir lezzet yaratır. Tipik olarak kullanılan baharatlar arasında kişniş, zerdeçal, kimyon, tane karabiber, hindistancevizi, karanfil, tarçın ve garam masala yer alır. Yoğurt da, Biryani'ye kendine özgü bir dokunuş katar ve yemeğin tüm malzemelerini mükemmel bir şekilde birbirine bağlar.

Biryani'nin pişirme süreci genellikle "dum" adı verilen bir yöntemi içerir. Hazırlanan et, sebzeler ve baharatlar önceden haşlanmış pirinçle sırayla katmanlanır. Ardından, tencerenin ağzı kapatılarak, yavaşça pişirilmesi için kısık ateşte bırakılır. Bu yöntem, malzemelerin birbirine nüfuz etmesine ve lezzetlerin mükemmel bir şekilde birleşmesine olanak tanır.

Biryani, genellikle bayramlar, düğünler, özel günler veya sadece sevdiklerinizle bir araya gelmek için mükemmel bir yemektir. Yüksek lezzet profili ve özenle seçilen malzemelerle yapılan bu geleneksel Hint yemeği, sofralarda bir ziyafetin simgesi haline gelmiştir. Her bir lokma, Hindistan'ın zengin kültürünü ve mutfak mirasını yansıtan bir lezzet patlamasıdır.'''),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "109.95 TL "+" X "+" 0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
      Container(
          height: Dimensions.bottomHeightBar,
          padding: EdgeInsets.only(
              top: Dimensions.height20,
              bottom: Dimensions.height20,
              left: Dimensions.width20,
              right: Dimensions.width20),
          decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                  topRight: Radius.circular(Dimensions.radius20 * 2))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite, color: AppColors.mainColor,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor,
                ),
                child: BigText(text: "₺109.95 TL | Sepete Ekle", color: Colors.white),
              )
            ],
          )), ],
      ),
    );
  }
}
