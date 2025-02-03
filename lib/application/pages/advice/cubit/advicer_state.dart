part of 'advicer_cubit.dart';

sealed class AdvicerCubitState extends Equatable {
  const AdvicerCubitState();

  @override
  List<Object?> get props => [];
}

final class AdviceInitial extends AdvicerCubitState {}

final class AdviceStateLoading extends AdvicerCubitState {}

final class AdviceStateLoaded extends AdvicerCubitState {
  final String advice;

  AdviceStateLoaded({required this.advice});

  @override
  List<Object?> get props => [advice];
}

final class AdviceStateError extends AdvicerCubitState {
  final String message;

  AdviceStateError({required this.message});
  @override
  List<Object?> get props => [message];
}
