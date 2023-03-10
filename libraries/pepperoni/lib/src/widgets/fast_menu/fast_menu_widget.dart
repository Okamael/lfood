import 'package:flutter/material.dart';

class FastMenuWidget extends StatelessWidget {
  const FastMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: MediaQuery.of(context).size.width / 4.8,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: [
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 4.8,
                    color: Colors.blue.withOpacity(.5),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 5,
                    right: 5,
                    top: 5,
                    child: Image.network(
                        'https://www.showponies.co.za/wp-content/uploads/2022/12/dropshadow-front-white.png'),
                  ),
                  const Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Text(
                      'Mercado',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
