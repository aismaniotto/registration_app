import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:registration_app/core/validators/email.validator.dart';
import 'package:registration_app/core/validators/password.validator.dart';

class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();

  var username = '';
  var password = '';

  void login() {
    if (loginFormKey.currentState!.validate()) {
      // call service
    }
  }

  String? validateEmail(String value) {
    return EmailValidator.test(value);
  }

  String? validatePassword(String value) {
    return PasswordValidator.test(value);
  }
}
