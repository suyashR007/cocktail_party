import 'package:cocktail_party/global/dio.dart';
import 'package:cocktail_party/models/drink.dart';
import 'package:cocktail_party/provider/search_provider/repository/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  @override
  Future<List<Drink>> getSearchResults(String search) async {
    try {
      final myDio = await MyDio.provideDio();
      final result = await myDio.get(
        '/json/v1/1/search.php?',
        queryParameters: <String, dynamic>{
          's': search.trim().replaceAll(' ', ''),
        },
      );
      List<dynamic> data = result.data['drinks'];
      List<Drink> finalResult = [];
      for (var element in data) {
        finalResult.add(Drink.fromMap(element));
      }
      return finalResult;
    } catch (e) {
      return Future.error(e);
    }
  }
}
