part of 'internet_cubit_cubit.dart';

@immutable
abstract class InternetCubitState {}

class InternetLoading extends InternetCubitState {}

class InternetConnected extends InternetCubitState {
  final ConnectionType connectionType;

  InternetConnected({@required this.connectionType});
}

class InternetDisconnected extends InternetCubitState {}
