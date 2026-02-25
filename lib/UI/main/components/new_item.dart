import 'package:e_comapp/contant/color.dart';
import 'package:e_comapp/widget/headertitle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewItem extends StatelessWidget {
  const NewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Headertitle(
      lable_text: "New Items",
      hasSeeAll: true,
      child: SizedBox(
        height: 230,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return _itemImage();
          },
        ),
      ),
    );
  }
}
Widget _itemImage() {
  return Padding(
    padding: const EdgeInsets.only(right: 5.0),
    child: SizedBox(
      width: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: whilteColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.09),
                  blurRadius: 12,
                  offset: const Offset(0, 5), // Changes position of shadow
                ),
              ],
            ),
            child: Container(
              height: 130,
              width: 150,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  "https://tse3.mm.bing.net/th/id/OIP.L_fHNhGC_83eIzFgtkiBHAHaEK?rs=1&pid=ImgDetMain&o=7&rm=3",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            "Lorem ipsum dolor sit \namet66 consectetur.",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
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
                SizedBox(width: 20),
              Icon(Icons.favorite, size: 20,color: Colors.red,),
            ],
            
          ),
          
        ],
      ),
    ),
  );
}
