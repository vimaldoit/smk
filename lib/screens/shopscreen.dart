import 'package:flutter/material.dart';
import 'package:skmcommerce/component/common_heading.dart';
import 'package:skmcommerce/component/product_item.dart';
import 'package:skmcommerce/component/section_heading.dart';
import 'package:skmcommerce/custom/bottomNav.dart';
import 'package:skmcommerce/utils/constants.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secBackgroundColor,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              CommonHeader(title: "PRODUCTS"),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ProdectItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 15,
                    );
                  },
                ),
              ),
            ],
          )
          //  Column(
          //   children: [ProdectItem()],
          // ),
          ),
      // bottomNavigationBar: CustomBottomNavigationBar(
      //   currentItem: BottomNavItem.home,
      // ),
    );
  }
}
