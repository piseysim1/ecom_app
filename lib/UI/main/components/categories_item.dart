import 'package:e_comapp/contant/color.dart';
import 'package:e_comapp/widget/headertitle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> productName = ['Clothing', 'Shoes', 'Bags', 'Lingerie'];
    List<int> productCount = [150, 200, 120, 80];

    return Headertitle(
      lable_text: "Categories",
      hasSeeAll: "See All", // Set to empty string to hide "See All"
      child: SizedBox(
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 2 / 2.6,
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
                    blurRadius: 12,
                    offset: const Offset(0, 8), // Changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Expanded(child: _buildImageGridItem()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productName[index], // Or categories[index]
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Chip(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7, 
                          vertical: 7.0, 
                        ),
                        side: BorderSide(color: Colors.transparent),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(16),
                        ),
                        label: Text(
                          "${productCount[index]}", // Or productCounts[index]
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        
                        backgroundColor: Color(0xFFF3F3F3),
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
