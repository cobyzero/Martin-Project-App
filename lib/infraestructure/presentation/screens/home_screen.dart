import 'package:flutter/material.dart';
import 'package:martin_project_app/config/util/colors_util.dart';
import 'package:martin_project_app/config/widgets/render_banner.dart';
import 'package:martin_project_app/config/widgets/render_input.dart';
import 'package:martin_project_app/config/widgets/render_scroll_banner.dart';
import 'package:martin_project_app/config/widgets/render_scroll_category.dart';
import 'package:martin_project_app/config/widgets/render_scroll_products.dart';
import 'package:martin_project_app/config/widgets/render_search.dart';
import 'package:martin_project_app/config/widgets/render_windows.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static List images = [
    "assets/banner_1.png",
    "assets/banner_2.png",
    "assets/banner_3.png",
  ];

  static List categorys = [
    "Tecnologia",
    "Moda",
    "Deportes",
    "Hogar",
  ];

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
      padding: 20.0,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Flexible(child: RenderSearch()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_active),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            RenderScrollBanner(
              images: images,
            ),
            const SizedBox(
              height: 30,
            ),
            RenderScrollCategory(
              categorys: categorys,
            ),
            const SizedBox(
              height: 30,
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Super Ofertas",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Ver más"),
                )
              ],
            ),

            RenderScrollProducts()
          ],
        ),
      ),
    );
  }
}
