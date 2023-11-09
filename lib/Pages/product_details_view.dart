// ignore_for_file: non_constant_identifier_names

import 'package:coffee_shop/Pages/database.dart';
import 'package:coffee_shop/Pages/product_details.dart';
import 'package:flutter/material.dart';
List<CardData> Cdata=DataBase.data;
List<CardData> Cdata1=DataBase.data1;
class ProductDetailView extends StatelessWidget {
  final int index;
  const ProductDetailView({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return ProductDetail(
      image:index>=6?Cdata1[index-6].image:Cdata[index].image ,
      text:index>=6?Cdata1[index-6].text:Cdata[index].text ,
      price: index>=6?Cdata1[index-6].price:Cdata[index].price,
    );
  }
}