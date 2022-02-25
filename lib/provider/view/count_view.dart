import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/model/count_model.dart';

class CountView extends StatelessWidget {
  const CountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final countModel = Provider.of<CountModel>(context);
    return Center(
      child: Text('${countModel.counter}', style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
    );
  }
}
