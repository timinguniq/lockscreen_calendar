import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()); //{
    //on<LoginUsernameChanged>(_onUsernameChanged);
    //on<LoginPasswordChanged>(_onPasswordChanged);
    //on<LoginSubmitted>(_onSubmitted);
  //}

  //final LoginRepository _loginRepository;
  //final AuthenticationRepository _authenticationRepository;

  /*
  void _onUsernameChanged(
      LoginUsernameChanged event,
      Emitter<LoginState> emit,
      ) {
    final username = Username.dirty(event.username);
    emit(
      state.copyWith(
        username: username,
        status: Formz.validate([state.password, username]),
      ),
    );
  }
*/
}
