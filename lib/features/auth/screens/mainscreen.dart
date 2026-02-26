import 'package:e_comapp/features/auth/screens/homepage_screen.dart';
import 'package:e_comapp/core/constants/color.dart';
import 'package:e_comapp/core/constants/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<Mainscreen> {
  int _selectPage = 0;

  final List<Widget> _pages = [
    HomepageScreen(),
    Center(child: Text("Favorite")),
    Center(child: Text("History")),
    Center(child: Text("Cart")),
    Center(child: Text("Profile")),
  ];
  final List<String> _outlineIcon = [
    homeSvg,
    favoriteSvg,
    historySvg,
    cartSvg,
    profileSvg,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectPage],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
          color: whilteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -2),
              blurRadius: 8,
            ),
          ],
        ),
        child: SafeArea(
          child: SizedBox(
            height: 65,
            child: Row(
              children: List.generate(_outlineIcon.length, (index) {
                bool isSelected = _selectPage == index;
                return Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      setState(() {
                        _selectPage = index;
                      });
                    },
                    child: Column(
                      spacing: 6,
                      children: [
                        SvgPicture.asset(
                          _outlineIcon[index],
                          width: 25,
                          height: 25,
                          colorFilter: ColorFilter.mode(
                            isSelected ? Colors.black : mainblue,
                            BlendMode.srcIn,
                          ),
                        ),
                        AnimatedContainer(
                          height: 3,
                          width: isSelected ? 16 : 0,
                          duration: Duration(milliseconds: 250),
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.black : mainblue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
