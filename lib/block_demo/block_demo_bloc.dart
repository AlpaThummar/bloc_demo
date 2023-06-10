import 'package:bloc/bloc.dart';

import 'block_demo_event.dart';
import 'block_demo_state.dart';

class Block_demoBloc extends Bloc<Block_demoEvent, Block_demoState> {
  int sum=0,sub=0;
  Block_demoBloc() : super(sum_state(0)) {
    on<InitEvent>((event, emit){
      emit(insitial((0)));
    });
    on((event, emit) => (event, emit) {
      sum=int.parse(event.s1)+int.parse(event.s2);
      emit(sum_state(sum));
    });
    on((event, emit) => (event, emit) {
      sub=int.parse(event.s1) + int.parse(event.s2);
      emit(sub_state(sub));
    });
  }

  void _init(InitEvent event, Emitter<Block_demoState> emit) async {
    emit(state.clone());
  }
}
