import 'dart:convert';
import 'package:cocktail_party/models/drink.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveProvider with ChangeNotifier {
  List<Drink>? drinks;

  Future<String> saveItem({required Drink drink}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      var getSaved = prefs.getString('savedList');
      if (getSaved != null) {
        List<dynamic> jsonList = jsonDecode(getSaved);
        drinks = jsonList.map((e) {
          return Drink.fromJson(e);
        }).toList();
        if (drinks!.contains(drink) == true) {
          return 'Drink is already added in List';
        }
        drinks!.add(drink);
        jsonList = drinks!.map((drink) => drink.toJson()).toList();
        String jsonString = jsonEncode(jsonList);
        await prefs.setString('savedList', jsonString);
        notifyListeners();
        return 'Drink Added successfully';
      } else {
        drinks = [];
        drinks!.add(drink);
        List<dynamic> jsonList =
            drinks!.map((drink) => drink.toJson()).toList();
        String jsonString = jsonEncode(jsonList);
        await prefs.setString('savedList', jsonString);
        notifyListeners();
        return 'Drink Added Successfully';
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<List<Drink>?> getItems() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var getSaved = prefs.getString('savedList');
    if (getSaved != null) {
      List<dynamic> jsonList = jsonDecode(getSaved);

      drinks = [];
      drinks = jsonList.map((e) {
        return Drink.fromJson(e);
      }).toList();
    }
    return drinks;
  }

  Future<bool> checkList({required Drink drink}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var getSaved = prefs.getString('savedList');
    if (getSaved != null) {
      List<dynamic> jsonList = jsonDecode(getSaved);
      drinks = [];
      drinks = jsonList.map((e) {
        return Drink.fromJson(e);
      }).toList();
      if (drinks!.contains(drink) == true) {
        return true;
      }
    }
    return false;
  }

  Future<String> deleteDrink({required Drink drink}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var getSaved = prefs.getString('savedList');
    if (getSaved != null) {
      List<dynamic> jsonList = jsonDecode(getSaved);

      drinks = jsonList.map((e) {
        return Drink.fromJson(e);
      }).toList();
      drinks!.remove(drink);
      jsonList = drinks!.map((drink) => drink.toJson()).toList();
      String jsonString = jsonEncode(jsonList);
      await prefs.setString('savedList', jsonString);
      notifyListeners();

      return 'Successfully Deleted';
    }
    return 'No Times in List';
  }
}
