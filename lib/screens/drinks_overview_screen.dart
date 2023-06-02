import 'package:cached_network_image/cached_network_image.dart';
import 'package:cocktail_party/models/drink.dart';
import 'package:cocktail_party/provider/overview_provider/cocktail_overview_provider.dart';
import 'package:cocktail_party/screens/drink_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrinksOverview extends StatefulWidget {
  const DrinksOverview({super.key});

  @override
  State<DrinksOverview> createState() => _DrinksOverviewState();
}

class _DrinksOverviewState extends State<DrinksOverview> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Consumer<CocktailOverProvider>(
        builder: (context, value, child) => Scaffold(
              appBar: AppBar(
                title: const Text('Drinks'),
              ),
              body: FutureBuilder<List<Drink>>(
                future: value.onCLick(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return GridView.builder(
                      itemCount: snapshot.data!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: screenSize.height * 0.3,
                        mainAxisSpacing: screenSize.height * 0.005,
                        crossAxisSpacing: screenSize.height * 0.005,
                      ),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DrinkDetailsScreen(
                                drink: snapshot.data![index]),
                          ));
                        },
                        child: Card(
                          elevation: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Hero(
                                  tag: snapshot.data![index].strDrinkThumb!,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        snapshot.data![index].strDrinkThumb!,
                                    fit: BoxFit.cover,
                                    height: screenSize.height * 0.2,
                                    width: double.infinity,
                                    progressIndicatorBuilder:
                                        (context, url, progress) =>
                                            const Center(
                                      child:
                                          CircularProgressIndicator.adaptive(),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      snapshot.data![index].strDrink!,
                                      maxLines: 1,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data![index].strCategory!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      snapshot.data![index].strAlcoholic!,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                  if (snapshot.hasError) {
                    if (snapshot.data == null) {
                      return const Center(
                        child: Text('NO Drinks with this letter'),
                      );
                    }
                    return Center(
                      child: Text('${snapshot.error}'),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                },
              ),
              bottomNavigationBar: SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    26,
                    (index) {
                      final letter =
                          String.fromCharCode('A'.codeUnitAt(0) + index);
                      return GestureDetector(
                        onTap: () {
                          value.getString(letter, index);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: (value.index == index)
                                  ? Colors.purple
                                  : Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              letter,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ));
  }
}
