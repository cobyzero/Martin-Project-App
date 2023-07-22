import 'package:flutter/material.dart';
import 'package:martin_project_app/config/util/colors_util.dart';

class RenderInput extends StatelessWidget {
  const RenderInput({
    super.key,
    required this.text,
    this.controller,
  });
  final String text;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: formBorderColor),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: formBorderColor),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: formBorderColor),
          ),
          fillColor: formFilledColor,
          filled: true,
          labelText: text,
          labelStyle: const TextStyle(color: formTextColor)),
    );
  }
}
