import 'package:psapp_clone/core/resources/data_state.dart';
import 'package:psapp_clone/core/usecases/usecase.dart';
import 'package:psapp_clone/features/profile_page/domain/entities/profile.dart';
import 'package:psapp_clone/features/profile_page/domain/repositories/profile_repository.dart';

class GetProfileUsecase implements UseCase<DataState<ProfileEntity>, void> {
  final ProfileRepository _profileRepository;
  GetProfileUsecase(this._profileRepository);

  @override
  Future<DataState<ProfileEntity>> call({void params}) {
    return _profileRepository.getProfile();
  }
}