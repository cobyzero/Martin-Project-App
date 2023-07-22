import 'package:go_router/go_router.dart';
import 'package:martin_project_app/infraestructure/presentation/screens/home_screen.dart';
import 'package:martin_project_app/infraestructure/presentation/screens/login_screen.dart';
import 'package:martin_project_app/infraestructure/presentation/screens/main_screen.dart';
import 'package:martin_project_app/infraestructure/presentation/screens/register_screen.dart';

GoRouter goRouter = GoRouter(
  initialLocation: "/home",
  routes: [
    GoRoute(
      path: "/main",
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: "/register",
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const HomeScreen(),
    )
  ],
);
