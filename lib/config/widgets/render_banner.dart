import 'package:flutter/material.dart';

class RenderBanner extends StatelessWidget {
  const RenderBanner({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(25)),
    );
  }
}
