import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:sizer/sizer.dart';
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
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white, //your color,
        shadowColor: AppColors.backgroundColor,
        foregroundColor: AppColors.backgroundColor,
        surfaceTintColor: AppColors.backgroundColor,
        scrolledUnderElevation: 0,

        forceMaterialTransparency: true,

        title: Container(
          color: AppColors.backgroundColor,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.graycolor, width: 1),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.backgroundColor,
                ),
                width: 70.w,
                height: 35,
                child: Center(
                  child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 14),
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        hintText: "Enter name, category, etc.",
                        isCollapsed: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        border: InputBorder.none,
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                            color: AppColors.primarycolor,
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Remix.search_line,
                            size: 18,
                            color: AppColors.graycolor,
                          ),
                          onPressed: () {},
                        ),
                      )),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () => Scaffold.of(context).openEndDrawer(),
                child: Icon(
                  Remix.filter_line,
                  size: 22,
                  color: AppColors.textcolor,
                ),
              ),
              // SizedBox(
              //   width: 20,
              // )
            ],
          ),
        ),
      ),

      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          color: AppColors.secBackgroundColor,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              CommonHeader(title: "PRODUCTS"),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
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
