import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'enter_valid_email'.tr;
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    return value.length < 3 ? 'password_too_short'.tr : null;
  }
}
