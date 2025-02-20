```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! 
      final jsonData = jsonDecode(response.body);
      // Process the jsonData
      print(jsonData);
    } else {
      // Handle error
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle error
    print('Error: $e');
  }
}
```