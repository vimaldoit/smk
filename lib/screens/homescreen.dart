import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:skmcommerce/component/custom_btn.dart';
import 'package:skmcommerce/component/product_card.dart';
import 'package:skmcommerce/component/product_item.dart';
import 'package:skmcommerce/component/section_heading.dart';
import 'package:skmcommerce/custom/bottomNav.dart';
import 'package:skmcommerce/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(198, 236, 233, 233),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage("assets/images/cover-cake.jpg"),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bring your happiness through a piece of cake",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: AppColors.primarycolor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),

              const SectionHeading(title: "FEATURED"),

              ListView.separated(
                  shrinkWrap:
                      true, // Allows the ListView to size itself correctly
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const ProdectItem();
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 20);
                  },
                  itemCount: 4),

              const SizedBox(
                height: 25,
              ),

              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CustomButton(title: "See More"),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              const SectionHeading(title: "CATEGORIES"),

              Container(
                height: 250,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: GridTile(
                          // footer:  Text(),
                          child: Image.asset(
                        "assets/images/category1.webp",
                        fit: BoxFit.cover,
                      )),
                    );
                  },
                ),
              ),
              //  const SizedBox(
              //   height: 10,
              // ),

              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CustomButton(title: "See More"),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Remix.home_2_line),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Remix.handbag_line),
      //       label: 'Shop',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Remix.lifebuoy_line),
      //       label: 'Help',
      //     ),
      //   ],
      // ),

      // bottomNavigationBar: CustomBottomNavigationBar(
      //   currentItem: BottomNavItem.home,
      // ),
    );
  }
}
