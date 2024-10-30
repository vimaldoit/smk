import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:skmcommerce/component/filtter_drawer.dart';
import 'package:skmcommerce/custom/bottomNav.dart';
import 'package:skmcommerce/screens/helpscreen.dart';
import 'package:skmcommerce/screens/homescreen.dart';
import 'package:skmcommerce/screens/shopscreen.dart';
import 'package:skmcommerce/utils/constants.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int _selectedIndex = 0;
  Widget navigationPages(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return HomeScreen();
        break;
      case 1:
        return ShopScreen();
        break;
      case 2:
        return HelpScreen();
        break;
      default:
        return Center(child: Text("404"));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawerEnableOpenDragGesture: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          scrolledUnderElevation: 0,
          toolbarHeight: 80,
          title: Text("SKMCOMMERCE"),
          actions: [
            SizedBox(
              height: 30,
              child: ElevatedButton.icon(
                onPressed: () {},
                label: const Text(
                  "Login",
                  style: TextStyle(color: AppColors.primarycolor),
                ),
                icon: const Icon(
                  Icons.login,
                  color: AppColors.primarycolor,
                ),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    elevation: 0.0,
                    side: const BorderSide(
                        width: 1, color: AppColors.primarycolor)),
              ),
            ),
            const SizedBox(width: 20),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Remix.shopping_cart_2_line),
            )
          ],
        ),
        endDrawer: FilterDrawer(),
        body: navigationPages(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex, // Set the active index
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Remix.home_2_line),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Remix.handbag_line),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Remix.lifebuoy_line),
              label: 'Help',
            ),
          ],
          selectedItemColor: AppColors.primarycolor,
          unselectedItemColor: Colors.black.withOpacity(0.58),
        ));
  }
}
