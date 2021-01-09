import 'package:flutter/material.dart';
import 'package:nasa_daily_photo/src/models/nasa_daily_photo_model.dart';

class NasaDailyPhotoService extends ChangeNotifier{
  List<NasaDailyPhotoResponse> photoData = [];

  NasaDailyPhotoService(){
    this.getPhotoData();
  }

  getPhotoData(){
    print('Loading');
  }

}