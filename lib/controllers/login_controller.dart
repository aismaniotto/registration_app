import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:registration_app/core/validators/email.validator.dart';
import 'package:registration_app/core/validators/password.validator.dart';
import 'package:registration_app/services/auth_service.dart';
import 'package:registration_app/services/secure_store_service.dart';
import 'package:registration_app/services/shared_preferences_service.dart';
import 'dart:convert';

class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();

  String username = '';
  String password = '';

  void login() async {
    if (loginFormKey.currentState!.validate()) {
      EasyLoading.show(maskType: EasyLoadingMaskType.black);

      //todo: decide the best way to handle errors

      final authService = Get.find<AuthService>();
      final token = await authService.auth(username, password);
      final user = await authService.getUser(token);

      final secureStorage = Get.find<SecureStoreService>();
      secureStorage.write('token', token.token);

      final sharedPreferences = Get.find<SharedPreferencesService>();
      sharedPreferences.write('userJson', json.encode(user));

      EasyLoading.dismiss();
    }
  }

  String? validateEmail(String value) {
    return EmailValidator.test(value);
  }

  String? validatePassword(String value) {
    return PasswordValidator.test(value);
  }
}
