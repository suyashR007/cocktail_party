import 'package:cocktail_party/provider/main_screen_provider.dart';
import 'package:cocktail_party/screens/drinks_overview_screen.dart';
import 'package:cocktail_party/screens/saved_drinks_screen.dart';
import 'package:cocktail_party/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = const [
    DrinksOverview(),
    SearchScreen(),
    SavedDrinksScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenProvider>(
      builder: (context, value, child) => Scaffold(
        body: screens[value.index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: value.index,
          onTap: (val) => value.changeIndex(val),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                (value.index == 0)
                    ? Icons.sports_bar
                    : Icons.sports_bar_outlined,
              ),
              label: 'Drinks',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                (value.index == 1) ? Icons.search_outlined : Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                (value.index == 1) ? Icons.favorite_border : Icons.favorite,
              ),
              label: 'Favorite',
            ),
          ],
        ),
      ),
    );
  }
}
