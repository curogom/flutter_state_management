import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/cubit/count_cubit.dart';
import 'package:state_management/bloc/view/count_view.dart';

class CountPage extends StatelessWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CountCubit(),
      child: const CountView(),
    );
  }
}
