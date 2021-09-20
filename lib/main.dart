import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registration_app/core/routes/app_pages.dart';
import 'package:registration_app/presentation/pages/registration_page.dart';
import 'package:registration_app/presentation/pages/login_page.dart';
import 'package:registration_app/core/lang/app_translation.dart';
import 'package:registration_app/core/routes/app_routes.dart';

void main() {
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
    );
  }
}
