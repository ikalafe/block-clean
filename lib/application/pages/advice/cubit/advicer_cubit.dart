import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdviceInitial());

  void adviceRequested() async {
    emit(AdviceStateLoading());
    // execute business logic
    // for example get and advice
    debugPrint('Fake get advice triggered');
    await Future.delayed(const Duration(seconds: 3), () {});
    debugPrint('got advice');

    emit(AdviceStateLoaded(advice: 'Fake Advice to test bloc'));
    emit(AdviceStateError(message: 'Error message'));
    // emit(AdviceStateError(message: 'Error message'));
  }
}
