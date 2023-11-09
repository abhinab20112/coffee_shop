// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:coffee_shop/Pages/product_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/coffee_frontpage.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 2, sigmaY: 2), // Adjust the blur intensity as needed
            child: Container(
              color:
                  Colors.black.withOpacity(0), // Adjust the opacity as needed
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 75, 50, 41).withOpacity(0.8),
                Colors.transparent
              ],
              stops: [0.0, 0.3],
            )),
          ),

          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 36.0, top: 110.0), // Adjust padding as needed
              child: Text(
                "\"Better \n   latte \n     than \n  never...\"",
                style: TextStyle(
                  fontSize: 46,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 440, left: 90, right: 93),
            child: Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProductPage()));
                  },
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 15, bottom: 15, left: 2, right: 7),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.coffee,
                          color: Colors.brown[400],
                        ),
                        Text(
                          "Get started",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown[400]),
                        )
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
