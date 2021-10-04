import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPreferencesService {
  Future<void> write(String key, String value);
  Future<String> get(String key, String defaultValue);
  Future delete(String key);
}

class SharedPreferencesServiceImpl implements SharedPreferencesService {
  @override
  Future<void> write(String key, String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool sucess = await sharedPreferences.setString(key, value);
    if (!sucess) {
      throw Exception('not able to save the key on shared preference');
    }
  }

  @override
  Future<String> get(String key, String defaultValue) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? value = sharedPreferences.getString(key);
    return value ?? defaultValue;
  }

  @override
  Future delete(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove(key);
  }
}
