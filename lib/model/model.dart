import 'package:flutter/foundation.dart';

class Model {
  final String imagePath;
  final String title;
  final String price;
  final String type;
  final String location;
  Model({
    @required this.imagePath,
    @required this.title,
    @required this.price,
    @required this.type,
    @required this.location,
  });
}

List<Model> modelItem = [
  Model(
      imagePath: 'assets/images/building.jpg',
      title: 'Mercedes Benz S-class',
      price: '129999',
      type: 'new',
      location: 'California'),
  Model(
      imagePath: 'assets/images/building.jpg',
      title: 'Mercedes Benz S-class',
      price: '129999',
      type: 'new',
      location: 'California'),
  Model(
      imagePath: 'assets/images/building.jpg',
      title: 'Mercedes Benz S-class',
      price: '129999',
      type: 'new',
      location: 'California'),
  Model(
      imagePath: 'assets/images/building.jpg',
      title: 'Mercedes Benz S-class',
      price: '129999',
      type: 'new',
      location: 'California'),
];
