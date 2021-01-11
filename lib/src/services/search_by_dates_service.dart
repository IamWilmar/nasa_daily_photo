import 'package:flutter/material.dart';

class SearchByDatesService extends ChangeNotifier{
  String _startDate;
  String get startDate => this._startDate;
  set startDate(String startDate) {
    this._startDate = startDate;
    notifyListeners();
  }

  String _endDate;
  String get endDate => this._endDate;
  set endDate(String endDate) {
    this._endDate = endDate;
    notifyListeners();
  }
}