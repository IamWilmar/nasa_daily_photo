import 'package:flutter/material.dart';
import 'package:nasa_daily_photo/src/services/nasa_daily_photo_service.dart';
import 'package:nasa_daily_photo/src/widgets/drawer_content.dart';
import 'package:nasa_daily_photo/src/widgets/photo_info.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'homePage';
  @override
  Widget build(BuildContext context) {
    final nasaDaily = Provider.of<NasaDailyPhotoService>(context);
    return Scaffold(
      endDrawer: nasaDaily.dailyPhotoData != null
               ? DrawerImageContent(photoInfo: nasaDaily.dailyPhotoData)
               : CircularProgressIndicator(),
      body: nasaDaily.dailyPhotoData != null
          ? PhotoInfo(nasaDaily.dailyPhotoData)
          : CircularProgressIndicator(),
    );
  }
}

