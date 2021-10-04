import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:registration_app/controllers/login_controller.dart';
import 'package:registration_app/core/routes/app_pages.dart';
import 'package:registration_app/core/lang/app_translation.dart';
import 'package:registration_app/core/routes/app_routes.dart';
import 'package:registration_app/services/auth_service.dart';
import 'package:registration_app/services/secure_store_service.dart';
import 'package:registration_app/services/shared_preferences_service.dart';

void main() {
  // controllers
  Get.lazyPut<LoginController>(() => LoginController());

  // services
  Get.lazyPut<AuthService>(() => AuthServiceImpl());
  Get.lazyPut<SecureStoreService>(() => SecureStoreServiceImpl());
  Get.lazyPut<SharedPreferencesService>(() => SharedPreferencesServiceImpl());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: AppTranslation.locale,
      fallbackLocale: AppTranslation.fallbackLocale,
      translations: AppTranslation(),
      initialRoute: Routes.LOGIN, // logic to auth
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
    );
  }
}
