import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class RenderScrollBanner extends StatefulWidget {
  const RenderScrollBanner({super.key, required this.images});
  final List images;

  @override
  State<RenderScrollBanner> createState() => _RenderScrollBannerState();
}

class _RenderScrollBannerState extends State<RenderScrollBanner> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * .2,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        viewportFraction: 1,
      ),
      items: widget.images.map((imagePath) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    );
  }
}
