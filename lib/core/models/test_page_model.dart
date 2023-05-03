import 'package:flutter/cupertino.dart';

class TestPageModel with ChangeNotifier {
  //BuildContext context;
  PageController controller = PageController();
  int selectedIndex = 0;

  // TestPageModel(this.context) {
  //   _
  // }

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}