import 'package:hive/hive.dart';
import '../../domain/entities/user.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String password;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
  });

  factory UserModel.fromEntity(User user) {
    return UserModel(
      name: user.name,
      email: user.email,
      password: user.password,
    );
  }
}
