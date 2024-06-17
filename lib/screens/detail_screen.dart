import 'package:flutter/material.dart';
import '../Models/foods.dart';
import '../constant.dart';
import 'order_screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key? Key,
    required this.ind,
  }) : super(key: Key);
  final int ind;
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 1,
                width: double.infinity,
                color: Colors.yellow,
                child: Stack(
                  children: [
                    Hero(
                      tag:
                          'hero-image', // Ensure this tag matches with the source screen
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                NetworkImage('${lstFoods[widget.ind].image}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 20,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.7),
                            ),
                            child: Icon(Icons.arrow_back)),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 250,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: const BoxDecoration(
                      color: kbackgroundDetailColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(48),
                        topRight: Radius.circular(48),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: Text(
                            '${lstFoods[widget.ind].title}',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          'wait for Cooking time: 30 min',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.flatware_sharp,
                              color: Colors.redAccent,
                            ),
                            Text(
                              '  Eating now',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 65,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('${lstFoods[widget.ind].rating}'),
                                      ],
                                    ),
                                    Text('Rating'),
                                  ],
                                ),
                                Expanded(
                                  child: VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 1,
                                    endIndent: 5,
                                    indent: 1,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.reviews_outlined,
                                          color: Colors.pinkAccent,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('1k+'),
                                      ],
                                    ),
                                    Text('Reviews'),
                                  ],
                                ),
                                Expanded(
                                  child: VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 1,
                                    endIndent: 5,
                                    indent: 1,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timer_outlined,
                                          color: Colors.black38,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('20 min'),
                                      ],
                                    ),
                                    Text('Delivery'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${lstFoods[widget.ind].description}',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.black54),
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Specials',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: double.infinity,
                            // color: Colors.yellow,
                            child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  OrderScreen()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          color: Colors.white,
                                        ),
                                        width: double.infinity,
                                        height: 110,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.5,
                                              height: double.infinity,
                                              // color: Colors.blue,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Burger family',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      'Hello This is my Description of food here of food here This is my Description',
                                                      maxLines: 2,
                                                    ),
                                                    Text(
                                                      '\$ 15.00 ',
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.green,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.35,
                                                height: double.infinity,
                                                // color: Colors.red,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(5.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      15.0,
                                                    ),
                                                    child: Image.network(
                                                      'https://recipes.net/wp-content/uploads/2023/11/how-to-cook-hamburgers-in-the-oven-without-a-rack-1700499240.jpg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
