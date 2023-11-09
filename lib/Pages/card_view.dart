// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffee_shop/Pages/product_details_view.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String image;
  final String text;
  final int index;

  const CardView({
    super.key,
    required this.image,
    required this.index,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      // ignore: sized_box_for_whitespace
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(25),
        // ignore: sized_box_for_whitespace
        child: Container(
          width: 250,
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage("lib/assets/$image.jpg"),
                        fit: BoxFit.fitWidth)),
              ),
              Row(
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "$text ",
                        style: TextStyle(
                          color: Colors.brown[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                  FloatingActionButton(
                    onPressed: () {
                     Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductDetailView(index: index)));
                    },
                    mini: true,
                    elevation: 0,
                    child: Icon(Icons.arrow_forward),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
