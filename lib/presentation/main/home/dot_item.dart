import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_color.dart';

class DotItem extends StatefulWidget {
  final bool isSelected;

  const DotItem({super.key, this.isSelected = false});

  @override
  State<DotItem> createState() => _DotItemState();
}

class _DotItemState extends State<DotItem> {
  @override
  Widget build(BuildContext context) {
    Color color = widget.isSelected
        ? AppColor.dotSelectedColor
        : Colors.black.withOpacity(0.15);

    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      width: 8,
      height: 8,
    );
  }
}
