import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text('registration'.tr),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(25),
                child: Text(
                  'lets_start'.tr,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const BubbleSpecialOne(
                text: 'Hi, How are you? ',
                isSender: false,
              ),
              BubbleSpecialOne(
                text: 'Great, thks. And u? ',
                isSender: true,
                color: Colors.blue.shade400,
              ),
            ],
          )),
          Container(
            // padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            decoration: BoxDecoration(color: Colors.grey.shade300),
            alignment: FractionalOffset.bottomCenter,
            child: Column(
              children: [
                Container(
                  child: const Text(
                    'My name is:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(bottom: 10),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.send),
                      iconSize: 30.0,
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
