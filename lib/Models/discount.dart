class Discount {
  final int id;
  final String title;
  dynamic price;
  final String description;
  final String category;
  final String image;
  final dynamic rating;

  Discount({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory Discount.fromJson(Map<String, dynamic> json) {
    return Discount(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rating: json['rating']['rate'],
      //storage: json['storage'],
    );
  }
}

List<Discount> lstDiscount = [
  Discount(
    id: 1,
    title: "Get 10 % OFF discount on food",
    price: 909.95,
    description:
        " Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
    category: "Computer",
    image:
        "https://freepngimg.com/save/139206-food-plate-top-snack-view/528x525",
    rating: 4.5,
  ),
  Discount(
    id: 2,
    title: "E-Earphones",
    price: 15.99,
    description:
        "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",
    category: "Eearphones",
    image:
        "https://static.vecteezy.com/system/resources/previews/021/952/459/original/free-tasty-hamburger-on-transparent-background-free-png.png",
    rating: 1.9,
  ),
  Discount(
    id: 3,
    title: "Pass food",
    price: 55.99,
    description: "Christmas Day.",
    category: "Eearphones",
    image:
        "https://static.vecteezy.com/system/resources/previews/022/984/233/original/pizza-slice-transparent-free-png.png",
    rating: 8.5,
  ),
  Discount(
    id: 4,
    title: "E-Earphones",
    price: 15.99,
    description:
        "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",
    category: "Eearphones",
    image:
        "https://i.pinimg.com/originals/2d/00/49/2d00494689b0ca23de206c272c01a5be.png",
    rating: 1.9,
  ),
];
