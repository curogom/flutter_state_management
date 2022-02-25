import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/count_app.dart';
import 'package:state_management/bloc/count_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const CountApp()),
    blocObserver: CountObserver(),
  );
}
