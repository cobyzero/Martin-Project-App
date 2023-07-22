import 'package:go_router/go_router.dart';
import 'package:martin_project_app/infraestructure/presentation/login/login_screen.dart';
import 'package:martin_project_app/infraestructure/presentation/screens/main/main_screen.dart';

GoRouter goRouter = GoRouter(
  initialLocation: "/main",
  routes: [
    GoRoute(
      path: "/main",
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    )
  ],
);
