import 'package:flutter/material.dart';
import 'package:state_management/june/view/count_page.dart';

class CountApp extends StatelessWidget {
  const CountApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'State Manager - June',
      home: CountPage(),
    );
  }
}
