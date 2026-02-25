import 'package:e_comapp/contant/color.dart';
import 'package:e_comapp/widget/headertitle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Headertitle(
      lable_text: "Categories",
      hasSeeAll: true,
      child: SizedBox(
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio:0.7
          ),
          padding: EdgeInsets.all(8),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: whilteColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4), // Changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildImageGridItem(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bags", // Or categories[index]
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        // padding: const EdgeInsets.symmetric(
                        //   horizontal: 10,
                        //   vertical: 6,
                        // ),
                        decoration: BoxDecoration(
                          color: const Color(
                            0xFFF5F5F5,
                          ), // Light grey background
                          borderRadius: BorderRadius.circular(
                            8,
                          ), // Rounded corners
                        ),
                        child: Text(
                          "109",
                          // style: GoogleFonts.poppins(
                          //   fontSize: 13,
                          //   fontWeight: FontWeight.w500,
                          //   color: Colors.black54, // Slightly faded text
                          // ),
                        ),
                      ),
                    ],
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

Widget _buildImageGridItem() {
  final List<String> imageUrls = [
    "https://klbtheme.com/blonwe/fashion/wp-content/uploads/sites/4/2023/04/image-1-34.jpg",
    "https://tse2.mm.bing.net/th/id/OIP.pZ-HKVxYxq4qX1TP9LQ9AwHaJY?rs=1&pid=ImgDetMain&o=7&rm=3",
    "https://tse4.mm.bing.net/th/id/OIP.re7KQbxd53UJ7d3XcGwEYAHaJQ?w=720&h=900&rs=1&pid=ImgDetMain&o=7&rm=3",
    "https://www.sachadrake.com/cdn/shop/files/sculptor-jacket-jackets-multi-occasion-39179983257849_1000x.jpg?v=1684733929",
  ];
  return SizedBox(
    child: GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(color: whilteColor, shape: BoxShape.circle),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(imageUrls[index], fit: BoxFit.cover),
          ),
        );
      },
    ),
  );
}
