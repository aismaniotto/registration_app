import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:registration_app/controllers/login.controller.dart';
import 'package:registration_app/core/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);

  final LoginController c = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          Center(
            child: Image.asset('assets/images/bear-logo.jpeg'),
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'email'.tr,
                        hintText: 'enter_valid_email'.tr),
                    onChanged: (value) => controller.username = value,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => controller.validateEmail(value!),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'password'.tr,
                        hintText: 'enter_password'.tr),
                    obscureText: true,
                    onChanged: (value) => controller.password = value,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => controller.validatePassword(value!),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: Text(
                    'forgot_password'.tr,
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        decoration: TextDecoration.underline),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: ElevatedButton(
                    child: Text(
                      'login'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      controller.login();
                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Text(
                    'or'.tr,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: ElevatedButton(
                    child: Text(
                      'request_account'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.REGISTRATION);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
