import 'package:e_comapp/features/auth/screens/homepage_screen.dart';
import 'package:e_comapp/core/constants/color.dart';
import 'package:e_comapp/core/constants/image.dart';
import 'package:e_comapp/features/auth/widgets/card_dashboard.dart';
import 'package:flutter/material.dart';

class OnboardingItem {
  final String image;
  final String title;
  final String description;
  final bool? isShowbutton;
  OnboardingItem({
    required this.image,
    required this.title,
    required this.description,
    this.isShowbutton = false,
  });
}

class HelloCardDashboard extends StatefulWidget {
  const HelloCardDashboard({super.key});

  @override
  State<HelloCardDashboard> createState() => _HelloCardDashboardState();
}

class _HelloCardDashboardState extends State<HelloCardDashboard> {
  int indexScroll = 0;
  final PageController pageController = PageController();
  final List<OnboardingItem> _items = [
    OnboardingItem(
      image: slide1,
      title: 'Hello',
      description:
          'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.\nSed non consectetur turpis.\nMorbi eu eleifend lacus.',
    ),
    OnboardingItem(
      image: slide2,
      title: 'Ready?',
      description: 'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.',
    ),
    OnboardingItem(
      image: slide3,
      title: 'Ready?',
      description:
          'Lorem ipsurm dolor sit amet,\n consectetur adipiscing elit.',
    ),
    OnboardingItem(
      image: slide3,
      title: 'Go?',
      description: 'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit.',
      isShowbutton: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: 150,
              left: 0,
              width: 160,
              child: Image.asset(bluebackground8),
            ),
            Positioned(top: 0, left: 0, child: Image.asset(bluebackground2)),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Expanded(
                    flex: 3,
                    child: PageView.builder(
                      controller: pageController,
                      onPageChanged: (value) => setState(() {
                        indexScroll = value;
                      }),
                      clipBehavior: Clip.none,
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        final item = _items[index];
                        return CardDashboard(
                          image: item.image,
                          title: item.title,
                          description: item.description,
                          isShowbutton: item.isShowbutton,
                          onClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                settings: const RouteSettings(
                                  name: '/password recovery code',
                                ),
                                builder: (context) => HomepageScreen(),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(_items.length, (index) {
                      final isSelected = indexScroll == index;
                      return _dot(dotColor: isSelected ? mainblue : greyColor);
                    }),
                  ),
                  SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dot({required Color dotColor}) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(shape: BoxShape.circle, color: dotColor),
    );
  }
}
