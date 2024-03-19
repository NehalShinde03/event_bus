import 'package:event_bus_appevent/demo/demo_event.dart';
import 'package:event_bus_appevent/demo/demo_state.dart';
import 'package:event_bus_appevent/main.dart';
import 'package:event_bus_appevent/utilties/event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DemoCubit extends Cubit<DemoState>{
  DemoCubit(super.initialState);

  change({changeColor}){
    eventBus.on<ColorChangeEvent>().listen((event) {
      changeColor = event.color;
      emit(state.copyWith(color: changeColor));
    });
  }

}