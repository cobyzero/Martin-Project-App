import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:martin_project_app/infraestructure/presentation/util/colors_util.dart';

import 'package:martin_project_app/infraestructure/presentation/widgets/render_scroll_banner.dart';
import 'package:martin_project_app/infraestructure/presentation/widgets/render_scroll_category.dart';
import 'package:martin_project_app/infraestructure/presentation/widgets/render_scroll_products.dart';
import 'package:martin_project_app/infraestructure/presentation/widgets/render_search.dart';
import 'package:martin_project_app/infraestructure/presentation/widgets/render_windows.dart';
import 'package:martin_project_app/domain/entitys/product_model.dart';

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

  static List<ProductModel> products = [
    ProductModel(
      "Soporte 12x32 mm",
      "assets/item_1.jpg",
      234.99,
    ),
    ProductModel(
      "Mesa 145x42 mm",
      "assets/item_2.jpg",
      56.99,
    ),
    ProductModel(
      "Pistones 50x50 mm",
      "assets/item_3.jpg",
      567.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
      padding: 20.0,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/icono.png",
                  width: 60,
                ),
                IconButton(
                  onPressed: () => context.go("/main"),
                  icon: const Icon(Icons.logout),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Flexible(child: RenderSearch()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_active),
                ),
              ],
            ),
            //
            const SizedBox(
              height: 20,
            ),
            RenderScrollBanner(
              images: images,
            ),
            //
            const SizedBox(
              height: 30,
            ),
            //
            RenderScrollCategory(
              categorys: categorys,
            ),
            //
            const SizedBox(
              height: 10,
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
            //
            RenderScrollProducts(
              products: products,
            ),
            //
            const SizedBox(
              height: 15,
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Recientemente actualizados",
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
            //
            RenderScrollProducts(
              products: products,
            )
          ],
        ),
      ),
    );
  }
}
