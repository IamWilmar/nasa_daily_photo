import 'package:flutter/material.dart';
import 'package:nasa_daily_photo/src/models/nasa_daily_photo_model.dart';
import 'package:nasa_daily_photo/src/services/nasa_daily_photo_service.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  static final String routeName = 'homePage';
  @override
  Widget build(BuildContext context) {
    final nasaDaily = Provider.of<NasaDailyPhotoService>(context);
    return Scaffold(
      body: Center(
        child: Text('Main Page'),
     ),
   );
  }
}