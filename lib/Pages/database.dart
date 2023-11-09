class DataBase {
  // ignore: unused_local_variable
  static List<CardData> data = [
    CardData("coffee1", "Buy 2 get 10% off", "0"),
    CardData(
      "coffee2",
      "Get 20% off on sunday ",
      "0",
    ),
    CardData(
      "coffee3",
      "Coupons worth \$500",
      "0",
    ),
    CardData(
      "popularCoffee1",
      "Cappucino",
      "12.99",
    ),
    CardData(
      "popularCoffee2",
      "Latte",
      "22.99",
    ),
    CardData(
      "popularCoffee3",
      "Cold brew",
      "15.99",
    ),
   
  ];
  static List<CardData> data1 =[ CardData(
      "ColdCoffee1",
      "Affogato",
      "12.99",
    ),
    CardData(
      "ColdCoffee2",
      "Mocha Frappuccino",
      "15.99",
    ),
    CardData(
      "ColdCoffee3",
      "Mazagran",
      "22.99",
    ),
    CardData(
      "espresso1",
      "Lungo",
      "12.99",
    ),
    CardData(
      "espresso2",
      "Cortado",
      "31.99",
    ),
    CardData(
      "espresso3",
      "Ristretto",
      "15.99",
    ),];
}

class CardData {
  String image = "";
  String text = "";
  String price = "";
  CardData(String image, String text, String price) {
    // ignore: prefer_initializing_formals
    this.image = image;
    // ignore: prefer_initializing_formals
    this.text = text;
    // ignore: prefer_initializing_formals
    this.price = price;
  }
}
