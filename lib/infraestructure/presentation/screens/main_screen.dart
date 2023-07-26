import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:martin_project_app/config/assets/assets.dart';
import 'package:martin_project_app/infraestructure/presentation/widgets/render_button.dart';
import 'package:martin_project_app/infraestructure/presentation/widgets/render_button2.dart';
import 'package:martin_project_app/infraestructure/presentation/widgets/render_windows.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .4,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(background), fit: BoxFit.cover),
              ),
            ),
            //
            const SizedBox(
              height: 30,
            ),
            //
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    logo,
                    width: MediaQuery.of(context).size.width * .8,
                  ),
                  //
                  const SizedBox(
                    height: 40,
                  ),
                  //
                  Column(
                    children: [
                      //
                      RenderButton(
                        text: "Iniciar Sesión",
                        onPressed: () => context.go("/login"),
                      ),
                      //
                      const SizedBox(
                        height: 30,
                      ),
                      //
                      RenderButton2(
                        text: "Registrarse",
                        onPressed: () => context.go("/register"),
                      ),
                    ],
                  ),
                  //
                  const SizedBox()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
