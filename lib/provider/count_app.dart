import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/model/count_model.dart';
import 'package:state_management/provider/view/count_page.dart';

class CountApp extends StatelessWidget {
  const CountApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Manager - Provider',
      home: ChangeNotifierProvider<CountModel>(
        create: (_) => CountModel(),
        child: const CountPage(),
      )
    );
  }
}
