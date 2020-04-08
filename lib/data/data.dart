import 'package:flutter_challenge/model/explore_model.dart';
import 'package:flutter_challenge/model/item_model.dart';

List<exploreModel> getExploreData() {
  List<exploreModel> exploredata = new List();
  exploreModel exModel = new exploreModel();
  //1
  exModel.productName = "Marigold";
  exModel.price = "\$25";
  exModel.size = "Medium";
  exModel.color = "Yellow";
  exModel.imgURL = "images/marigold.png";
  exploredata.add(exModel);
  exModel = new exploreModel();

  //2
  exModel.productName = "Lavender";
  exModel.price = "\$25";
  exModel.size = "Big";
  exModel.color = "Violet";
  exModel.imgURL = "images/lavender.png";
  exploredata.add(exModel);
  exModel = new exploreModel();

  //3
  exModel.productName = "Rose";
  exModel.price = "\$50";
  exModel.size = "Medium";
  exModel.color = "Red,Pink";
  exModel.imgURL = "images/rose.png";
  exploredata.add(exModel);
  exModel = new exploreModel();

  //4
  exModel.productName = "Lily";
  exModel.price = "\$30";
  exModel.size = "Medium";
  exModel.color = "White";
  exModel.imgURL = "images/lily.png";
  exploredata.add(exModel);
  exModel = new exploreModel();

  //5
  exModel.productName = "Sunflower";
  exModel.price = "\$50";
  exModel.size = "Medium";
  exModel.color = "Yellow";
  exModel.imgURL = "images/sunflower.png";
  exploredata.add(exModel);
  exModel = new exploreModel();

  return exploredata;
}

List<itemModel> getItemData() {
  List<itemModel> itemdata = new List();
  itemModel itModel = new itemModel();
  //1
  itModel.price = "\$25";
  itModel.productName = "Marigold";
  itModel.imgURL = "images/marigold.png";
  itemdata.add(itModel);
  itModel = new itemModel();

  //2
  itModel.price = "\$25";
  itModel.productName = "Lavender";
  itModel.imgURL = "images/lavender.png";
  itemdata.add(itModel);
  itModel = new itemModel();

  //3
  itModel.price = "\$50";
  itModel.productName = "Rose";
  itModel.imgURL = "images/rose.png";
  itemdata.add(itModel);
  itModel = new itemModel();

  //4
  itModel.price = "\$30";
  itModel.productName = "Lily";
  itModel.imgURL = "images/lily.png";
  itemdata.add(itModel);
  itModel = new itemModel();

  //5
  itModel.price = "\$50";
  itModel.productName = "Sunflower";
  itModel.imgURL = "images/sunflower.png";
  itemdata.add(itModel);
  itModel = new itemModel();

  return itemdata;
}
