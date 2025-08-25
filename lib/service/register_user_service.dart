import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<bool> registerUser(
  String name,
  String email,
  String password,
) async {
  final url = Uri.parse("${dotenv.env['API_URL']}/auth/register");

  final response = await http.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: jsonEncode({"name": name, "email": email, "password": password}),
  );

  return response.statusCode == 201;
}
