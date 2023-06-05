// ignore_for_file: use_build_context_synchronously

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cocktail_party/models/drink.dart';
import 'package:cocktail_party/provider/main_screen_provider.dart';
import 'package:cocktail_party/provider/save_provider/save_provider.dart';
import 'package:cocktail_party/widgets/ingredient_view.dart';
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
                  height: screenSize.height * 0.9,
                  width: double.infinity,
                  progressIndicatorBuilder: (context, url, progress) =>
                      const CircularProgressIndicator.adaptive(),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            // shrinkWrap: true,
            children: [
              Padding(
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
                      "Category: ${widget.drink.strCategory!}",
                      style: GoogleFonts.albertSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Glass Type: ${widget.drink.strGlass!}',
                      style: GoogleFonts.albertSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: screenSize.height * 0.01),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.purple[200]!.withOpacity(0.1),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Instructions',
                            style: GoogleFonts.albertSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const Divider(thickness: 0.5),
                          Text(widget.drink.strInstructions!),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.purple[200]!.withOpacity(0.1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // padding: const EdgeInsets.all(8),
                  // shrinkWrap: true,
                  children: [
                    Text(
                      'Ingredient',
                      style: GoogleFonts.albertSans(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const Divider(thickness: 0.5),
                    if (widget.drink.strIngredient1 != null &&
                        widget.drink.strMeasure1 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient1!,
                        qualtity: widget.drink.strMeasure1!,
                      ),
                    if (widget.drink.strIngredient2 != null &&
                        widget.drink.strMeasure2 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient2!,
                        qualtity: widget.drink.strMeasure2!,
                      ),
                    if (widget.drink.strIngredient3 != null &&
                        widget.drink.strMeasure3 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient3!,
                        qualtity: widget.drink.strMeasure3!,
                      ),
                    if (widget.drink.strIngredient4 != null &&
                        widget.drink.strMeasure4 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient4!,
                        qualtity: widget.drink.strMeasure4!,
                      ),
                    if (widget.drink.strIngredient5 != null &&
                        widget.drink.strMeasure5 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient5!,
                        qualtity: widget.drink.strMeasure5!,
                      ),
                    if (widget.drink.strIngredient6 != null &&
                        widget.drink.strMeasure6 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient6!,
                        qualtity: widget.drink.strMeasure6!,
                      ),
                    if (widget.drink.strIngredient7 != null &&
                        widget.drink.strMeasure7 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient7!,
                        qualtity: widget.drink.strMeasure7!,
                      ),
                    if (widget.drink.strIngredient8 != null &&
                        widget.drink.strMeasure8 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient8!,
                        qualtity: widget.drink.strMeasure8!,
                      ),
                    if (widget.drink.strIngredient9 != null &&
                        widget.drink.strMeasure9 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient9!,
                        qualtity: widget.drink.strMeasure9!,
                      ),
                    if (widget.drink.strIngredient10 != null &&
                        widget.drink.strMeasure10 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient10!,
                        qualtity: widget.drink.strMeasure10!,
                      ),
                    if (widget.drink.strIngredient11 != null &&
                        widget.drink.strMeasure11 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient11!,
                        qualtity: widget.drink.strMeasure11!,
                      ),
                    if (widget.drink.strIngredient12 != null &&
                        widget.drink.strMeasure12 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient12!,
                        qualtity: widget.drink.strMeasure12!,
                      ),
                    if (widget.drink.strIngredient13 != null &&
                        widget.drink.strMeasure13 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient13!,
                        qualtity: widget.drink.strMeasure13!,
                      ),
                    if (widget.drink.strIngredient14 != null &&
                        widget.drink.strMeasure14 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient14!,
                        qualtity: widget.drink.strMeasure14!,
                      ),
                    if (widget.drink.strIngredient15 != null &&
                        widget.drink.strMeasure15 != null)
                      IngredientView(
                        ingradient: widget.drink.strIngredient15!,
                        qualtity: widget.drink.strMeasure15!,
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
        child: Consumer2<SaveProvider, MainScreenProvider>(
          builder: (context, saveProvider, mainScreenProvider, child) =>
              FutureBuilder<bool>(
            future: saveProvider.checkList(drink: widget.drink),
            builder: (context, snapshot) {
              return ElevatedButton.icon(
                onPressed: () async {
                  if (snapshot.data!) {
                    Navigator.pop(context);
                    mainScreenProvider.changeIndex(2);
                  } else {
                    var resp = await saveProvider.saveItem(drink: widget.drink);
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(resp)));
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
    );
  }
}
