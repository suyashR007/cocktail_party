// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Drink {
  final String? idDrink;
  final String? strDrink;
  final dynamic strDrinkAlternate;
  final dynamic strTags;
  final dynamic strVideo;
  final String? strCategory;
  final dynamic strIba;
  final String? strAlcoholic;
  final String? strGlass;
  final String? strInstructions;
  final String? strInstructionsEs;
  final String? strInstructionsDe;
  final dynamic strInstructionsFr;
  final String? strInstructionsIt;
  final dynamic strInstructionsZhHans;
  final dynamic strInstructionsZhHant;
  final String? strDrinkThumb;
  final String? strIngredient1;
  final String? strIngredient2;
  final String? strIngredient3;
  final String? strIngredient4;
  final String? strIngredient5;
  final String? strIngredient6;
  final String? strIngredient7;
  final String? strIngredient8;
  final String? strIngredient9;
  final String? strIngredient10;
  final String? strIngredient11;
  final String? strIngredient12;
  final String? strIngredient13;
  final String? strIngredient14;
  final String? strIngredient15;
  final String? strMeasure1;
  final String? strMeasure2;
  final String? strMeasure3;
  final String? strMeasure4;
  final String? strMeasure5;
  final String? strMeasure6;
  final String? strMeasure7;
  final String? strMeasure8;
  final String? strMeasure9;
  final String? strMeasure10;
  final String? strMeasure11;
  final String? strMeasure12;
  final String? strMeasure13;
  final String? strMeasure14;
  final String? strMeasure15;
  final String? strImageSource;
  final String? strImageAttribution;
  final String? strCreativeCommonsConfirmed;
  final String? dateModified;

  const Drink({
    this.idDrink,
    this.strDrink,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
    this.strCategory,
    this.strIba,
    this.strAlcoholic,
    this.strGlass,
    this.strInstructions,
    this.strInstructionsEs,
    this.strInstructionsDe,
    this.strInstructionsFr,
    this.strInstructionsIt,
    this.strInstructionsZhHans,
    this.strInstructionsZhHant,
    this.strDrinkThumb,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strImageSource,
    this.strImageAttribution,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  @override
  String toString() {
    return 'Drink(idDrink: $idDrink, strDrink: $strDrink, strDrinkAlternate: $strDrinkAlternate, strTags: $strTags, strVideo: $strVideo, strCategory: $strCategory, strIba: $strIba, strAlcoholic: $strAlcoholic, strGlass: $strGlass, strInstructions: $strInstructions, strInstructionsEs: $strInstructionsEs, strInstructionsDe: $strInstructionsDe, strInstructionsFr: $strInstructionsFr, strInstructionsIt: $strInstructionsIt, strInstructionsZhHans: $strInstructionsZhHans, strInstructionsZhHant: $strInstructionsZhHant, strDrinkThumb: $strDrinkThumb, strIngredient1: $strIngredient1, strIngredient2: $strIngredient2, strIngredient3: $strIngredient3, strIngredient4: $strIngredient4, strIngredient5: $strIngredient5, strIngredient6: $strIngredient6, strIngredient7: $strIngredient7, strIngredient8: $strIngredient8, strIngredient9: $strIngredient9, strIngredient10: $strIngredient10, strIngredient11: $strIngredient11, strIngredient12: $strIngredient12, strIngredient13: $strIngredient13, strIngredient14: $strIngredient14, strIngredient15: $strIngredient15, strMeasure1: $strMeasure1, strMeasure2: $strMeasure2, strMeasure3: $strMeasure3, strMeasure4: $strMeasure4, strMeasure5: $strMeasure5, strMeasure6: $strMeasure6, strMeasure7: $strMeasure7, strMeasure8: $strMeasure8, strMeasure9: $strMeasure9, strMeasure10: $strMeasure10, strMeasure11: $strMeasure11, strMeasure12: $strMeasure12, strMeasure13: $strMeasure13, strMeasure14: $strMeasure14, strMeasure15: $strMeasure15, strImageSource: $strImageSource, strImageAttribution: $strImageAttribution, strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, dateModified: $dateModified)';
  }

  factory Drink.fromMap(Map<String, dynamic> data) => Drink(
        idDrink: data['idDrink'] as String?,
        strDrink: data['strDrink'] as String?,
        strDrinkAlternate: data['strDrinkAlternate'] as dynamic,
        strTags: data['strTags'] as dynamic,
        strVideo: data['strVideo'] as dynamic,
        strCategory: data['strCategory'] as String?,
        strIba: data['strIBA'] as dynamic,
        strAlcoholic: data['strAlcoholic'] as String?,
        strGlass: data['strGlass'] as String?,
        strInstructions: data['strInstructions'] as String?,
        strInstructionsEs: data['strInstructionsES'] as String?,
        strInstructionsDe: data['strInstructionsDE'] as String?,
        strInstructionsFr: data['strInstructionsFR'] as dynamic,
        strInstructionsIt: data['strInstructionsIT'] as String?,
        strInstructionsZhHans: data['strInstructionsZH-HANS'] as dynamic,
        strInstructionsZhHant: data['strInstructionsZH-HANT'] as dynamic,
        strDrinkThumb: data['strDrinkThumb'] as String?,
        strIngredient1: data['strIngredient1'] as String?,
        strIngredient2: data['strIngredient2'] as String?,
        strIngredient3: data['strIngredient3'] as String?,
        strIngredient4: data['strIngredient4'] as String?,
        strIngredient5: data['strIngredient5'] as String?,
        strIngredient6: data['strIngredient6'] as String?,
        strIngredient7: data['strIngredient7'] as String?,
        strIngredient8: data['strIngredient8'] as String?,
        strIngredient9: data['strIngredient9'] as String?,
        strIngredient10: data['strIngredient10'] as String?,
        strIngredient11: data['strIngredient11'] as String?,
        strIngredient12: data['strIngredient12'] as String?,
        strIngredient13: data['strIngredient13'] as String?,
        strIngredient14: data['strIngredient14'] as String?,
        strIngredient15: data['strIngredient15'] as String?,
        strMeasure1: data['strMeasure1'] as String?,
        strMeasure2: data['strMeasure2'] as String?,
        strMeasure3: data['strMeasure3'] as String?,
        strMeasure4: data['strMeasure4'] as String?,
        strMeasure5: data['strMeasure5'] as String?,
        strMeasure6: data['strMeasure6'] as String?,
        strMeasure7: data['strMeasure7'] as String?,
        strMeasure8: data['strMeasure8'] as String?,
        strMeasure9: data['strMeasure9'] as String?,
        strMeasure10: data['strMeasure10'] as String?,
        strMeasure11: data['strMeasure11'] as String?,
        strMeasure12: data['strMeasure12'] as String?,
        strMeasure13: data['strMeasure13'] as String?,
        strMeasure14: data['strMeasure14'] as String?,
        strMeasure15: data['strMeasure15'] as String?,
        strImageSource: data['strImageSource'] as dynamic,
        strImageAttribution: data['strImageAttribution'] as dynamic,
        strCreativeCommonsConfirmed:
            data['strCreativeCommonsConfirmed'] as String?,
        dateModified: data['dateModified'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'idDrink': idDrink,
        'strDrink': strDrink,
        'strDrinkAlternate': strDrinkAlternate,
        'strTags': strTags,
        'strVideo': strVideo,
        'strCategory': strCategory,
        'strIBA': strIba,
        'strAlcoholic': strAlcoholic,
        'strGlass': strGlass,
        'strInstructions': strInstructions,
        'strInstructionsES': strInstructionsEs,
        'strInstructionsDE': strInstructionsDe,
        'strInstructionsFR': strInstructionsFr,
        'strInstructionsIT': strInstructionsIt,
        'strInstructionsZH-HANS': strInstructionsZhHans,
        'strInstructionsZH-HANT': strInstructionsZhHant,
        'strDrinkThumb': strDrinkThumb,
        'strIngredient1': strIngredient1,
        'strIngredient2': strIngredient2,
        'strIngredient3': strIngredient3,
        'strIngredient4': strIngredient4,
        'strIngredient5': strIngredient5,
        'strIngredient6': strIngredient6,
        'strIngredient7': strIngredient7,
        'strIngredient8': strIngredient8,
        'strIngredient9': strIngredient9,
        'strIngredient10': strIngredient10,
        'strIngredient11': strIngredient11,
        'strIngredient12': strIngredient12,
        'strIngredient13': strIngredient13,
        'strIngredient14': strIngredient14,
        'strIngredient15': strIngredient15,
        'strMeasure1': strMeasure1,
        'strMeasure2': strMeasure2,
        'strMeasure3': strMeasure3,
        'strMeasure4': strMeasure4,
        'strMeasure5': strMeasure5,
        'strMeasure6': strMeasure6,
        'strMeasure7': strMeasure7,
        'strMeasure8': strMeasure8,
        'strMeasure9': strMeasure9,
        'strMeasure10': strMeasure10,
        'strMeasure11': strMeasure11,
        'strMeasure12': strMeasure12,
        'strMeasure13': strMeasure13,
        'strMeasure14': strMeasure14,
        'strMeasure15': strMeasure15,
        'strImageSource': strImageSource,
        'strImageAttribution': strImageAttribution,
        'strCreativeCommonsConfirmed': strCreativeCommonsConfirmed,
        'dateModified': dateModified,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Drink].
  factory Drink.fromJson(String data) {
    return Drink.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Drink] to a JSON string.
  String toJson() => json.encode(toMap());

  Drink copyWith(
    String? idDrink,
    String? strDrink,
    dynamic strDrinkAlternate,
    dynamic strTags,
    dynamic strVideo,
    String? strCategory,
    dynamic strIba,
    String? strAlcoholic,
    String? strGlass,
    String? strInstructions,
    String? strInstructionsEs,
    String? strInstructionsDe,
    dynamic strInstructionsFr,
    String? strInstructionsIt,
    dynamic strInstructionsZhHans,
    dynamic strInstructionsZhHant,
    String? strDrinkThumb,
    String? strIngredient1,
    String? strIngredient2,
    String? strIngredient3,
    String? strIngredient4,
    dynamic strIngredient5,
    dynamic strIngredient6,
    dynamic strIngredient7,
    dynamic strIngredient8,
    dynamic strIngredient9,
    dynamic strIngredient10,
    dynamic strIngredient11,
    dynamic strIngredient12,
    dynamic strIngredient13,
    dynamic strIngredient14,
    dynamic strIngredient15,
    String? strMeasure1,
    String? strMeasure2,
    String? strMeasure3,
    String? strMeasure4,
    dynamic strMeasure5,
    dynamic strMeasure6,
    dynamic strMeasure7,
    dynamic strMeasure8,
    dynamic strMeasure9,
    dynamic strMeasure10,
    dynamic strMeasure11,
    dynamic strMeasure12,
    dynamic strMeasure13,
    dynamic strMeasure14,
    dynamic strMeasure15,
    dynamic strImageSource,
    dynamic strImageAttribution,
    String? strCreativeCommonsConfirmed,
    String? dateModified,
  ) {
    return Drink(
      idDrink: idDrink ?? this.idDrink,
      strDrink: strDrink ?? this.strDrink,
      strDrinkAlternate: strDrinkAlternate ?? this.strDrinkAlternate,
      strTags: strTags ?? this.strTags,
      strVideo: strVideo ?? this.strVideo,
      strCategory: strCategory ?? this.strCategory,
      strIba: strIba ?? this.strIba,
      strAlcoholic: strAlcoholic ?? this.strAlcoholic,
      strGlass: strGlass ?? this.strGlass,
      strInstructions: strInstructions ?? this.strInstructions,
      strInstructionsEs: strInstructionsEs ?? this.strInstructionsEs,
      strInstructionsDe: strInstructionsDe ?? this.strInstructionsDe,
      strInstructionsFr: strInstructionsFr ?? this.strInstructionsFr,
      strInstructionsIt: strInstructionsIt ?? this.strInstructionsIt,
      strInstructionsZhHans:
          strInstructionsZhHans ?? this.strInstructionsZhHans,
      strInstructionsZhHant:
          strInstructionsZhHant ?? this.strInstructionsZhHant,
      strDrinkThumb: strDrinkThumb ?? this.strDrinkThumb,
      strIngredient1: strIngredient1 ?? this.strIngredient1,
      strIngredient2: strIngredient2 ?? this.strIngredient2,
      strIngredient3: strIngredient3 ?? this.strIngredient3,
      strIngredient4: strIngredient4 ?? this.strIngredient4,
      strIngredient5: strIngredient5 ?? this.strIngredient5,
      strIngredient6: strIngredient6 ?? this.strIngredient6,
      strIngredient7: strIngredient7 ?? this.strIngredient7,
      strIngredient8: strIngredient8 ?? this.strIngredient8,
      strIngredient9: strIngredient9 ?? this.strIngredient9,
      strIngredient10: strIngredient10 ?? this.strIngredient10,
      strIngredient11: strIngredient11 ?? this.strIngredient11,
      strIngredient12: strIngredient12 ?? this.strIngredient12,
      strIngredient13: strIngredient13 ?? this.strIngredient13,
      strIngredient14: strIngredient14 ?? this.strIngredient14,
      strIngredient15: strIngredient15 ?? this.strIngredient15,
      strMeasure1: strMeasure1 ?? this.strMeasure1,
      strMeasure2: strMeasure2 ?? this.strMeasure2,
      strMeasure3: strMeasure3 ?? this.strMeasure3,
      strMeasure4: strMeasure4 ?? this.strMeasure4,
      strMeasure5: strMeasure5 ?? this.strMeasure5,
      strMeasure6: strMeasure6 ?? this.strMeasure6,
      strMeasure7: strMeasure7 ?? this.strMeasure7,
      strMeasure8: strMeasure8 ?? this.strMeasure8,
      strMeasure9: strMeasure9 ?? this.strMeasure9,
      strMeasure10: strMeasure10 ?? this.strMeasure10,
      strMeasure11: strMeasure11 ?? this.strMeasure11,
      strMeasure12: strMeasure12 ?? this.strMeasure12,
      strMeasure13: strMeasure13 ?? this.strMeasure13,
      strMeasure14: strMeasure14 ?? this.strMeasure14,
      strMeasure15: strMeasure15 ?? this.strMeasure15,
      strImageSource: strImageSource ?? this.strImageSource,
      strImageAttribution: strImageAttribution ?? this.strImageAttribution,
      strCreativeCommonsConfirmed:
          strCreativeCommonsConfirmed ?? this.strCreativeCommonsConfirmed,
      dateModified: dateModified ?? this.dateModified,
    );
  }

  @override
  bool operator ==(covariant Drink other) {
    if (identical(this, other)) return true;

    return other.idDrink == idDrink &&
        other.strDrink == strDrink &&
        other.strDrinkAlternate == strDrinkAlternate &&
        other.strTags == strTags &&
        other.strVideo == strVideo &&
        other.strCategory == strCategory &&
        other.strIba == strIba &&
        other.strAlcoholic == strAlcoholic &&
        other.strGlass == strGlass &&
        other.strInstructions == strInstructions &&
        other.strInstructionsEs == strInstructionsEs &&
        other.strInstructionsDe == strInstructionsDe &&
        other.strInstructionsFr == strInstructionsFr &&
        other.strInstructionsIt == strInstructionsIt &&
        other.strInstructionsZhHans == strInstructionsZhHans &&
        other.strInstructionsZhHant == strInstructionsZhHant &&
        other.strDrinkThumb == strDrinkThumb &&
        other.strIngredient1 == strIngredient1 &&
        other.strIngredient2 == strIngredient2 &&
        other.strIngredient3 == strIngredient3 &&
        other.strIngredient4 == strIngredient4 &&
        other.strIngredient5 == strIngredient5 &&
        other.strIngredient6 == strIngredient6 &&
        other.strIngredient7 == strIngredient7 &&
        other.strIngredient8 == strIngredient8 &&
        other.strIngredient9 == strIngredient9 &&
        other.strIngredient10 == strIngredient10 &&
        other.strIngredient11 == strIngredient11 &&
        other.strIngredient12 == strIngredient12 &&
        other.strIngredient13 == strIngredient13 &&
        other.strIngredient14 == strIngredient14 &&
        other.strIngredient15 == strIngredient15 &&
        other.strMeasure1 == strMeasure1 &&
        other.strMeasure2 == strMeasure2 &&
        other.strMeasure3 == strMeasure3 &&
        other.strMeasure4 == strMeasure4 &&
        other.strMeasure5 == strMeasure5 &&
        other.strMeasure6 == strMeasure6 &&
        other.strMeasure7 == strMeasure7 &&
        other.strMeasure8 == strMeasure8 &&
        other.strMeasure9 == strMeasure9 &&
        other.strMeasure10 == strMeasure10 &&
        other.strMeasure11 == strMeasure11 &&
        other.strMeasure12 == strMeasure12 &&
        other.strMeasure13 == strMeasure13 &&
        other.strMeasure14 == strMeasure14 &&
        other.strMeasure15 == strMeasure15 &&
        other.strImageSource == strImageSource &&
        other.strImageAttribution == strImageAttribution &&
        other.strCreativeCommonsConfirmed == strCreativeCommonsConfirmed &&
        other.dateModified == dateModified;
  }

  @override
  int get hashCode {
    return idDrink.hashCode ^
        strDrink.hashCode ^
        strDrinkAlternate.hashCode ^
        strTags.hashCode ^
        strVideo.hashCode ^
        strCategory.hashCode ^
        strIba.hashCode ^
        strAlcoholic.hashCode ^
        strGlass.hashCode ^
        strInstructions.hashCode ^
        strInstructionsEs.hashCode ^
        strInstructionsDe.hashCode ^
        strInstructionsFr.hashCode ^
        strInstructionsIt.hashCode ^
        strInstructionsZhHans.hashCode ^
        strInstructionsZhHant.hashCode ^
        strDrinkThumb.hashCode ^
        strIngredient1.hashCode ^
        strIngredient2.hashCode ^
        strIngredient3.hashCode ^
        strIngredient4.hashCode ^
        strIngredient5.hashCode ^
        strIngredient6.hashCode ^
        strIngredient7.hashCode ^
        strIngredient8.hashCode ^
        strIngredient9.hashCode ^
        strIngredient10.hashCode ^
        strIngredient11.hashCode ^
        strIngredient12.hashCode ^
        strIngredient13.hashCode ^
        strIngredient14.hashCode ^
        strIngredient15.hashCode ^
        strMeasure1.hashCode ^
        strMeasure2.hashCode ^
        strMeasure3.hashCode ^
        strMeasure4.hashCode ^
        strMeasure5.hashCode ^
        strMeasure6.hashCode ^
        strMeasure7.hashCode ^
        strMeasure8.hashCode ^
        strMeasure9.hashCode ^
        strMeasure10.hashCode ^
        strMeasure11.hashCode ^
        strMeasure12.hashCode ^
        strMeasure13.hashCode ^
        strMeasure14.hashCode ^
        strMeasure15.hashCode ^
        strImageSource.hashCode ^
        strImageAttribution.hashCode ^
        strCreativeCommonsConfirmed.hashCode ^
        dateModified.hashCode;
  }
}
