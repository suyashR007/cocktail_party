import 'dart:math';

import 'package:cocktail_party/models/drink.dart';
import 'package:cocktail_party/provider/save_provider/save_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SavedDrinksScreen extends StatefulWidget {
  const SavedDrinksScreen({super.key});

  @override
  State<SavedDrinksScreen> createState() => _SavedDrinksScreenState();
}

class _SavedDrinksScreenState extends State<SavedDrinksScreen> {
  @override
  void initState() {
    super.initState();
    // Provider.of<SaveProvider>(context).fetchList();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Consumer<SaveProvider>(
      builder: (context, saveProvider, child) => Scaffold(
        body: FutureBuilder<List<Drink>?>(
          future: saveProvider.getItems(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          snapshot.data![index].strDrinkThumb!,
                          width: screenSize.height * 0.1,
                          height: screenSize.height * 0.1,
                        ),
                      ),
                      title: Text(
                        snapshot.data![index].strDrink!,
                        style: GoogleFonts.poppins(fontSize: 20),
                      ),
                      subtitle: Text(
                        snapshot.data![index].strAlcoholic!,
                        style: GoogleFonts.poppins(fontSize: 14),
                      ),
                      trailing: IconButton(
                        onPressed: () async {
                          await saveProvider.deleteDrink(
                              drink: snapshot.data![index]);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ),
                  );
                },
              );
            }
            if (snapshot.data == null) {
              return const Center(
                child: Text('No Drinks Saved'),
              );
            }
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
        ),
      ),
    );
  }
}
