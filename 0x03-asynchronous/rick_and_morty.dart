import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final url = Uri.parse('https://rickandmortyapi.com/api/character');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw 'Failed to load characters';
    }

    final data = jsonDecode(response.body);
    final List results = data['results'];

    for (final character in results) {
      print(character['name']);
    }
  } catch (error) {
    print('error caught: $error');
  }
}
