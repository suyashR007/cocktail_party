import 'package:cocktail_party/models/drink.dart';
import 'package:cocktail_party/provider/search_provider/repository/search_repository.dart';
import 'package:cocktail_party/provider/search_provider/repository/search_repository_impl.dart';
import 'package:flutter/material.dart';

class SearchScreenProvider with ChangeNotifier {
  final SearchRepository repository = SearchRepositoryImpl();
  List<Drink>? result;
  getSearchResults(String search) async {
    notifyListeners();
    result = await repository.getSearchResults(search);
    notifyListeners();
  }
}
