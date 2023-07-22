import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:martin_project_app/config/util/colors_util.dart';
import 'package:martin_project_app/config/widgets/render_button.dart';
import 'package:martin_project_app/config/widgets/render_input.dart';
import 'package:martin_project_app/config/widgets/render_separator.dart';
import 'package:martin_project_app/config/widgets/render_windows.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
      padding: 20.0,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => context.go("/main"),
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  Image.asset(
                    "assets/icono.png",
                    width: 60,
                  )
                ],
              ),
              //
              const SizedBox(
                height: 30,
              ),
              //
              Column(
                children: [
                  //
                  const Text(
                    "¡Bienvenido! ¡me alegra verte de nuevo!",
                    style: TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold),
                  ),
                  //
                  const SizedBox(
                    height: 60,
                  ),
                  //
                  const RenderInput(
                    text: "Ingresa tu email",
                  ),
                  //
                  const SizedBox(
                    height: 20,
                  ),
                  const RenderInput(
                    text: "Ingresa tu contraseña",
                  ),
                  //
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Olvido su contraseña?",
                      ),
                    ),
                  ),
                  //
                  RenderButton(
                    text: "Ingresar",
                    onPressed: () {},
                  ),
                  //
                  const SizedBox(
                    height: 20,
                  ),
                  //
                  const RenderSeparator(
                    text: "O Inicia sesión con",
                  ),
                  //
                  const SizedBox(
                    height: 20,
                  ),
                  //
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Container(
                      width: 120,
                      height: 80,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: formBorderColor, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset("assets/google.png"),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("No tienes una cuenta?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Registrate ahora"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
