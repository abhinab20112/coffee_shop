// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:coffee_shop/Pages/product_page.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String image;
  final String text;
  final String price;
  const ProductDetail(
      {super.key,
      required this.image,
      required this.text,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(children: [
          Container(
            height: 330,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                image: DecorationImage(
                    image: AssetImage("lib/assets/$image.jpg"),
                    fit: BoxFit.fitHeight)),
          ),
          Container(
            padding: EdgeInsets.only(left: 5, top: 25),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductPage()));
              },
              elevation: 3,
              // mini: true,
              // ignore: sort_child_properties_last
              child: Icon(Icons.arrow_back),
              backgroundColor: Color.fromARGB(33, 84, 83, 83),
            ),
          ),
          FavColor(),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 280,
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "$text",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(219, 107, 80, 72)),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "$price \$",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(185, 107, 80, 72)),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4),
          child: Row(
            children: [
              Icon(
                Icons.star_rounded,
                color: Colors.amber[400],
                size: 28,
              ),
              Text(
                "4.5",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(185, 107, 80, 72)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Text(
                  "229 reviews",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(81, 107, 80, 72)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 340,
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            "Description",
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(219, 107, 80, 72)),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          width: 340,
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            "A freshly pulled shot of espresso layered with steamed whole milk and thick rich foam to offer a luxurious velvety texture and complex aroma.",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(111, 107, 80, 72)),
          ),
        ),
        Container(
          width: 340,
          padding: EdgeInsets.only(
            top: 5,
          ),
          child: Text(
            " ___________________________ ",
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(150, 107, 80, 72)),
          ),
        ),
        Container(
          width: 340,
          padding: EdgeInsets.only(
            top: 12,
          ),
          child: Text(
            "Select size",
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(219, 107, 80, 72)),
          ),
        ),
        Row(
          children: [
            Container(
                padding:
                    EdgeInsets.only(top: 10, left: 35, right: 30, bottom: 6),
                child: Icon(
                  Icons.coffee_rounded,
                  size: 30,
                  color: Color.fromARGB(120, 107, 80, 72),
                )),
            Container(
                padding:
                    EdgeInsets.only(top: 10, left: 35, right: 30, bottom: 6),
                child: Icon(
                  Icons.coffee_rounded,
                  size: 50,
                  color: Color.fromARGB(219, 107, 80, 72),
                )),
            Container(
                padding:
                    EdgeInsets.only(top: 10, left: 35, right: 30, bottom: 6),
                child: Icon(
                  Icons.coffee_rounded,
                  size: 80,
                  color: Color.fromARGB(120, 107, 80, 72),
                ))
          ],
        ),
        Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 244, 239, 236),
              borderRadius: BorderRadius.circular(20)),
          child: TextButton(
            onPressed: () {},
            child: Center(
                child: Text(
              "Buy Now",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
            )),
          ),
        )
      ],
    ));
  }
}

class FavColor extends StatefulWidget {
  const FavColor({super.key});

  @override
  State<FavColor> createState() => _FavColorState();
}

class _FavColorState extends State<FavColor> {
  bool fav = false;
  Color favColor = Colors.white;

  void ChangeFavColour() {
    setState(() {
      fav = !fav;
      favColor = fav ? Colors.red : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 300, top: 25),
      child: FloatingActionButton(
        onPressed: ChangeFavColour,
        elevation: 3,
        // ignore: sort_child_properties_last
        child: Icon(
          Icons.favorite,
          color: favColor,
        ),
        backgroundColor: Color.fromARGB(33, 84, 83, 83),
      ),
    );
  }
}
