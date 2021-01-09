import 'package:flutter/material.dart';
import 'package:nasa_daily_photo/src/models/nasa_daily_photo_model.dart';

class DrawerImageContent extends StatelessWidget {
  DrawerImageContent({@required this.photoInfo});
  final NasaDailyPhotoResponse photoInfo;
  final TextStyle titleFont = TextStyle(fontSize: 30, color: Colors.white);
  final TextStyle explanationFont =
      TextStyle(fontSize: 18, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        DrawerImage(photoInfo: photoInfo),
        Container(
          margin: EdgeInsets.only(
              top: width / 15, left: width / 3, right: 15, bottom: 30),
          alignment: Alignment.bottomLeft,
          width: width,
          height: height / 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(photoInfo.title, style: titleFont),
              ExplanationDrawer(
                photoInfo: photoInfo,
                explanationFont: explanationFont,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DrawerImage extends StatelessWidget {
  @override
  const DrawerImage({@required this.photoInfo});
  final NasaDailyPhotoResponse photoInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: FadeInImage(
          placeholder: AssetImage('assets/img/giphy.gif'),
          image: NetworkImage(photoInfo.url),
        ),
      ),
    );
  }
}

class ExplanationDrawer extends StatelessWidget {
  const ExplanationDrawer({
    Key key,
    @required this.photoInfo,
    @required this.explanationFont,
  }) : super(key: key);

  final NasaDailyPhotoResponse photoInfo;
  final TextStyle explanationFont;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
        child: Text(photoInfo.explanation,
            textAlign: TextAlign.justify, style: explanationFont),
      ),
    );
  }
}
