import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  bool locks = true;
  bool fp = false;
  bool lock = true;

  void chlocks(value)
  {
    locks = value;
    notifyListeners();
  }
  void chfp(value)
  {
    fp = value;
    notifyListeners();
  }
  void chlock(value)
  {
    lock = value;
    notifyListeners();
  }
}