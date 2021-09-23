import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registration_app/core/validators/email.validator.dart';
import 'package:registration_app/core/validators/password.validator.dart';
import 'package:registration_app/services/auth_service.dart';

class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();

  String username = '';
  String password = '';
  RxBool isBusy = false.obs;

  void login() async {
    if (loginFormKey.currentState!.validate()) {
      isBusy.value = true;

      //todo: decide the best way to handle errors

      final authService = Get.find<AuthService>();
      final token = await authService.auth(username, password);
      final user = await authService.getUser(token);

      // save the token on secure storage
      // save the user on shared preferences

      isBusy.value = false;
    }
  }

  String? validateEmail(String value) {
    return EmailValidator.test(value);
  }

  String? validatePassword(String value) {
    return PasswordValidator.test(value);
  }
}
