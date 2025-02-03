import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advice_event.dart';

part 'advice_state.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  AdviceBloc() : super(AdviceInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdviceStateLoading());
      // execute business logic
      // for example get and advice
      debugPrint('Fake get advice triggered');
      await Future.delayed(const Duration(seconds: 3), () {});
      debugPrint('got advice');

      emit(AdviceStateLoaded(advice: 'Fake Advice to test bloc'));
      emit(AdviceStateError(message: 'Error message'));
      // emit(AdviceStateError(message: 'Error message'));
    });
  }
}
