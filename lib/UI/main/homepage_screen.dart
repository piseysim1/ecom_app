import 'package:e_comapp/UI/main/components/categories_item.dart';
import 'package:e_comapp/UI/main/components/flash_sale.dart';
import 'package:e_comapp/UI/main/components/most_popular.dart';
import 'package:e_comapp/UI/main/components/new_item.dart';
import 'package:e_comapp/UI/main/components/topproduct.dart';
import 'package:e_comapp/contant/color.dart';
import 'package:e_comapp/contant/image.dart';
import 'package:e_comapp/widget/circle_button_widget.dart';
import 'package:e_comapp/widget/headertitle.dart';
import 'package:e_comapp/widget/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        clipBehavior: Clip.none,
        title: Row(
          spacing: 16,
          children: [
            ProfileWidget(width: 30, height: 30, imageUrl: "https://tse3.mm.bing.net/th/id/OIP.L_fHNhGC_83eIzFgtkiBHAHaEK?rs=1&pid=ImgDetMain&o=7&rm=3",),
            Chip(
              side: BorderSide(color: mainblue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(15),
              ),
              label: Text("My Activity"),
              backgroundColor: mainblue,
              labelStyle: TextStyle(color: whilteColor),
            ),
          ],
        ),
        actions: [
          CircleButtonWidget(svgIcon: iconsvg2, isShowBadg: false),
          CircleButtonWidget(svgIcon: iconsvg1, isShowBadg: true),
          CircleButtonWidget(svgIcon: iconsvg3, isShowBadg: false),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          helloWidget(),
          SizedBox(height: 20),
          textwigetwithbutton(),
          Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              recentReviewWidget(),
              myOrdersWidget(),
              storiesWidget(),
              NewItem(),
              MostPopular(),
              CategoriesItem(),
              FlashSale(),
              Topproduct()
            ],
          ),
        ],
      ),
    );
  }

  Widget helloWidget() {
    return Text(
      "Hello, Romina!",
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
    );
  }

  Widget recentReviewWidget() {
    return Headertitle(
      lable_text: "Recently viewed",
      hasSeeAll: "",
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          // padding: EdgeInsets.zero,
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ProfileWidget(width: 48, height: 48, imageUrl: "https://tse3.mm.bing.net/th/id/OIP.L_fHNhGC_83eIzFgtkiBHAHaEK?rs=1&pid=ImgDetMain&o=7&rm=3",);
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 5);
          },
          itemCount: 12,
        ),
      ),
    );
  }

  Widget textwigetwithbutton() {
    return Container(
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        color: backgroundboxtext,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Announcement",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Text(
                  style: TextStyle(fontSize: 11),
                  "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Maecenas hendrerit luctus libero ac vulputate. ",
                ),
                Padding(padding: EdgeInsetsGeometry.all(5)),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF004CFF),
                    shape: CircleBorder(),
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget myOrdersWidget() {
  List<String> myOrder = ['To Pay', 'To Recieve', 'Recieve'];
  return Headertitle(
    lable_text: 'My Orders',
    hasSeeAll: "",
    child: Row(
      spacing: 12,
      children: List.generate(myOrder.length, (index) {
        bool isShowbage = myOrder[index] == "To Recieve";
        return Badge(
          smallSize: 13,
          backgroundColor: greenColor,
          isLabelVisible: isShowbage,
          child: Chip(
            side: BorderSide(color: Colors.transparent),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(32),
            ),
            label: Text(myOrder[index].toString()),
            labelStyle: TextStyle(
              color: mainblue,
              wordSpacing: 1.5,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            backgroundColor: mainblue.withValues(alpha: 0.1),
          ),
        );
      }),
    ),
  );
}

Widget storiesWidget() {
  return Headertitle(
    lable_text: "Stories",
    hasSeeAll: "",
    child: SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return _buildstoryCard();
        },
      ),
    ),
  );
}

Widget _buildstoryCard() {
  return Padding(
    padding: const EdgeInsets.only(right: 12),
    child: Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            "https://media.istockphoto.com/id/1137022194/photo/close-up-photo-beautiful-her-she-lady-yell-scream-shout-new-staff-shopping-spree-excited-big.jpg?s=612x612&w=0&k=20&c=1MJnahRL3JTYRDUnSGjN7Vsa3KrmbqLvP39JdaTv65I=",
            width: 110,
            height: 170,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 5,
          left: 8,
          child: Chip(
            side: BorderSide(color: Colors.transparent),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
            label: Text("Live"),
            labelPadding: EdgeInsets.symmetric(horizontal: 5),
            labelStyle: TextStyle(
              color: whilteColor,
              // wordSpacing: 1.5,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            backgroundColor: greenColor,
          ),
        ),
        Positioned(
          child: CircleButtonWidget(
            svgIcon: play,
            onPressed: () {},
            bgColor: grey30,
            width: 36,
            height: 36,
          ),
        ),
      ],
    ),
  );
}

