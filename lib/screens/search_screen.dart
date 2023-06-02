import 'package:cocktail_party/provider/search_provider/search_screen_provider.dart';
import 'package:cocktail_party/screens/drink_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchScreenProvider>(
      builder: (context, searchProvider, child) => Scaffold(
          appBar: AppBar(
            title: TextFormField(
              controller: controller,
              decoration: const InputDecoration(hintText: 'Search'),
              onChanged: (value) async =>
                  searchProvider.getSearchResults(value),
            ),
          ),
          body: (searchProvider.result != null)
              ? ListView(
                  children: searchProvider.result!.map((e) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DrinkDetailsScreen(drink: e),
                      )),
                      child: ListTile(
                        title: Text(e.strDrink!),
                        leading: CircleAvatar(
                          child: ClipOval(
                            child: Image.network(e.strDrinkThumb!),
                          ),
                        ),
                        subtitle: Text(
                          e.strCategory!,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                )
              : const Center(
                  child: Text('Search here'),
                )),
    );
  }
}
