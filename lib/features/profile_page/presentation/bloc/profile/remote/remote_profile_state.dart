part of 'remote_profile_bloc.dart';


abstract class RemoteProfileState extends Equatable {
  final ProfileEntity? profile;
  final Exception? exception;
  const RemoteProfileState({this.profile, this.exception});
  
  @override
  List<Object> get props => [profile!, exception!];
}

class RemoteProfileLoading extends RemoteProfileState {
  const RemoteProfileLoading();
}

class RemoteProfileDone extends RemoteProfileState {
  const RemoteProfileDone(ProfileEntity profile) : super(profile: profile);
}

class RemoteProfileError extends RemoteProfileState {
  const RemoteProfileError(Exception e) : super(exception: e);
}