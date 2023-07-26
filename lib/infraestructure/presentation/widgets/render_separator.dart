import 'package:flutter/material.dart';
import 'package:martin_project_app/infraestructure/presentation/util/colors_util.dart';

class RenderSeparator extends StatelessWidget {
  const RenderSeparator({super.key, this.color = textColor, this.text});
  final Color color;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            width: double.infinity,
            height: 1,
            color: color,
          ),
        ),
        if (text != null)
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(text!),
          ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 20, bottom: 20),
            width: double.infinity,
            height: 1,
            color: color,
          ),
        ),
      ],
    );
  }
}
