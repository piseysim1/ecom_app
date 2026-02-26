import 'package:e_comapp/core/constants/color.dart';
import 'package:e_comapp/features/auth/widgets/headertitle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Justforyou extends StatelessWidget {
  const Justforyou({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      "https://klbtheme.com/blonwe/fashion/wp-content/uploads/sites/4/2023/04/image-1-34.jpg",
      "https://tse2.mm.bing.net/th/id/OIP.pZ-HKVxYxq4qX1TP9LQ9AwHaJY?rs=1&pid=ImgDetMain&o=7&rm=3",
      "https://tse4.mm.bing.net/th/id/OIP.re7KQbxd53UJ7d3XcGwEYAHaJQ?w=720&h=900&rs=1&pid=ImgDetMain&o=7&rm=3",
      "https://www.sachadrake.com/cdn/shop/files/sculptor-jacket-jackets-multi-occasion-39179983257849_1000x.jpg?v=1684733929",
      "https://th.bing.com/th/id/R.7f10ee6b2fb6dfbc9f7fd3c42d1deddc?rik=I1udK0cDeUCKmA&pid=ImgRaw&r=0",
      "https://tse2.mm.bing.net/th/id/OIP.V5rUHOCmX71_5CaBAOh9TgHaLG?rs=1&pid=ImgDetMain&o=7&rm=3",
      "https://th.bing.com/th/id/R.7f10ee6b2fb6dfbc9f7fd3c42d1deddc?rik=I1udK0cDeUCKmA&pid=ImgRaw&r=0",
      "https://tse2.mm.bing.net/th/id/OIP.V5rUHOCmX71_5CaBAOh9TgHaLG?rs=1&pid=ImgDetMain&o=7&rm=3",
    ];
    return Headertitle(
      lable_text: "Just for You",
      hasSeeAll: "",
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
          itemCount: 6,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: whilteColor,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 12,
                        offset: const Offset(
                          0,
                          8,
                        ), // Changes position of shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(imageUrls[index], fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit \namet66 consectetur.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "\$17,00",
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                        height: 1.2,
                      ),
                    ),
                    
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
