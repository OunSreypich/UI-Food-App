import 'package:flutter/material.dart';
import 'package:ui_food_app_pro/constant.dart';

class search_filtter_reusable extends StatelessWidget {
  const search_filtter_reusable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              label: Text('search'),
              hintText: 'Search food',
              hintStyle: TextStyle(color: Colors.black54),
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.2),
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: kPrimaryColor.withOpacity(0.8),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
