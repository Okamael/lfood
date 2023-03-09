import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MarketsWidget extends StatefulWidget {
  const MarketsWidget({super.key});

  @override
  State<MarketsWidget> createState() => _MarketsWidgetState();
}

class _MarketsWidgetState extends State<MarketsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Mercado'),
      ),
    );
  }
}
