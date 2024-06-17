import 'package:flutter/material.dart';
import 'package:ui_food_app_pro/constant.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundDetailColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          child: Icon(Icons.arrow_back)),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'My Order',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Burger Queen',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'Cooking time: 30 min',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.flatware_sharp,
                          color: Colors.redAccent,
                        ),
                        Text(
                          '  Drinking now',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Family-humbergor',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'American fast food burger',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text('\$ 15.00',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mushroom sweet burger',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'American fast food burger',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text('\$ 15.00',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 290,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$ 30.00',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tax & Fee',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$ 2.50',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery fee',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '\$ 1.50',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey.withOpacity(0.3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$ 33.50',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 60,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFfe7f3c),
                  ),
                  child: Center(
                    child: Text(
                      'Checkout',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
