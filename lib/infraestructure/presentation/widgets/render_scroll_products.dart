import 'package:flutter/material.dart';
import 'package:martin_project_app/infraestructure/presentation/widgets/render_product.dart';
import 'package:martin_project_app/domain/entitys/product_model.dart';

class RenderScrollProducts extends StatelessWidget {
  const RenderScrollProducts({
    super.key,
    required this.products,
  });

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return RenderProduct(
            image: products[index].image,
            title: products[index].title,
            price: products[index].price,
          );
        },
      ),
    );
  }
}
