import 'package:flutter/material.dart';

class PasswordDot extends StatelessWidget {
  const PasswordDot({
    super.key,
    required this.fillCount,
    this.totalCount = 8,
    this.isError = false,
  });
  final int fillCount;
  final int totalCount;
  final bool isError;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 2,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalCount, (index) {
        final isFilled = index < fillCount;
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: isFilled
                ? (isError ? Colors.red : Colors.blue)
                : Colors.grey,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
