import 'package:flutter/material.dart';
import 'package:ui_food_app_pro/Models/foods.dart';
import 'package:ui_food_app_pro/screens/detail_screen.dart';

import '../Models/category.dart';
import '../Widgets/category_reusable.dart';
import '../Widgets/home_profile_notification.dart';
import '../Widgets/list_view_home.dart';
import '../Widgets/search_Textfield_reusable.dart';
import '../constant.dart';
import 'favorite.dart';
import 'order_screen.dart';
import 'profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    MyIndexScreen(),
    FavoriteScreen(),
    OrderScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        selectedIconTheme: const IconThemeData(
          size: 28,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 28,
        ),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
      body: _pages[_selectedIndex],
    );
  }
}

class MyIndexScreen extends StatefulWidget {
  const MyIndexScreen({super.key});

  @override
  State<MyIndexScreen> createState() => _MyIndexScreenState();
}

class _MyIndexScreenState extends State<MyIndexScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              profile_and_notification(),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Current Location',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              search_filtter_reusable(),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('See all', style: TextStyle(color: Colors.black)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (final category in lstCategory)
                    categor_reusable(
                        title: category.title, imageUrl: category.imageUrl),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 145,
                child: list_view_reusable(),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top restaurants',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text('See all', style: TextStyle(color: Colors.black)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: GridView.builder(
                    itemCount: lstFoods.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 15.0,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      DetailScreen(
                                ind: index,
                              ),
                              transitionDuration:
                                  Duration(seconds: 1), // Add delay here
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: Offset(1.0, 0.0),
                                    end: Offset(0.0, 0.0),
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.2), // Shadow color
                                spreadRadius: 1, // Spread radius
                                blurRadius: 1, // Blur radius
                                offset:
                                    Offset(0, 1), // Offset in x and y direction
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 115,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      child: Hero(
                                        tag: 'hero-image',
                                        child: Image.network(
                                          lstFoods[index].image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 23,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 5),
                                child: Text(
                                  lstFoods[index].time,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  lstFoods[index].title.toString(),
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 18,
                                        ),
                                        SizedBox(width: 5),
                                        Text(lstFoods[index].rating.toString()),
                                      ],
                                    ),
                                    Text('100-Reviews'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
