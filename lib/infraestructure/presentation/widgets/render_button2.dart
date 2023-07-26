import 'package:flutter/material.dart';
import 'package:martin_project_app/infraestructure/presentation/util/colors_util.dart';

class RenderButton2 extends StatelessWidget {
  const RenderButton2({
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
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(40)),
        foregroundColor: color,
        side: BorderSide(color: color),
        fixedSize: Size(MediaQuery.of(context).size.width, 60),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
