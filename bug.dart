```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access a non-existent key, causing an error at runtime
      final nonExistentValue = jsonData['nonExistentKey']; 
      print(nonExistentValue);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}
```