import 'package:http/http.dart' as http;

class HttpService {
  static const String baseUrl = '';

  static Future<http.Response> getRequest(String endpoint) async {
    final url = Uri.parse('$baseUrl/$endpoint');

    final response = await http.get(url,
        headers: {
        });
        return response;
  }

  static Future<http.Response> postRequest(String endpoint, Map<String, String> requestBody) async {
    final url = Uri.parse('$baseUrl/$endpoint');

    final response = await http.post(url, body: requestBody);
    return response;
  }
}