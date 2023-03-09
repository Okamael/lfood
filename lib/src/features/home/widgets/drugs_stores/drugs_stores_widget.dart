import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrugsStoreWidget extends StatefulWidget {
  const DrugsStoreWidget({super.key});

  @override
  State<DrugsStoreWidget> createState() => _DrugsStoreWidgetState();
}

class _DrugsStoreWidgetState extends State<DrugsStoreWidget> {
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
