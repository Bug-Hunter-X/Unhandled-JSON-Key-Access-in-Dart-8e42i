```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // More robust JSON handling
      final jsonResponse = jsonDecode(response.body);
      final value = jsonResponse['data'] ?? 'Default Value'; //Safe access
      print(value);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //Handle different exceptions differently and provide more info
    // Consider using specific exception types instead of a generic Exception.
  }
}
```