import 'package:flutter/material.dart';
import 'package:martin_project_app/config/util/colors_util.dart';

class RenderSearch extends StatelessWidget {
  const RenderSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: formFilledColor,
        filled: true,
        prefixIcon: const Icon(Icons.search),
        labelText: "Buscar en Martin",
        labelStyle: const TextStyle(color: formTextColor),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: formBorderColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: formBorderColor)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: formBorderColor)),
      ),
    );
  }
}
