import 'package:get/get.dart';

class FavouriteController extends GetxController {
    RxList<String> fruitList = ['apple', 'banana', 'orange', 'grapes'].obs;
  List  tempList = [].obs;

  addToFavourite(String value) {
    tempList.add(value);
  }

  removeFromFavourite(String value) {
    tempList.remove(value);
  }
}