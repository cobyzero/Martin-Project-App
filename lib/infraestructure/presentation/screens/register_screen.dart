import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:martin_project_app/config/util/colors_util.dart';
import 'package:martin_project_app/config/widgets/render_button.dart';
import 'package:martin_project_app/config/widgets/render_input.dart';
import 'package:martin_project_app/config/widgets/render_windows.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RenderWindows(
      padding: 20.0,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
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
                height: 20,
              ),
              //
              const Text(
                "¡Hola! Regístrese para comenzar",
                style: TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold),
              ),
              //
              const SizedBox(
                height: 20,
              ),
              //
              const RenderInput(
                text: "Nombres",
              ),
              //
              const SizedBox(
                height: 10,
              ),
              //
              const RenderInput(
                text: "Apellidos",
              ),
              //
              const SizedBox(
                height: 10,
              ),
              //
              const RenderInput(
                text: "Correo",
              ),
              //
              const SizedBox(
                height: 10,
              ),
              //
              const RenderInput(
                text: "Contraseña",
              ),
              //
              const SizedBox(
                height: 10,
              ),
              //
              const RenderInput(
                text: "Confirmar contraseña",
              ),
              //
              const SizedBox(
                height: 30,
              ),
              //
              RenderButton(
                text: "Registrarse",
                onPressed: () {},
              ),
              //
              const SizedBox(
                height: 20,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Ya tienes una cuenta?"),
                  TextButton(
                    onPressed: () => context.go("/login"),
                    child: const Text("Iniciar sesión"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
