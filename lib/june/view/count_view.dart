import 'package:flutter/material.dart';
import 'package:june/june.dart';
import 'package:state_management/june/model/count_vm.dart';

class CountView extends StatelessWidget {
  const CountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: JuneBuilder(
        () => CountVM(),
        builder: (vm) {
          final count = vm.count;
          return Text(
            '$count',
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          );
        },
      ),
    );
  }
}
