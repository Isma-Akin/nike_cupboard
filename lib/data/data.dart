import 'package:flutter/material.dart';

class ShoeDataModel {
  int id;
  String name;
  String description;
  String price;
  String image;
  String tagLine;
  Color backgroundColor;

  ShoeDataModel({
  required this.backgroundColor,
  required this.description,
  required this.id,
  required this.image,
  required this.name,
  required this.price,
  required this.tagLine,
  });
}
List<ShoeDataModel> shoesdata = [
  ShoeDataModel(
    id: 1,
    name: "Nike Air Pegasus",
    description: "A shoe is an item of footwear intended to protect and comfort the human foot",
    price: "180.0",
    image: "assets/images/1.png",
    tagLine: "Footwear to last you a lifetime.",
    backgroundColor: Color(0xfffeae9),
  ),
  ShoeDataModel(
    id: 2,
    name: "Nike ZoomX",
    description: "A shoe is an item of footwear intended to protect and comfort the human foot",
    price: "200.0",
    image: "assets/images/3.png",
    tagLine: "Designed for the freedom to walk.",
    backgroundColor: Color(0xffe9eff2),
  ),
  ShoeDataModel(
    id: 3,
    name: "Nike Air Light",
    description: "A shoe is an item of footwear intended to protect and comfort the human foot",
    price: "380.0",
    image: "assets/images/1.png",
    tagLine: "Go faster, go stronger, never stop.",
    backgroundColor: Color(0xfffeae9),
  ), ShoeDataModel(
    id: 4,
    name: "Nike Air Light",
    description: "A shoe is an item of footwear intended to protect and comfort the human foot",
    price: "380.0",
    image: "assets/images/3.png",
    tagLine: "Talk the talk, walk the walk on life.",
    backgroundColor: Color(0xffe9eff2),
  )
];