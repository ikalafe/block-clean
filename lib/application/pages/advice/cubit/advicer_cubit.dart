import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerState> {
  AdvicerCubit() : super(AdvicerInitial());
}
