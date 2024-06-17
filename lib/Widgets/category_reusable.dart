import 'package:flutter/material.dart';

class categor_reusable extends StatelessWidget {
  const categor_reusable({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 70,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xfffee6d9),
              ),
            ),
            Positioned(
              top: 10,
              left: 15,
              child: Image.network(
                imageUrl,
                width: 50,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
