import 'package:e_comapp/core/constants/color.dart';
import 'package:e_comapp/features/auth/widgets/headertitle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      "https://klbtheme.com/blonwe/fashion/wp-content/uploads/sites/4/2023/04/image-1-34.jpg",
      "https://tse2.mm.bing.net/th/id/OIP.pZ-HKVxYxq4qX1TP9LQ9AwHaJY?rs=1&pid=ImgDetMain&o=7&rm=3",
      "https://tse4.mm.bing.net/th/id/OIP.re7KQbxd53UJ7d3XcGwEYAHaJQ?w=720&h=900&rs=1&pid=ImgDetMain&o=7&rm=3",
      "https://www.sachadrake.com/cdn/shop/files/sculptor-jacket-jackets-multi-occasion-39179983257849_1000x.jpg?v=1684733929",
      "https://th.bing.com/th/id/R.7f10ee6b2fb6dfbc9f7fd3c42d1deddc?rik=I1udK0cDeUCKmA&pid=ImgRaw&r=0",
      "https://tse2.mm.bing.net/th/id/OIP.V5rUHOCmX71_5CaBAOh9TgHaLG?rs=1&pid=ImgDetMain&o=7&rm=3",
    ];
    return Headertitle(
      lable_text: "Flash Sale",
      rightChild: _buildTextGridItem(),
      hasSeeAll: "",
      child: SizedBox(
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 2 / 2.6,
          ),
          padding: EdgeInsets.all(8),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(8),

              decoration: BoxDecoration(
                color: whilteColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 12,
                    offset: const Offset(0, 8), // Changes position of shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(imageUrls[index], fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0, // Changed from right: 100 to left: 8
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(255, 250, 39, 81),
                            const Color(0xFFFFEBEB),
                          ], // Gradient colors
                          begin: Alignment.topLeft, // Start point
                          end: Alignment.bottomRight, // End point
                          stops: [
                            0.2,
                            1.0,
                          ], // Optional: control color positions
                        ),
                      ),
                      child: const Text(
                        "-20%",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Changed to red for visibility
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget _buildTextGridItem() {
  return Row(
    spacing: 2,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Icon(Icons.timer, color: const Color.fromARGB(255, 7, 37, 184), size: 24),
      SizedBox(width: 10, height: 20),
      Chip(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        side: BorderSide(color: Colors.transparent),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        label: Text(
          "00", 
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFFFEBEB),
      ),
      Chip(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        side: BorderSide(color: Colors.transparent),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        label: Text(
          "36", // Or productCounts[index]
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFFFEBEB),
      ),
      Chip(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        side: BorderSide(color: Colors.transparent),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
        label: Text(
          "58", // Or productCounts[index]
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),

        backgroundColor: Color(0xFFFFEBEB),
      ),
    ],
  );
}
