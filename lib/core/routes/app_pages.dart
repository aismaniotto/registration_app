import 'package:get/get.dart';
import 'package:registration_app/core/routes/app_routes.dart';
import 'package:registration_app/presentation/pages/login_page.dart';
import 'package:registration_app/presentation/pages/registration_page.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.REGISTRATION,
      page: () => const RegistrationPage(),
    ),
  ];
}
