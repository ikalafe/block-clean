import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'advice_event.dart';
part 'advice_state.dart';

class AdviceBloc extends Bloc<AdviceEvent, AdviceState> {
  AdviceBloc() : super(AdviceInitial()) {
    on<AdviceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
