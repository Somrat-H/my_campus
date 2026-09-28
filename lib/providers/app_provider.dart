import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  int _selectedBottomNavIndex = 0;
  int _selectedCalendarDay = 26;
  int _selectedQuizOption = 1;
  double _sliderValue = 70.0;

  int get selectedBottomNavIndex => _selectedBottomNavIndex;
  int get selectedCalendarDay => _selectedCalendarDay;
  int get selectedQuizOption => _selectedQuizOption;
  double get sliderValue => _sliderValue;

  void setBottomNavIndex(int index) {
    _selectedBottomNavIndex = index;
    notifyListeners();
  }

  void setCalendarDay(int day) {
    _selectedCalendarDay = day;
    notifyListeners();
  }

  void setQuizOption(int option) {
    _selectedQuizOption = option;
    notifyListeners();
  }

  void setSliderValue(double value) {
    _sliderValue = value;
    notifyListeners();
  }
}