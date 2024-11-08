import 'package:psapp_clone/core/resources/data_state.dart';
import 'package:psapp_clone/features/profile_page/data/data_sources/remote/profile_service.dart';
import 'package:psapp_clone/features/profile_page/domain/entities/profile.dart';
import 'package:psapp_clone/features/profile_page/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileService _profileService;

  ProfileRepositoryImpl(this._profileService);

  @override
  Future<DataState<ProfileEntity>> getProfile() async {
    try {
      final response = await _profileService.getProfile();
      return DataSuccess(response);
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }
}
