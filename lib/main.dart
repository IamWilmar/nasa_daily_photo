import 'package:flutter/material.dart';
import 'package:nasa_daily_photo/src/pages/home_page.dart';
import 'package:nasa_daily_photo/src/services/nasa_daily_photo_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NasaDailyPhotoService())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nasa Daily Photo',
        initialRoute: HomePage.routeName,
        routes: {
          HomePage.routeName : (BuildContext context) => HomePage(),
        }
      ),
    );
  }
}