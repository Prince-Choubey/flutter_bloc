import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/bloc/counter/counter_event.dart';
import 'package:flutter_bloc/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc(): super(const CounterState()){
    on<IncrementCounter>(_increment);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit){
    
  }
  
}