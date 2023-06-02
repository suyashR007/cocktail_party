import 'package:cocktail_party/global/dio.dart';
import 'package:cocktail_party/models/drink.dart';
import 'package:cocktail_party/provider/overview_provider/repository/overview_repository.dart';

class OverViewRepositoryImpl implements OverviewRepository {
  @override
  Future<List<Drink>> getList(String? letter) async {
    final myDio = await MyDio.provideDio();

    final resp = await myDio.get('/json/v1/1/search.php',
        queryParameters: <String, dynamic>{
          'f': (letter != null) ? letter : 'a'
        });

    List<dynamic> data = resp.data['drinks'];
    List<Drink> something = [];
    for (var element in data) {
      something.add(Drink.fromMap(element));
    }
    return something;
  }

  @override
  Future<List<Drink>> getListBasic() async {
    final myDio = await MyDio.provideDio();

    final resp = await myDio.get('/json/v1/1/search.php',
        queryParameters: <String, dynamic>{'f': 'a'});

    List<dynamic> data = resp.data['drinks'];
    List<Drink> something = [];
    for (var element in data) {
      something.add(Drink.fromMap(element));
    }
    return something;
  }
}
