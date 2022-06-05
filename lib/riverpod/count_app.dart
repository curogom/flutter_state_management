import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_management/riverpod/provider/count_provider.dart';

class CountApp extends StatelessWidget {
  const CountApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: CountPage(),
      ),
    );
  }
}

class CountPage extends ConsumerWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riverpod Counter Example')),
      body: Center(
        child: Consumer(
          builder: (context, ref, _) {
            final count = ref.watch(countProvider);
            return Text('$count');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => ref.read(countProvider.state).state++,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () => ref.read(countProvider.state).state--,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
