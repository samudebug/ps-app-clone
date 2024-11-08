import 'package:psapp_clone/core/resources/data_state.dart';
import 'package:psapp_clone/features/profile_page/domain/entities/profile.dart';

abstract class ProfileRepository {

  Future<DataState<ProfileEntity>> getProfile();
}