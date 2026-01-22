import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://10.0.2.2:8000";

  static Future<Map<String, dynamic>> uploadDocument(File file) async {
    final request =
        http.MultipartRequest("POST", Uri.parse("$baseUrl/process"));

    request.files.add(
      await http.MultipartFile.fromPath("file", file.path),
    );

    final response = await request.send();
    final responseBody = await response.stream.bytesToString();

    return json.decode(responseBody);
  }
}
