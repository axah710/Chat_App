import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      print("change=$change");
    }
  }
  // This method is triggered whenever there is a change in the state of
  // any BlocBase (which includes both Blocs and Cubits). The change is
  //passed as an argument, and if the application is in debug mode
  //(kDebugMode is true), it prints the change to the console.
  //This is useful for debugging state changes.

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (kDebugMode) {
      print("transition=$transition");
    }
  }
  // Specifically for Bloc instances (not Cubits), this method is called
  //during a state transition, triggered by an event.
  //A Transition object, which includes the current state,
  // the event, and the next state, is provided. If in debug mode,
  //this transition is printed to the console. This helps in understanding
  // the flow of events and state changes within a Bloc.

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    if (kDebugMode) {
      print("close=$bloc");
    }
  }
  // This method is called just before a BlocBase (Bloc or Cubit) is closed.
  // It's a good place to perform cleanup or logging. In debug mode,
  // it prints the instance of the Bloc or Cubit that is being closed.

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    if (kDebugMode) {
      print("create=$bloc");
    }
  }
  // Opposite to onClose, this method is invoked when a
  // BlocBase instance is created. It allows for initial setup or logging.
  // In debug mode, it prints the created instance.
}
