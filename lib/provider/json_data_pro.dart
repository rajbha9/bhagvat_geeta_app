import 'dart:convert';

import 'package:bhagvat_geeta/models/json_data_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class JsonDataProvider extends ChangeNotifier {
  List<JsonDataModel> newData = [];

  Future<void> getGeetaData() async {
    String getData = await rootBundle.loadString('asset/json/geeta_data.json');
    Map geeta = jsonDecode(getData);
    List<dynamic> allData = geeta["geeta"];
    newData = allData
        .map(
          (e) => JsonDataModel(
            id: e['id'],
            chapterNumber: e['chapter_number'],
            versesCount: e['verses_count'],
            name: e['name'],
            nameMeaning: e['name_meaning'],
            nameTranslation: e['name_translation'],
            chapterSummary: e['chapter_summary'],
            chapterSummaryHindi: e['chapter_summary_hindi'],
          ),
        )
        .toList();
    notifyListeners();
  }
}
