import 'package:flutter/material.dart';

import 'category_button_widget.dart';

class TopButtonWidget extends StatelessWidget {
  const TopButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: CategoryButton(
            icon: Icons.hotel,
            title: 'Hotel',
            isSelected: true,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: CategoryButton(
            icon: Icons.home_outlined,
            title: 'Homestay',
            isSelected: false,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: CategoryButton(
            icon: Icons.apartment,
            title: 'Apart',
            isSelected: false,
          ),
        ),
      ],
    );
  }
}
