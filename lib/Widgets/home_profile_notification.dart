import 'package:flutter/material.dart';

class profile_and_notification extends StatelessWidget {
  const profile_and_notification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.2),
              child: Image.network(
                  'https://www.pngitem.com/pimgs/m/146-1468843_profile-icon-orange-png-transparent-png.png'),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(70),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.notification_add_outlined,
                size: 30,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
