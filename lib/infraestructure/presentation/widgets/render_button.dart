import 'package:flutter/material.dart';
import 'package:martin_project_app/infraestructure/presentation/util/colors_util.dart';

class RenderButton extends StatelessWidget {
  const RenderButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = kPrimaryColor,
  });

  final String text;
  final Function() onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(40)),
          backgroundColor: color,
          fixedSize: const Size(double.infinity, 60),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
