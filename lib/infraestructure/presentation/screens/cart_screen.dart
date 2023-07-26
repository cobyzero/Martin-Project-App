import 'package:flutter/material.dart';
import 'package:martin_project_app/infraestructure/presentation/widgets/render_button.dart';
import 'package:martin_project_app/infraestructure/presentation/widgets/render_cart_item.dart';

import 'package:martin_project_app/infraestructure/presentation/widgets/render_windows.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
        padding: 20.0,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart),
                Text(
                  "Carrito",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const RenderCartItem(
                        image: "assets/item_1.jpg",
                        title: "Soporte 12x32 mm",
                        price: 258.99,
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: RenderButton(
                        text: "Finalizar compra",
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
