import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SecureStoreService {
  Future<void> write(String key, String value);
  Future<String> get(String key, String defaultValue);
  Future delete(String key);
}

class SecureStoreServiceImpl implements SecureStoreService {
  static const _secureStorage = FlutterSecureStorage();

  @override
  Future<void> write(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  @override
  Future<String> get(String key, String defaultValue) async {
    String? value = await _secureStorage.read(key: key);
    return value ?? defaultValue;
  }

  @override
  Future delete(String key) async {
    await _secureStorage.delete(key: key);
  }
}
