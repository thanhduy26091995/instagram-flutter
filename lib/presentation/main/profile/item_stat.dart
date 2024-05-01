import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_text.dart';

class StatItem extends StatelessWidget {
  final int value;
  final String title;

  const StatItem({super.key, required this.value, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText.primary(
          value.toString(),
          fontWeight: FontWeightType.semiBold,
          fontSize: 16,
        ),
        AppText.primary(
          title,
          fontWeight: FontWeightType.regular,
          fontSize: 13,
        ),
      ],
    );
  }
}
