import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_app/bloc/switch/switch_event.dart';
import 'package:flutter_bloc_app/bloc/switch/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchState()) {
    on<EnableOrDisableNotification>(_enableOrDisableNotification);
    on<SliderEvent>(_sliderEvent);
  }

  void _enableOrDisableNotification(
    EnableOrDisableNotification event,
    Emitter<SwitchState> emit,
  ) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _sliderEvent(SliderEvent event, Emitter<SwitchState> emit) {
    emit(state.copyWith(slider: event.slider));
  }
}
