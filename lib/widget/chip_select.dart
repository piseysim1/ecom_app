import 'package:flutter/material.dart';

class ChipSelect extends StatelessWidget {
  const ChipSelect({
    super.key,
    required this.chipColor,
    required this.isSelected,
    required this.textlable,
    required this.textColor,
    required this.fontWeight,
  });

  final Color chipColor;
  final bool isSelected;
  final String textlable;
  final Color textColor;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 80),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: chipColor.withValues(alpha: 0.3),

        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Text(
            textAlign: TextAlign.center,
            textlable,
            style: TextStyle(
              fontSize: 15,
              fontWeight: fontWeight,
              color: textColor,
            ),
          ),
          checkHip(),
        ],
      ),
    );
  }

  Widget checkHip() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: isSelected
          ? Icon(Icons.check_circle, size: 30, color: chipColor)
          : Icon(Icons.circle, size: 29, color: chipColor.withValues(alpha: 1)),
    );
  }
}
