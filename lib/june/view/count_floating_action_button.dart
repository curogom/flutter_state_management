import 'package:flutter/material.dart';
import 'package:state_management/june/model/count_vm.dart';

class CountFAB extends StatelessWidget {
  const CountFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: incrementCount,
          child: Icon(Icons.add),
        ),
        SizedBox(height: 8),
        FloatingActionButton(
          onPressed: decrementCount,
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
