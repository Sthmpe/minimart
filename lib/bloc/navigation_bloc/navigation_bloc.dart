import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimart/bloc/navigation_bloc/navigation_event.dart';
import 'package:minimart/bloc/navigation_bloc/navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState()) {
    on<NavigationTabChanged>((event, emit) {
      emit(NavigationState(selectedIndex: event.index));
    });
  }
}