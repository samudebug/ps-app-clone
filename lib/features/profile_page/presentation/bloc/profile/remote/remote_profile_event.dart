part of 'remote_profile_bloc.dart';

abstract class RemoteProfileEvent {
  const RemoteProfileEvent();
}

class GetProfile extends RemoteProfileEvent {
  const GetProfile();
}
