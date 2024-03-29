import 'package:http/http.dart' as http;

class Webservice {
  Future<String> fetchPost() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return response.body;
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}