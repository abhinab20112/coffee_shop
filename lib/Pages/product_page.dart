// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names

import 'package:coffee_shop/Pages/card_view.dart';
import 'package:coffee_shop/Pages/database.dart';
import 'package:flutter/material.dart';

List<CardData> Cdata = DataBase.data;
List<CardData> Cdata1 = DataBase.data1;

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.brown[300],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_sharp,
                color: Colors.brown[300],
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.brown[300],
              ),
              label: '',
            ),
          ],
          currentIndex: 0, // Set the initial tab index
          onTap: (int index) {
            // Handle tab selection here
          },
        ),
        body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 5),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Welcome, Kru !!!",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 107, 80, 72)),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 37.0),
                    child: CircleAvatar(
                      radius: 21, // Adjust the size as needed
                      backgroundImage: AssetImage(
                          "lib/assets/Satoro.jpg"), // Replace with your image asset
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 244, 239, 236),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'search here..',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              // ignore: prefer_const_constructors
              child: Text(
                "Promotion",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(219, 107, 80, 72)),
              ),
            ),
            Container(
              height: 245,
              // Set a fixed height for the horizontal list
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardView(
                    index: 0,
                    image: Cdata[0].image,
                    text: Cdata[0].text,
                  ),
                  CardView(
                    index: 1,
                    image: Cdata[1].image,
                    text: Cdata[1].text,
                  ),
                  CardView(
                    index: 2,
                    image: Cdata[2].image,
                    text: Cdata[2].text,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              // ignore: prefer_const_constructors
              child: Text(
                "Most Popular",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(219, 107, 80, 72)),
              ),
            ),
            Container(
              height: 245,
              // Set a fixed height for the horizontal list
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardView(
                    index: 3,
                    image: Cdata[3].image,
                    text: Cdata[3].text,
                  ),
                  CardView(
                    index: 4,
                    image: Cdata[4].image,
                    text: Cdata[4].text,
                  ),
                  CardView(
                    index: 5,
                    image: Cdata[5].image,
                    text: Cdata[5].text,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              // ignore: prefer_const_constructors
              child: Text(
                "Cold Coffee",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(219, 107, 80, 72)),
              ),
            ),
            Container(
              height: 245,
              // Set a fixed height for the horizontal list
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardView(
                    index: 6,
                    image: Cdata1[0].image,
                    text: Cdata1[0].text,
                  ),
                  CardView(
                    index: 7,
                    image: Cdata1[1].image,
                    text: Cdata1[1].text,
                  ),
                  CardView(
                    index: 8,
                    image: Cdata1[2].image,
                    text: Cdata1[2].text,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              // ignore: prefer_const_constructors
              child: Text(
                "Espresso",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(219, 107, 80, 72)),
              ),
            ),
            Container(
              height: 245,
              // Set a fixed height for the horizontal list
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CardView(
                    index: 9,
                    image: Cdata1[3].image,
                    text: Cdata1[3].text,
                  ),
                  CardView(
                    index: 10,
                    image: Cdata1[4].image,
                    text: Cdata1[4].text,
                  ),
                  CardView(
                    index: 11,
                    image: Cdata1[5].image,
                    text: Cdata1[5].text,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
