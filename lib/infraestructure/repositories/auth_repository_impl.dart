import 'package:martin_project_app/infraestructure/services/auth_services.dart';
import 'package:martin_project_app/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthService authService;

  AuthRepositoryImpl(this.authService);

  @override
  Future<void> login() {
    // TODO: implement getData
    throw UnimplementedError();
  }
}
