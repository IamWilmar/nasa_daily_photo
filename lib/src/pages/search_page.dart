import 'package:flutter/material.dart';
import 'package:nasa_daily_photo/src/widgets/separation_line.dart';

class SearchPage extends StatelessWidget {
  static final String routeName = "searchPage";
  final TextStyle startSearchFont =
      TextStyle(fontSize: 40.0, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    //TODO: add a date picker
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Start Searching", style: startSearchFont),
            SeparationLine(width: 450, color: Colors.black),
            FlatButton(
              child: Text('start date'),
              onPressed: () => _selectDate(context, 'start date'),
            ),
             FlatButton(
              child: Text('end date'),
              onPressed: () => _selectDate(context, 'end date'),
            ),
          ],
        ),
      ),
    );
  }
}

_selectDate(BuildContext context, String buttonName) async {
  final DateTime picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(), // Refer step 1
    firstDate: DateTime(1995, 06, 16),
    lastDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
  );
}
