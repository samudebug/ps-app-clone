import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psapp_clone/core/resources/data_state.dart';
import 'package:psapp_clone/features/profile_page/domain/entities/profile.dart';
import 'package:psapp_clone/features/profile_page/domain/usecases/get_profile.dart';

part 'remote_profile_event.dart';
part 'remote_profile_state.dart';

class RemoteProfileBloc extends Bloc<RemoteProfileEvent, RemoteProfileState> {
  final GetProfileUsecase _getProfileUsecase;
  RemoteProfileBloc(this._getProfileUsecase) : super(const RemoteProfileLoading()) {
    on <GetProfile> (onGetProfile);
  }


  void onGetProfile(GetProfile event, Emitter<RemoteProfileState> emit) async {
    final dataState = await _getProfileUsecase();
    if (dataState is DataSuccess && dataState.data != null) {
      emit(RemoteProfileDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      log("An error has ocurred", error: dataState.error);
      emit(RemoteProfileError(dataState.error!));
    }
  }
} 