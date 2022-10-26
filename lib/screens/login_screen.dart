import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  TextEditingController loginTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  String wrongLogin = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void authorization() {
    final login = loginTextController.text;
    final password = passwordTextController.text;
    if (login == 'admin' && password == '123456') {
      Navigator.of(context).pushNamed('/welcome');
    } else {
      wrongLogin = 'Неправильний пароль чи логін';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
          child: Column(
            children: [
              TextField(
                controller: loginTextController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Login",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordTextController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
              Row(
                children: [
                  Checkbox(value: isChecked, onChanged: (newBool) {}),
                  Text("Запам'ятати"),
                  Spacer(),
                  OutlinedButton(
                      onPressed: () {
                        authorization();
                      },
                      child: Text('Далі'))
                ],
              ),
              Text(
                wrongLogin,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
