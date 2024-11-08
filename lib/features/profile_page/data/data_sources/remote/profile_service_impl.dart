import 'package:dio/dio.dart';
import 'package:psapp_clone/features/profile_page/data/data_sources/remote/profile_service.dart';
import 'package:psapp_clone/features/profile_page/data/models/profile.dart';
import 'package:psapp_clone/injection_container.dart';

class ProfileServiceImpl implements ProfileService {
  @override
  Future<ProfileModel> getProfile() async {
    final Dio dio = sl<Dio>();
    final response = await dio.get<Map<String, dynamic>>('/profile',
        options: Options(headers: {
          'Authorization':
              'lKNtGMOZEobUr938n5JjJLsYiHDitCInwvkhgrq5XdwBFD6nOLP2RGgErp9Qu62l'
        }));
    if (response.statusCode != 200) {
      throw Exception("Something went wrong");
    }
    return ProfileModel.fromJson(response.data!);
  }
}
