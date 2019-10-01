import 'package:meta/meta.dart';

@immutable
abstract class AppState {
  final String label;
  AppState(this.label, [List props = const []]) : super();
}

class InitialAppState extends AppState {
  InitialAppState(String label) : super(label);
}
