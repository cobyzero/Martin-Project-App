import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:martin_project_app/config/util/colors_util.dart';

class RenderProduct extends StatelessWidget {
  const RenderProduct({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  final String image;
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go("/product");
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: formFilledColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: formBorderColor)),
        padding: const EdgeInsets.all(10),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
                //
                Container(
                  alignment: Alignment.center,
                  height: 26,
                  width: 94,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Envio Gratis",
                    style: TextStyle(color: kPrimaryColor),
                  ),
                )
              ],
            )),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                title,
                style: const TextStyle(color: textColor),
              ),
            ),
            Text(
              "S/.$price",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
