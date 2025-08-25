import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

Future<bool> loginUser(String email, String password) async {
  final url = Uri.parse("${dotenv.env['API_URL']}/auth/login");

  final response = await http.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: jsonEncode({"email": email, "password": password}),
  );

  return response.statusCode == 200;
}
