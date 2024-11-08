import 'package:psapp_clone/features/profile_page/domain/entities/profile.dart';

class AvatarModel extends AvatarInfo {
  const AvatarModel({
    String? size,
    String? avatarUrl,
  });

  factory AvatarModel.fromJson(Map<String, dynamic> json) {
    return AvatarModel(
      size: json['size'],
      avatarUrl: json['avatar_url'],
    );
  }
}


class ProfileModel extends ProfileEntity {
  const ProfileModel({
    String? id,
    String? username,
    String? npId,
    List<AvatarModel>? avatarUrls,
    String? aboutMe,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      id: json['id'] ?? "",
      username: json['username'] ?? "",
      npId: json['np_id'] ?? "",
      avatarUrls: json['avatar_urls'].map((e) => AvatarModel.fromJson(e)).toList() ?? [],
      aboutMe: json['about_me'] ?? "",
    );
  }
}

