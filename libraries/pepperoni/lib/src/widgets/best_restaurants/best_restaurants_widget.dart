import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BestRestaurantsWidget extends StatelessWidget {
  final List<BestRestaurantItem> restaurants;
  const BestRestaurantsWidget({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Famosos no LFood',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              TextButton(onPressed: () {}, child: const Text('Ver Mais'))
            ],
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 8),
            itemCount: restaurants.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: MediaQuery.of(context).size.width / 5,
              child: Column(children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 15,
                  backgroundImage: NetworkImage(restaurants[index].urlImage),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  restaurants[index].name,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}

class BestRestaurantItem {
  final String urlImage;
  final int id;
  final String name;
  BestRestaurantItem(
    this.urlImage,
    this.id,
    this.name,
  );
}
