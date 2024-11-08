import 'package:equatable/equatable.dart';
class AvatarInfo extends Equatable {
  final String? size;
  final String? avatarUrl;

  const AvatarInfo({this.size, this.avatarUrl});

  @override
  List<Object?> get props => [size, avatarUrl];
}

class ProfileEntity extends Equatable {
  final String? id;
  final String? username;
  final String? npId;
  final List<AvatarInfo>? avatarUrls;
  final String? aboutMe;


  const ProfileEntity({
    this.id,
    this.username,
    this.npId,
    this.avatarUrls,
    this.aboutMe,
  });

  @override
  List<Object?> get props => [id, username, npId, avatarUrls, aboutMe];
}