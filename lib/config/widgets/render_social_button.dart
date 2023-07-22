import 'package:flutter/material.dart';
import 'package:martin_project_app/config/util/colors_util.dart';

class RenderSocialButton extends StatelessWidget {
  const RenderSocialButton({
    super.key,
    required this.onTap,
    required this.image,
  });

  final Function() onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        width: 120,
        height: 80,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: formBorderColor, width: 2),
            borderRadius: BorderRadius.circular(20)),
        child: Image.asset(image),
      ),
    );
  }
}
