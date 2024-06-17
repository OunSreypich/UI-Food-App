class Foods {
  final int id;
  final String title;
  dynamic price;
  final String description;
  final String category;
  final String image;
  final String time;
  final dynamic rating;

  Foods({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.time,
    required this.rating,
  });

  factory Foods.fromJson(Map<String, dynamic> json) {
    return Foods(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
      time: json['time'],
      rating: json['rating']['rate'],
      //storage: json['storage'],
    );
  }
}

List<Foods> lstFoods = [
  Foods(
    id: 1,
    title: "Burger Queen",
    price: 909.95,
    description:
        " Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
    category: "Computer",
    image:
        "https://recipes.net/wp-content/uploads/2023/11/how-to-cook-hamburgers-in-the-oven-without-a-rack-1700499240.jpg",
    time: "1h 20 min",
    rating: 4.5,
  ),
  Foods(
    id: 2,
    title: "Fa-Humburger",
    price: 15.99,
    description:
        "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",
    category: "Eearphones",
    image: "https://img.pikbest.com/origin/09/35/02/93QpIkbEsTGeA.png!sw800",
    time: "15-25 min",
    rating: 1.9,
  ),
  Foods(
    id: 3,
    title: "Pass food",
    price: 909.95,
    description:
        " Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
    category: "Computer",
    image:
        "https://recipes.net/wp-content/uploads/2023/11/how-to-cook-hamburgers-in-the-oven-without-a-rack-1700499240.jpg",
    time: "13-20 min",
    rating: 3.5,
  ),
  Foods(
    id: 4,
    title: "Humburger King",
    price: 55.99,
    description: "Christmas Day.",
    category: "Eearphones",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJGdh9mwpn6e1w58NlOWeV-EVhx3knh3liIGlhhIAw0OGVPWxWSiS8v9S17toINWDyylE&usqp=CAU",
    time: "25-30 min",
    rating: 8.5,
  ),
  Foods(
    id: 5,
    title: "Friends fries",
    price: 15.99,
    description:
        "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",
    category: "Eearphones",
    image:
        "https://www.eatthis.com/wp-content/uploads/sites/4/2022/06/fast-food-assortment-soda.jpg?quality=82&strip=all",
    time: "1h 9 min",
    rating: 2.9,
  ),
  Foods(
    id: 6,
    title: "Mummy King",
    price: 15.99,
    description:
        "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",
    category: "Eearphones",
    image:
        "https://s.yimg.com/ny/api/res/1.2/rOwd2DltGAW3mpk5D_ejPA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTM1OQ--/https://media.zenfs.com/en/insidermonkey.com/72195f0d02744773cab46468d2caf268",
    time: "20-25 min",
    rating: 3.9,
  ),
];
