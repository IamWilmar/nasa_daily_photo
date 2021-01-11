import 'package:flutter/material.dart';
import 'package:nasa_daily_photo/src/pages/search_page.dart';

class ActionsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0, top: 20.0),
      child: Wrap(
        spacing: 5.0,
        direction: Axis.vertical,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SearchPage.routeName);
            },
            icon: CustomActionIcon(icon: Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: CustomActionIcon(icon: Icons.bookmark),
          ),
          IconButton(
            onPressed: () {},
            icon: CustomActionIcon(icon: Icons.info),
          ),
        ],
      ),
    );
  }
}

class CustomActionIcon extends StatelessWidget {
  final IconData icon;
  const CustomActionIcon({@required this.icon});
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 40,
      color: Colors.white.withOpacity(0.8),
    );
  }
}
