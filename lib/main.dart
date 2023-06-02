import 'package:cocktail_party/provider/main_screen_provider.dart';
import 'package:cocktail_party/provider/overview_provider/cocktail_overview_provider.dart';
import 'package:cocktail_party/provider/save_provider/save_provider.dart';
import 'package:cocktail_party/provider/search_provider/search_screen_provider.dart';
import 'package:cocktail_party/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CocktailOverProvider()),
        ChangeNotifierProvider(create: (context) => SaveProvider()),
        ChangeNotifierProvider(create: (context) => MainScreenProvider()),
        ChangeNotifierProvider(create: (context) => SearchScreenProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
