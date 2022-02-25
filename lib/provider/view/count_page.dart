import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/model/count_model.dart';
import 'package:state_management/provider/view/count_view.dart';

class CountPage extends StatelessWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countModel = Provider.of<CountModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Manager - Provider'),
      ),
      body: const CountView(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => countModel.incrementCounter(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => countModel.decrementCount(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
