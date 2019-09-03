import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stadia_app/common/rounded_image_widget.dart';
import 'package:stadia_app/image_asset.dart';
import 'package:stadia_app/styleguide/colors.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * 0.4;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(screenWidth * 0.4, 10),
            child: Transform.rotate(
              angle: -0.1,
              child: SvgPicture.asset(
                logo,
                height: logoHeight,
                color: logoTintColor,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                        color: primaryTextColor,
                      ),
                      Icon(
                        Icons.search,
                        color: primaryTextColor,
                      ),
                    ],
                  ),
                ),
                Row(
                    children: <Widget>[
                  RoundedImageWidget(
                    imagePath: player1,
                    ranking: 39,
                    showRanking: true,
                    name: 'wilson',
                    isOnline: true,
                  ),
                      Padding()
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
