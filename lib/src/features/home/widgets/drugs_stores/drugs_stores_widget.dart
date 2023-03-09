import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrugstoreWidget extends StatefulWidget {
  const DrugstoreWidget({super.key});

  @override
  State<DrugstoreWidget> createState() => _DrugstoreWidgetState();
}

class _DrugstoreWidgetState extends State<DrugstoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Farmacia'),
      ),
    );
  }
}
