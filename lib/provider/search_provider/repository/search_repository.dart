import 'package:cocktail_party/models/drink.dart';

abstract class SearchRepository {
  Future<List<Drink>> getSearchResults(String search);
}
