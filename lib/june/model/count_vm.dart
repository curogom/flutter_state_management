import 'package:june/june.dart';

class CountVM extends JuneState {
  int count = 0;
}

void incrementCount() {
  final state = June.getState(CountVM());
  state.count++;
  state.setState();
}

void decrementCount() {
  final state = June.getState(CountVM());
  state.count--;
  state.setState();
}