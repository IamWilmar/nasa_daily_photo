import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nasa_daily_photo/src/models/nasa_daily_photo_model.dart';
import 'package:nasa_daily_photo/src/widgets/actions_bar.dart';
import 'package:nasa_daily_photo/src/widgets/separation_line.dart';

class ContentOverBackground extends StatelessWidget {
  ContentOverBackground({@required this.photoInfo});
  final NasaDailyPhotoResponse photoInfo;
  final TextStyle titleFont = TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 30);
  final TextStyle copyrightFont = TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 15);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(photoInfo.date);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 3.4, bottom: MediaQuery.of(context).size.height/7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(photoInfo.title, style: titleFont, textAlign: TextAlign.end),
          SeparationLine(width: width, color: Colors.white),
          Text( photoInfo.copyright != null ? 'copyright: ${photoInfo.copyright}' : 'copyright: unknown', style: copyrightFont),
          Text(formatted, style: copyrightFont),
          ActionsBar(),
        ],
      ),
    );
  }
}