import 'package:b_library/resources/components/app_bar.dart';
import 'package:b_library/resources/constants/color.dart';
import 'package:b_library/view/Screens/library_screen.dart';
import 'package:b_library/view/Screens/search_screen.dart';
import 'package:b_library/view/Screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreen() {
    return [
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: const [
              //
              LibraryAppBar()
            ],
          ),
        ),
      ),
      const LibraryScreen(),
      const ShopScreen(),
      const SearchScreen(),
      const Text('Proile'),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        title: 'Home',
        activeColorPrimary: AppColors.secondaryColor,
        icon: const Icon(
          Icons.home_outlined,
        ),
        inactiveIcon: const Icon(
          Icons.home_outlined,
          color: Colors.black,
        ),
      ),
      PersistentBottomNavBarItem(
        title: 'Library',
        activeColorPrimary: AppColors.secondaryColor,
        icon: const Icon(
          Icons.library_add_check_outlined,
          color: AppColors.secondaryColor,
        ),
        inactiveIcon: const Icon(
          Icons.library_add_check_outlined,
          color: Colors.black,
        ),
      ),
      PersistentBottomNavBarItem(
        title: 'Shop',
        activeColorPrimary: AppColors.secondaryColor,
        icon: const Icon(
          Icons.book_outlined,
          color: AppColors.secondaryColor,
        ),
        inactiveIcon: const Icon(
          Icons.book_outlined,
          color: Colors.black,
        ),
      ),
      PersistentBottomNavBarItem(
        title: 'Search',
        activeColorPrimary: AppColors.secondaryColor,
        icon: const Icon(
          Icons.search_outlined,
          color: AppColors.secondaryColor,
        ),
        inactiveIcon: const Icon(
          Icons.search_outlined,
          color: Colors.black,
        ),
      ),
      PersistentBottomNavBarItem(
        title: 'Profile',
        activeColorPrimary: AppColors.secondaryColor,
        contentPadding: 0,
        // iconSize: 55,
        icon: const Icon(
          Icons.person_outline_outlined,
        ),
        inactiveIcon: const Icon(
          Icons.person_outline_outlined,
          color: Colors.black,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: _navBarItem(),
      navBarStyle: NavBarStyle.style6,
    );
  }
}
