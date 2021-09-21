import 'package:get/get.dart';

class PasswordValidator {
  static String? test(value) {
    return value.length < 3 ? 'password_too_short'.tr : null;
  }
}
