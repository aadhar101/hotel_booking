import 'package:hive_flutter/hive_flutter.dart';
import '../../features/auth/data/models/user_model.dart';

class HiveService {
  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserModelAdapter());
    await Hive.openBox<UserModel>('users');
  }

  static Box<UserModel> get userBox => Hive.box<UserModel>('users');
}
