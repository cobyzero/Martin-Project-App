import 'package:get_it/get_it.dart';
import 'package:martin_project_app/infraestructure/repositories/auth_repository_impl.dart';
import 'package:martin_project_app/infraestructure/services/auth_services.dart';
import 'package:martin_project_app/domain/repositories/auth_repository.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  static void init() {
    //Services
    getIt.registerLazySingleton<AuthService>(
      () => AuthService(),
    );
    //Repositorys
    getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(getIt.get<AuthService>()),
    );
    //Blocs
  }
}
