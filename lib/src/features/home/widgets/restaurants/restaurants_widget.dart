import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RestaurantsWidget extends StatefulWidget {
  const RestaurantsWidget({super.key});

  @override
  State<RestaurantsWidget> createState() => _RestaurantsWidgetState();
}

class _RestaurantsWidgetState extends State<RestaurantsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Restaurant'),
      ),
    );
  }
}
