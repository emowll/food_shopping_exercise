import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/utils/dimensions.dart';
import 'package:flutter_application_1/widgets/app_colmn.dart';
import 'package:flutter_application_1/widgets/app_icon.dart';
import 'package:flutter_application_1/widgets/big_text.dart';
import 'package:flutter_application_1/widgets/exandable_text_widget.dart';

class PopulerFoodDetail extends StatelessWidget {
  const PopulerFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //arka plan resmi
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/biryani_wallpaper.jpg"),
                )),
              )),
          //icon widgets
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(icon: Icons.arrow_back_ios),
                    AppIcon(icon: Icons.shopping_cart_outlined)
                  ])),
          //yiyecek tanıtımı
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(
                        text: "Biryani",
                      ),
                      SizedBox(height: Dimensions.height20),
                      BigText(text: "Tanıtım"),
                      SizedBox(height: Dimensions.height20),
                      const Expanded(
                        child: SingleChildScrollView(
                          child: ExpandableTextWidget(
                            text: '''
    Biryani, Hindistan'ın zengin kültürel mirasının bir yansıması olan ve geniş bir coğrafyada farklılık gösteren, lezzet patlaması yaratan nefis bir pilav yemeğidir. Tarih boyunca, bu muazzam yemek, çeşitli yerel malzemeler, kültürel etkileşimler ve aile gelenekleri tarafından şekillenmiş, her bölgede benzersiz bir tat profiline sahip olan bir dizi lezzetli varyasyona ev sahipliği yapmıştır.

    Biryani'nin temel yapısı genellikle uzun tane hindistancevizi veya basmati pirinci, et (genellikle tavuk, kuzu, dana eti) veya sebzeler içerir. Ancak, bu temel bileşenler, yemek boyunca katman katman eklenen özel bir baharat karışımı, sarımsak, soğan, zencefil, yoğurt ve bazen domates salçası gibi malzemelerle bir araya getirilir. Bu malzemeler, birbirleriyle mükemmel bir uyum içinde olan bir lezzet patlaması yaratır.

    Biryani'nin olmazsa olmaz özelliklerinden biri, baharatların ustaca kullanımıdır. Tarçın, karanfil, kişniş, kimyon, karabiber ve kişniş tohumu gibi baharatlar, yemeğe derinlik ve karmaşıklık katarken, renkli bir görünüm sunar. Bu baharatlar, her bir ısırıkta damakları kucaklamak ve farklı bir tat deneyimi sunmak için özenle seçilir ve kullanılır.

    Biryani'nin servis edilmesi, genellikle taze nane, kişniş ve limon dilimleri ile süslenir. Bu, yemeğe tazelik katan ve lezzetlerin dengesini sağlayan hoş bir dokunuştur. Yemek genellikle aile toplantılarından, özel gün kutlamalarına kadar her türlü özel ve sosyal etkinlikte paylaşılır.

    Sonuç olarak, biryani, zengin lezzet profili, baharatların karmaşıklığı ve malzemelerin mükemmel uyumu ile damakları şenlendiren, Güney Asya mutfağının en tanınmış ve sevilen yemeklerinden biridir. Bu yemek, sadece bir besin kaynağı değil, aynı zamanda bir kültürel ifade, aile bağları ve lezzetli bir yolculuktur.
  ''',
                          ),
                        ),
                      ),
                    ],
                  )))
        ],
      ),
      bottomNavigationBar: Container(
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
                      Icons.remove,
                      color: AppColors.signColor,
                    ),
                    SizedBox(width: Dimensions.width10 / 2),
                    BigText(text: "0"),
                    SizedBox(width: Dimensions.width10 / 2),
                    Icon(
                      Icons.add,
                      color: AppColors.signColor,
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
                child: BigText(text: "10TL | Sepete Ekle", color: Colors.white),
              )
            ],
          )),
    );
  }
}
