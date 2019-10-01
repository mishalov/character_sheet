import 'package:meta/meta.dart';

@immutable
abstract class AppEvent {
  AppEvent([List props = const []]) : super();
}

class ChangeLabel extends AppEvent {
  final String label;
  ChangeLabel({@required this.label}) : super([label]);
}
