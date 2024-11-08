import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:psapp_clone/features/profile_page/presentation/bloc/profile/remote/remote_profile_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody());
  }

  dynamic _buildBody() {
    return BlocBuilder<RemoteProfileBloc, RemoteProfileState>(
        builder: (_, state) {
      if (state is RemoteProfileLoading) {
        return const Center(child: CircularProgressIndicator());
      }
      if (state is RemoteProfileError) {
        return const Center(
            child: Column(
          children: [Icon(Icons.error_outline), Text("An error has ocurred")],
        ));
      }
      if (state is RemoteProfileDone) {
        return const Center(child: Text("Success"));
      }
      return const SizedBox();
    });
  }
}
