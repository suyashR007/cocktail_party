import 'package:cocktail_party/models/drink.dart';
import 'package:cocktail_party/provider/overview_provider/repository/overview_repository.dart';
import 'package:cocktail_party/provider/overview_provider/repository/overview_repository_impl.dart';
import 'package:flutter/material.dart';

class CocktailOverProvider with ChangeNotifier {
  final OverviewRepository repository = OverViewRepositoryImpl();
  String? letter;
  int index = 0;
  Future<List<Drink>> onCLick() async {
    if (letter != null) {
      return await repository.getList(letter);
    }
    return await repository.getListBasic();
  }

  getString(String let, int index) {
    letter = let;
    this.index = index;
    notifyListeners();
  }
}
