import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:martin_project_app/config/util/colors_util.dart';
import 'package:martin_project_app/config/widgets/render_button.dart';
import 'package:martin_project_app/config/widgets/render_count_products.dart';
import 'package:martin_project_app/config/widgets/render_windows.dart';

int _cantProduct = 0;

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    context.go("/home");
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/item_1.jpg"),
                )),
          )),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 10),
            decoration: BoxDecoration(
              color: formFilledColor,
              border: Border.all(width: 1, color: formBorderColor),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ENVIO GRATIS",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        //
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Sony WH-10000XM4",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Cum modi, placeat sequi quasi possimus beatae illo voluptate optio ab consequatur cumque pariatur! Non beatae fugit repellendus maiores nemo! Ducimus, provLorem ipsum dolor sit amet consectetur, adipisicing elit. Cum modi, placeat sequi quasi possimus beatae illo voluptate optio ab consequatur cumque pariatur! Non beatae fugit repellendus maiores nemo! Ducimus, providenLorem ipsum dolor sit amet consectetur, adipisicing elit. Cum modi, placeat sequi quasi possimus beatae illo voluptate optio ab consequatur cumque pariatur! Non beatae fugit repellendus maiores nemo! Ducimus, providenident."),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              "S/.4.999",
                              style: TextStyle(
                                  fontSize: 30, color: kPrimaryColor, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    RenderCountProducts(
                      cantProduct: _cantProduct,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    RenderButton(
                      text: "Agregar al carrito",
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
