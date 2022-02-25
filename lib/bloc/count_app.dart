import 'package:flutter/material.dart';
import 'package:state_management/bloc/view/count_page.dart';

class CountApp extends MaterialApp {
  const CountApp({Key? key})
      : super(
          key: key,
          title: 'State Manager - BloC',
          home: const CountPage(),
        );
}
