import 'package:flutter/material.dart';

class Headertitle extends StatelessWidget {
  const Headertitle({
    super.key,
    required this.lable_text,
    this.child,
    required this.hasSeeAll,
  });
  final String lable_text;
  final Widget? child;
  final bool hasSeeAll;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              lable_text,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
            ),
            // Logic: Only build the "See All" Row if hasSeeAll is true
            if (hasSeeAll)
              Row(
                children: [
                  const Text(
                    "See All",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Color(0xFF004CFF),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
          ],
        ),
        
        child ?? const SizedBox.shrink(),
      ],
    );
  }
}
