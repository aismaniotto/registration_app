import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:registration_app/core/routes/app_routes.dart';
import 'package:registration_app/presentation/pages/registration_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
                child: TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'email'.tr,
                      hintText: 'enter_valid_email'.tr),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'password'.tr,
                      hintText: 'enter_password'.tr),
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
                  onPressed: () {},
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
    ));
  }
}
