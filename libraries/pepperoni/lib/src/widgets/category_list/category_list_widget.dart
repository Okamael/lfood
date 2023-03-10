import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class CategoryListWidget extends StatelessWidget {
  final List<CategoryListItem> items;

  const CategoryListWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 5,
            runSpacing: 10,
            children: List.from(
              items.map(
                (item) => _CategoryItemWidget(
                  item: item,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CategoryItemWidget extends StatelessWidget {
  final CategoryListItem item;
  const _CategoryItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4.4,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            item.onTap(item);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 100,
                child: AspectRatio(
                  aspectRatio: 9 / 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: ColoredBox(
                        color: const Color(0xffF5F8F5),
                        child: Image.network(
                          item.imagemUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                item.label,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryListItem {
  final String label;
  final String imagemUrl;

  final void Function(CategoryListItem item) onTap;
  CategoryListItem(
    this.onTap, {
    required this.label,
    required this.imagemUrl,
  });
}
