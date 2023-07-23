import 'package:flutter/material.dart';
import 'package:martin_project_app/config/util/colors_util.dart';
import 'package:martin_project_app/infraestructure/presentation/screens/cart_screen.dart';
import 'package:martin_project_app/infraestructure/presentation/screens/home_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimaryColor,
        currentIndex: currentIndex,
        onTap: (index) {
          pageController.jumpToPage(index);
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrito',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: PageView(
            controller: pageController,
            children: [HomeScreen(), CartScreen()],
          )),
        ],
      ),
    );
  }
}
