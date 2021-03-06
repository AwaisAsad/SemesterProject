import 'package:flutter/foundation.dart';

class product with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final double price;
  final String imgUrl;
  bool isFavourite;

  product({
      required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imgUrl,
      this.isFavourite= false,
      });
  void toggleFavouriteStatus(){
    isFavourite= !isFavourite;
    notifyListeners();
  }
}