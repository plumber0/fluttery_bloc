part of 'internet_cubit_cubit.dart';

abstract class InternetCubitState extends Equatable {
  const InternetCubitState();

  @override
  List<Object> get props => [];
}

class InternetLoading extends InternetCubitState {}

class InternetConnected extends InternetCubitState {
  final ConnectionType connectionType;

  InternetConnected({@required this.connectionType});
}

class InternetDisconnected extends InternetCubitState {}
