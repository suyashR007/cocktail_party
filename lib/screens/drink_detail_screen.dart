// ignore_for_file: use_build_context_synchronously

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cocktail_party/models/drink.dart';
import 'package:cocktail_party/provider/main_screen_provider.dart';
import 'package:cocktail_party/provider/save_provider/save_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DrinkDetailsScreen extends StatefulWidget {
  final Drink drink;
  const DrinkDetailsScreen({
    required this.drink,
    super.key,
  });

  @override
  State<DrinkDetailsScreen> createState() => _DrinkDetailsScreenState();
}

class _DrinkDetailsScreenState extends State<DrinkDetailsScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: screenSize.height * 0.7,
              flexibleSpace: Hero(
                tag: widget.drink.strDrinkThumb!,
                child: CachedNetworkImage(
                  imageUrl: widget.drink.strDrinkThumb!,
                  fit: BoxFit.cover,
                  height: screenSize.height * 0.8,
                  width: double.infinity,
                  progressIndicatorBuilder: (context, url, progress) =>
                      const CircularProgressIndicator.adaptive(),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.drink.strDrink!,
                      style: GoogleFonts.satisfy(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'Type: ${widget.drink.strAlcoholic!}',
                      style: GoogleFonts.albertSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      widget.drink.strCategory!,
                      style: GoogleFonts.albertSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    Text(widget.drink.strGlass!),
                    Consumer2<SaveProvider, MainScreenProvider>(
                      builder:
                          (context, saveProvider, mainScreenProvider, child) =>
                              Center(
                        child: FutureBuilder<bool>(
                          future: saveProvider.checkList(drink: widget.drink),
                          builder: (context, snapshot) {
                            return ElevatedButton.icon(
                              onPressed: () async {
                                if (snapshot.data!) {
                                  Navigator.pop(context);
                                  mainScreenProvider.changeIndex(2);
                                } else {
                                  var resp = await saveProvider.saveItem(
                                      drink: widget.drink);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(resp)));
                                }
                              },
                              icon: (snapshot.hasData)
                                  ? Icon((snapshot.data!)
                                      ? Icons.favorite
                                      : Icons.favorite_border)
                                  : const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                              label: (snapshot.hasData)
                                  ? Text((snapshot.data!)
                                      ? 'Go to WishList'
                                      : 'Add Drink to WIshList')
                                  : const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.purple[200]!.withOpacity(0.1),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Text(widget.drink.strInstructions!),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: const SizedBox(),
      ),
    );
  }
}
