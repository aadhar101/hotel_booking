Future<bool> login(String phone, String password) async {
  final success = await remote.login(phone, password);
  if (success) {
    await local.saveLogin(); // 🔥 LOCAL DB
  }
  return success;
}
