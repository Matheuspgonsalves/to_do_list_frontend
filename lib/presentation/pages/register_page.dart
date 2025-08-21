import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
            "imagem"
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(27),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.pinkAccent
              ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Text(
                "Crie seus dados de acesso nos campos abaixo.",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              CupertinoTextField(
                padding: EdgeInsets.all(15),
                placeholder: "Digite seu email",
                placeholderStyle: TextStyle(color: Colors.white70, fontSize: 14),
                style: TextStyle(color: Colors.white, fontSize: 14),
                decoration: BoxDecoration(
                  color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
              ),
              SizedBox(height: 10),
              CupertinoTextField(
                padding: EdgeInsets.all(15),
                placeholder: "Digite sua nova senha",
                obscureText: true,
                placeholderStyle: TextStyle(color: Colors.white70, fontSize: 14),
                style: TextStyle(color: Colors.white, fontSize: 14),
                decoration: BoxDecoration(
                  color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(7)),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  color: Colors.greenAccent,
                  onPressed: () {},
                  child: Text(
                    "Cadastrar",
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