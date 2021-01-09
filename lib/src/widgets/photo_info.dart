import 'package:flutter/material.dart';
import 'package:nasa_daily_photo/src/models/nasa_daily_photo_model.dart';
import 'package:nasa_daily_photo/src/widgets/content_over_background.dart';

class PhotoInfo extends StatelessWidget {
  final NasaDailyPhotoResponse photoInfo;
  const PhotoInfo(this.photoInfo);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(photoInfo: photoInfo),
        ContentOverBackground(photoInfo: photoInfo),
      ],
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({@required this.photoInfo});
  final NasaDailyPhotoResponse photoInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: FadeInImage(
        fit: BoxFit.fitHeight,
        placeholder: AssetImage('assets/img/giphy.gif'),
        image: NetworkImage(photoInfo.url),
      ),
    );
  }
}
