import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> registerUser(String name, String email, String password) async {
  final url = Uri.parse("http://192.168.18.240:5001/auth/register");

  final response = await http.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: jsonEncode({
      "name": name,
      "email": email,
      "password": password,
    }),
  );

  if (response.statusCode == 201) {
    print("Usuário criado com sucesso");
  } else {
    print("Erro ao cadastrar usuário");
  }
}