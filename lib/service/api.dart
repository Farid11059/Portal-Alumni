import 'package:http/http.dart' show Client;
import 'dart:convert';

class ApiService {
  final String baseUrl = "http://farid.desasinga.com";
  Client client = Client();

  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await client.post("$baseUrl/api/login",
        body: {"email": email, "password": password});
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      String token = data["token"];
      Map user = data["user"];
      return {"token": token, "user": user, "error": false};
    } else {
      var data = json.decode(response.body);
      String message = data["message"];
      return {"message": message, "error": true};
    }
  }

  Future users(String token) async {
    final response = await client
        .get("$baseUrl/api/user", headers: {"Authorization": "Bearer $token"});
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return data["data"];
    }
  }

  Future update(token, id, body) async {
    final response = await client.post("$baseUrl/api/user/$id",
        headers: {"Authorization": "Bearer $token"}, body: body);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return {"ok": true, "user": data["user"]};
    } else {
      return {"ok": false};
    }
  }
}
