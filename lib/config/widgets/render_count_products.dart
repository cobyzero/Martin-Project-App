import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RenderCountProducts extends StatefulWidget {
  RenderCountProducts({super.key, required this.cantProduct});
  int cantProduct;

  @override
  State<RenderCountProducts> createState() => _RenderCountProductsState();
}

class _RenderCountProductsState extends State<RenderCountProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if (widget.cantProduct != 0) {
                  widget.cantProduct--;
                }
              });
            },
            icon: const Icon(Icons.remove, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.cantProduct.toString(),
              style: const TextStyle(fontSize: 30, color: Colors.grey),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                widget.cantProduct++;
              });
            },
            icon: const Icon(Icons.add, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
