import 'package:flutter/material.dart';
import 'package:ui_food_app_pro/Models/discount.dart';

class list_view_reusable extends StatelessWidget {
  const list_view_reusable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: lstDiscount.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Stack(
            children: [
              Container(
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFFfe7f3c),
                ),
              ),
              const Positioned(
                top: 30,
                left: 8,
                child: Text(
                  "Get \n35% OFF \non the order",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
              ),
              Positioned(
                top: -15,
                right: -55,
                child: Image.network(
                  lstDiscount[index].image,
                  width: 240,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
