import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en.dart';
import 'pt.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('en');
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'pt': pt,
      };
}
