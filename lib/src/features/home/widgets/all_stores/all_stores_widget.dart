import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AllStoresWidget extends StatefulWidget {
  const AllStoresWidget({super.key});

  @override
  State<AllStoresWidget> createState() => _AllStoresWidgetState();
}

class _AllStoresWidgetState extends State<AllStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('All Stores'),
      ),
    );
  }
}
