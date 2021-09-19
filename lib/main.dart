import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registration_app/core/lang/translation_service.dart';
import 'package:registration_app/presentation/pages/login_page.dart';

// void main() => runApp(const GetMaterialApp(home: LoginPage()));

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const LoginPage(),
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
    );
  }
}
