part of 'home_bloc.dart';

enum HomeStatus{
  normal,
}

/// {@template login_state}
/// Represents the state of login.
/// {@endtemplate}
class HomeState extends Equatable {
  const HomeState({
    required this.status,
  });

  /// {@macro login_state}
  const HomeState.initial()
      : status = HomeStatus.normal;
      //  username = const Username.pure(),
      //  password = const Password.pure();


  /// The status of the form.
  final HomeStatus status;

  HomeState copyWith({
    HomeStatus? status,
  }) {
    return HomeState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [status];
}
