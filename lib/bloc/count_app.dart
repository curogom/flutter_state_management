import 'package:flutter/material.dart';
import 'package:state_management/bloc/view/count_page.dart';

class CountApp extends StatelessWidget {
  const CountApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: key,
      title: 'State Manager - BloC',
      home: const CountPage(),
    );
  }
}
