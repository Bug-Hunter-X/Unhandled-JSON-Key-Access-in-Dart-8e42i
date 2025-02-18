```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonResponse = jsonDecode(response.body);
      // Accessing a non-existent key.  This is common, but can lead to runtime errors.
      final value = jsonResponse['nonExistentKey'];
      print(value);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    //This will only catch the http request exception, not other potential errors.
    //More robust error handling will be required in production code.
  }
}
```