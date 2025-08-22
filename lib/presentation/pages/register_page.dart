import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list_frontend/service/register_user_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Image.asset(
          "lib/assets/images/logo.png",
          height: 50,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(27),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.lightBlueAccent,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Text(
                "Cadastre-se abaixo para começar a usar o app.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 30),
              CupertinoTextField(
                controller: nameController,
                padding: EdgeInsets.all(15),
                placeholder: "Digite seu nome",
                placeholderStyle: TextStyle(color: Colors.white70, fontSize: 14),
                style: TextStyle(color: Colors.white, fontSize: 14),
                decoration: BoxDecoration(
                  color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
              ),
              SizedBox(height: 5),
              CupertinoTextField(
                controller: emailController,
                padding: EdgeInsets.all(15),
                placeholder: "Digite seu email",
                placeholderStyle: TextStyle(color: Colors.white70, fontSize: 14),
                style: TextStyle(color: Colors.white, fontSize: 14),
                decoration: BoxDecoration(
                  color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
              ),
              SizedBox(height: 5),
              CupertinoTextField(
                controller: passwordController,
                padding: EdgeInsets.all(15),
                placeholder: "Digite sua nova senha",
                obscureText: true,
                placeholderStyle: TextStyle(color: Colors.white70, fontSize: 14),
                style: TextStyle(color: Colors.white, fontSize: 14),
                decoration: BoxDecoration(
                  color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    registerUser(
                        nameController.text,
                        emailController.text,
                        passwordController.text,
                    );
                  },
                  child: Text(
                    "Cadastrar",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.white70,
                      width: 1.5,
                    )
                ),
                width: double.infinity,
                child: CupertinoButton(
                  onPressed: () {},
                  child: Text(
                    "Fazer Login",
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 16,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}