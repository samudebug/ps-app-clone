import 'package:psapp_clone/features/profile_page/domain/entities/profile.dart';

abstract class ProfileService {
  Future<ProfileEntity> getProfile();
}