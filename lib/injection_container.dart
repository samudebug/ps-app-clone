import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:psapp_clone/core/constants/constants.dart';
import 'package:psapp_clone/features/profile_page/data/data_sources/remote/profile_service.dart';
import 'package:psapp_clone/features/profile_page/data/data_sources/remote/profile_service_impl.dart';
import 'package:psapp_clone/features/profile_page/data/repositories/profile_repository.dart';
import 'package:psapp_clone/features/profile_page/domain/repositories/profile_repository.dart';
import 'package:psapp_clone/features/profile_page/domain/usecases/get_profile.dart';
import 'package:psapp_clone/features/profile_page/presentation/bloc/profile/remote/remote_profile_bloc.dart';
final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio

  sl.registerSingleton<Dio>(Dio(BaseOptions(baseUrl: apiBaseUrl)));
  
  sl.registerSingleton<ProfileService>(ProfileServiceImpl());

  sl.registerSingleton<ProfileRepository>(ProfileRepositoryImpl(sl()));
  
  sl.registerSingleton<GetProfileUsecase>(GetProfileUsecase(sl()));


  sl.registerFactory<RemoteProfileBloc>(() => RemoteProfileBloc(sl()));
}