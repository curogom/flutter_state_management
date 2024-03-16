import 'package:flutter/material.dart';
import 'package:state_management/june/view/count_floating_action_button.dart';
import 'package:state_management/june/view/count_view.dart';

class CountPage extends StatelessWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Manager - June'),
      ),
      body: const CountView(),
      floatingActionButton: const CountFAB(),
    );
  }
}
