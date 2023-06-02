import 'package:cocktail_party/models/drink.dart';

abstract class OverviewRepository {
  Future<List<Drink>> getList(String? letter);

  Future<List<Drink>> getListBasic();
}
