import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/constaint.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/home/components/home_header.dart';
import 'package:shop_app/screens/home/components/icon_btn_with_counter.dart';
import 'package:shop_app/screens/home/components/popular_product.dart';
import 'package:shop_app/screens/home/components/search_field.dart';
import 'package:shop_app/screens/home/components/section_title.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/models/Product.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            DiscountBanner(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            Categories(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            SpecialOffers(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            PopularProducts(),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
          ],
        ),
      ),
    );
  }
}
