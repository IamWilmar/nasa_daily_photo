import 'package:flutter/material.dart';
import 'package:nasa_daily_photo/src/models/nasa_daily_photo_model.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

final _URL_NASA = 'https://api.nasa.gov/planetary';
final _APIKEY = 'UJYX13qe8UeTFfPlhTXXSu6TU3LOjgNvw7s2OnZA';

class NasaDailyPhotoService extends ChangeNotifier {
  NasaDailyPhotoResponse dailyPhotoData;

  NasaDailyPhotoService() {
    this.getPhotoDataOfTheDay();
  }

  getPhotoDataOfTheDay() async {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);
    final url = '$_URL_NASA/apod?date=$formatted&api_key=$_APIKEY';
    final resp = await http.get(url);
    final nasaResponse = nasaDailyPhotoResponseFromJson(resp.body);
    this.dailyPhotoData = nasaResponse;
    notifyListeners();
  }
  
}
