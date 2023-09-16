import 'package:flutter/material.dart';
import '../../../../../ScreenSizes/screen_size.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key});
  static const bannerCornerRadius = 30.0;
  final Color bannerComponentsColor = Colors.white70;
  static const drawerSize = 43.0;

  @override
  Widget build(BuildContext context) {
    const imagePath =
        'https://img.freepik.com/free-photo/vintage-grunge-blue-concrete-texture-wall-background-with-vignette_1258-28373.jpg?w=740&t=st=1694157191~exp=1694157791~hmac=aa673cf5a963d6e2201003cebdc516cb3463942834da61255f984e9ad0489c69';
    return Container(
        width: screenWidth,
        height: screenHeight * 0.35,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(bannerCornerRadius),
                bottomRight: Radius.circular(bannerCornerRadius)),
            image: DecorationImage(
                image: NetworkImage(imagePath), fit: BoxFit.fill)),
        child: Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.06, left: screenWidth * 0.07),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: screenWidth * 0.15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('CAS',
                      style: TextStyle(
                          color: bannerComponentsColor,
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold)),
                  Text('Center for advance Studies',
                      style: TextStyle(
                          color: bannerComponentsColor,
                          fontSize: screenWidth * 0.035)),
                ],
              ),
            ],
          ),
        ));
  }
}
