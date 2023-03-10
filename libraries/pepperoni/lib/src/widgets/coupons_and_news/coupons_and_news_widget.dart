import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CuponsAndNewsWidget extends StatefulWidget {
  final List<String> imageList;
  const CuponsAndNewsWidget({
    super.key,
    required this.imageList,
  });

  @override
  State<CuponsAndNewsWidget> createState() => _CuponsAndNewsWidgetState();
}

class _CuponsAndNewsWidgetState extends State<CuponsAndNewsWidget> {
  late final pagecontroler = PageController(
    viewportFraction: .9,
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            itemCount: widget.imageList.length,
            controller: pagecontroler,
            padEnds: false,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 369 / 162,
                    child: Image.network(
                      widget.imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        AnimatedBuilder(
          animation: pagecontroler,
          builder: (context, child) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.imageList.length, (index) {
                final isSeleted = index == pagecontroler.page?.ceil();
                return Padding(
                  padding: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundColor:
                        isSeleted ? Colors.black87 : Colors.black26,
                    radius: isSeleted ? 3 : 2,
                  ),
                );
              })),
        )
      ],
    );
  }
}
