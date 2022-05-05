import 'package:flutter/material.dart';
import 'package:stack/main.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.loginController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController loginController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 339,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(
                width: 0.5,
                color: Color(0xff333333),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextField(
                controller: loginController,
                decoration: InputDecoration(
                  hintText: 'E-Mail',
                  hintStyle: TextStyle(
                    color: Color(0xff4F4F4F),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 339,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              border: Border.all(
                width: 0.5,
                color: Color(0xff333333),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Пароль',
                  hintStyle: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              print(loginController.text);
              print(passwordController.text);
              if (loginController.text.contains('@gmail.com') &&
                  passwordController.text.length > 6) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              }
            },
            child: Container(
              alignment: Alignment.center,
              width: 132,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff743F8C),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                'Вход',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
